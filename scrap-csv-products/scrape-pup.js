const puppeteer = require('puppeteer');
const fs = require('fs');
const createCsvWriter = require('csv-writer').createObjectCsvWriter;
const mysql = require('mysql2');

// Array of category URLs to scrape
const categoryUrls = [
  'https://www.vivacustom.shop/categories/100019',  
  'https://www.vivacustom.shop/categories/100020',  
  'https://www.vivacustom.shop/categories/100021',  
  'https://www.vivacustom.shop/categories/100022',  
  'https://www.vivacustom.shop/categories/100023',  
  'https://www.vivacustom.shop/categories/100024',  
  'https://www.vivacustom.shop/categories/100025',  
  'https://www.vivacustom.shop/categories/100026',  
  'https://www.vivacustom.shop/categories/100028',  
  'https://www.vivacustom.shop/categories/100029',   
  // Add more URLs as needed
];

// Paths for files
const sqlFilePath = 'import_data.sql';
const masterCsvFilePath = 'master-products.csv';
const variantCsvFilePath = 'variant-products.csv';

// Initialize CSV writers
const csvWriterMaster = createCsvWriter({
  path: masterCsvFilePath,
  header: [
    { id: 'category', title: 'Category' },
    { id: 'name', title: 'Name' },
    { id: 'price', title: 'Price' },
    { id: 'link', title: 'Link' },
    { id: 'productType', title: 'Product Type' },  // "Master" or "Variant"
    { id: 'sku', title: 'SKU' },
    { id: 'stock', title: 'Stock Status' }
  ]
});

const csvWriterVariants = createCsvWriter({
  path: variantCsvFilePath,
  header: [
    { id: 'category', title: 'Category' },
    { id: 'name', title: 'Name' },
    { id: 'price', title: 'Price' },
    { id: 'link', title: 'Link' },
    { id: 'variantGroup', title: 'Variant Attribute' },
    { id: 'variantOption', title: 'Variant Option' },
    { id: 'variantPrice', title: 'Variant Price' },
    { id: 'productType', title: 'Product Type' },  // "Master" or "Variant"
    { id: 'sku', title: 'SKU' },
    { id: 'stock', title: 'Stock Status' }
  ]
});

// Helper function to write SQL INSERT statement to file
function writeToSQLFile(data) {
  fs.appendFileSync(sqlFilePath, data + '\n');
}

// Function to create initial SQL file with the table structure
function initializeSQLFile() {
  const initialSQL = `
    -- SQL Dump for scraped data
    -- Dumping data into 'products' and 'product_variations' tables

    -- Table structure for products
    CREATE TABLE IF NOT EXISTS products (
      id INT NOT NULL AUTO_INCREMENT,
      name VARCHAR(255) NOT NULL,
      slug VARCHAR(255) NOT NULL,
      description TEXT NOT NULL,
      price DECIMAL(10,2) NOT NULL,
      category_id INT NOT NULL,
      stock INT DEFAULT 0,
      sku VARCHAR(255) NOT NULL,
      is_master TINYINT(1) DEFAULT 0,
      master_product_id INT DEFAULT NULL,
      PRIMARY KEY (id)
    );

    -- Table structure for product_variations
    CREATE TABLE IF NOT EXISTS product_variations (
      id INT NOT NULL AUTO_INCREMENT,
      product_id INT NOT NULL,
      variation_name VARCHAR(255) NOT NULL,
      variation_value VARCHAR(255) NOT NULL,
      PRIMARY KEY (id),
      FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
    );
  `;
  fs.writeFileSync(sqlFilePath, initialSQL);
}

async function fetchProductUrlsFromCategory(page, url) {
  console.log(`\n--- Fetching product URLs from category: ${url}`);
  let productUrls = [];
  let currentPageUrl = url;
  let hasNextPage = true;

  while (hasNextPage) {
    try {
      await page.goto(currentPageUrl, { waitUntil: 'networkidle2' });

      // Extract product URLs on the current page
      const urlsOnPage = await page.$$eval('.product-wrap a', elements =>
        elements.map(el => el.href)
      );
      productUrls.push(...urlsOnPage);

      console.log(`Found ${urlsOnPage.length} products on page ${currentPageUrl}`);

      // Check if there's a "Next" page
      const nextPageElement = await page.$('.pagination .page-item a[rel="next"]');
      if (nextPageElement) {
        currentPageUrl = await page.$eval('.pagination .page-item a[rel="next"]', el => el.href);
      } else {
        hasNextPage = false; // No next page, stop looping
      }
    } catch (error) {
      console.error(`Error fetching product URLs from ${currentPageUrl}:`, error);
      hasNextPage = false;
    }
  }

  return productUrls;
}

async function fetchProductDetails(page, url, categoryId) {
  console.log(`\n--- Fetching product details from: ${url}`);
  try {
    await page.goto(url, { waitUntil: 'networkidle2' });

    // Extract master product details
    const name = await page.$eval('.product-name', el => el.textContent.trim());
    const price = await page.$eval('.new-price', el => el.textContent.trim().replace(/[^\d.]/g, ''));
    const { sku } = await page.evaluate(() => {

      // Select the `.stock-and-sku` element
      const stockAndSkuElement = document.querySelector('.stock-and-sku');

      // Get all div elements within the selected element
      const divs = stockAndSkuElement.querySelectorAll('div');

      // Select the second div (index 1)
      const secondDiv = divs[1];

      // Extract the SKU value from the second div
      const skuText = secondDiv.textContent.trim();
      const sku = stockAndSkuElement ? skuText : 'SKU not found';

      return { sku };
    });

    // Placeholder for stock info and description
    const stock = 1; // Assuming it's in stock, change as needed
    const description = 'Product description here'; // Replace with actual description

    // Assuming the slug is the product name, formatted to lowercase and hyphenated
    const slug = name.toLowerCase().replace(/\s+/g, '-');

    // Insert master product SQL
    const productSQL = `INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES (${mysql.escape(name)}, ${mysql.escape(slug)}, ${mysql.escape(description)}, ${price}, ${categoryId}, ${stock}, ${mysql.escape(sku)}, 1, NULL);`;
    writeToSQLFile(productSQL);

    // Placeholder for product ID (auto-increment) – will need to adjust this later based on your actual SQL import
    const productId = `(LAST_INSERT_ID())`;

    // Extract and insert product variants if available
    const variants = await page.$$eval('.variable-group', groups => {
      return groups.map(group => {
        const variantName = group.querySelector('p').textContent.trim();
        const variantOptions = [...group.querySelectorAll('.variable-info div span')].map(span => span.textContent.trim());
        return { variantName, variantOptions };
      });
    });

    const variantRecords = variants.flatMap(variant => {
      return variant.variantOptions.map(option => ({
        name: name,
        slug: slug,
        description: description,
        price: price,
        category_id: categoryId,
        stock: stock,
        sku: sku,
        is_master: 0,  // Indicates this is a variant
        master_product_id: productId,  // Link to the master product
        variation_name: variant.variantName,
        variation_value: option
      }));
    });

    // Write variant records to SQL file
    for (const record of variantRecords) {
      const variantSQL = `INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES (${mysql.escape(record.name)}, ${mysql.escape(record.slug)}, ${mysql.escape(record.description)}, ${record.price}, ${record.category_id}, ${record.stock}, ${mysql.escape(record.sku)}, ${record.is_master}, ${record.master_product_id}, ${mysql.escape(record.variation_name)}, ${mysql.escape(record.variation_value)});`;
      writeToSQLFile(variantSQL);
    }

    console.log('Product details have been written to SQL file.');
  } catch (error) {
    console.error(`Error fetching product details from ${url}:`, error);
  }
}

async function scrapeAllCategories(categoryUrls) {
  const browser = await puppeteer.launch({ headless: true });
  const page = await browser.newPage();

  initializeSQLFile(); // Initialize the SQL file before starting scraping

  for (let categoryId = 1; categoryId <= categoryUrls.length; categoryId++) {
    const categoryUrl = categoryUrls[categoryId - 1]; // Assuming category ID starts from 1

    const productUrls = await fetchProductUrlsFromCategory(page, categoryUrl);
    for (const productUrl of productUrls) {
      await fetchProductDetails(page, productUrl, categoryId);
    }
  }

  await browser.close();
}

const startTime = new Date();

scrapeAllCategories(categoryUrls).then(() => {
  const endTime = new Date();
  const duration = endTime - startTime;
  console.log('Scraping completed successfully. SQL and CSV files generated.');
  console.log(`\nScript execution time: ${Math.round(duration / 1000)} seconds`);
}).catch(error => {
  console.error('An error occurred:', error);
});