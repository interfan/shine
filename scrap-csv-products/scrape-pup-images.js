const puppeteer = require('puppeteer');
const fs = require('fs');
const mysql = require('mysql2');
const path = require('path');
const axios = require('axios'); // For downloading images

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
const sqlFilePath = 'import_images.sql';

// Helper function to write SQL INSERT statement to file
function writeToSQLFile(data) {
  fs.appendFileSync(sqlFilePath, data + '\n');
}

// Helper function to download images
async function downloadImage(imageUrl, savePath) {
  const writer = fs.createWriteStream(savePath);
  const response = await axios({
    url: imageUrl,
    method: 'GET',
    responseType: 'stream'
  });
  response.data.pipe(writer);

  return new Promise((resolve, reject) => {
    writer.on('finish', resolve);
    writer.on('error', reject);
  });
}

// Function to SEO-optimize the image filename
function createSeoFriendlyName(productName, imageIndex) {
  const seoName = productName.trim().toLowerCase().replace(/\s+/g, '-').replace(/[^a-zA-Z0-9-]/g, '');
  return `${seoName}-${imageIndex}.jpg`;
}

// Function to download all product images and update the SQL
async function fetchAndSaveProductImages(page, productName, productId) {
  console.log(`\n--- Fetching images for product: ${productName}`);

  const productDir = path.join(__dirname, `images/products/${productName}`);
  if (!fs.existsSync(productDir)) {
    fs.mkdirSync(productDir, { recursive: true });
  }

  // Extract all image URLs
  const imageUrls = await page.$$eval('.swiper-slide a img', images =>
    images.map(img => img.getAttribute('src'))
  );

  if (imageUrls.length === 0) {
    console.log('No images found for this product.');
    return;
  }

  // Download each image and save to the folder
  for (let i = 0; i < imageUrls.length; i++) {
    const imageUrl = imageUrls[i];
    const seoFriendlyImageName = createSeoFriendlyName(productName, i + 1); // Generate SEO-friendly name
    const savePath = path.join(productDir, seoFriendlyImageName);

    try {
      await downloadImage(imageUrl, savePath);
      console.log(`Downloaded image ${seoFriendlyImageName}`);

      // Insert image record into the product_images table
      const isDefault = i === 0 ? 1 : 0; // Mark the first image as default
      const insertSQL = `INSERT INTO product_images (product_id, image, is_default) VALUES (${productId}, ${mysql.escape(seoFriendlyImageName)}, ${isDefault});`;
      writeToSQLFile(insertSQL);
    } catch (error) {
      console.error(`Error downloading image ${imageUrl}:`, error);
    }
  }
}

// Function to fetch product details, including images (without inserting products)
async function fetchProductDetails(page, url, productId) {
  console.log(`\n--- Fetching product details from: ${url}`);
  try {
    await page.goto(url, { waitUntil: 'networkidle2' });

    // Extract product name (this is just for SEO-friendly file names)
    const name = await page.$eval('.product-name', el => el.textContent.trim());

    // Download product images
    await fetchAndSaveProductImages(page, name, productId);

    console.log('Product images have been downloaded and SQL file updated.');
  } catch (error) {
    console.error(`Error fetching product details from ${url}:`, error);
  }
}

// Function to fetch product URLs from a category
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

// Function to scrape all categories and their products
async function scrapeAllCategories(categoryUrls) {
  const browser = await puppeteer.launch({ headless: true });
  const page = await browser.newPage();

  // Initialize the SQL file before starting scraping
  fs.writeFileSync(sqlFilePath, `
    -- SQL Dump for scraped images
    -- Inserting data into 'product_images' table
    CREATE TABLE IF NOT EXISTS product_images (
      id INT NOT NULL AUTO_INCREMENT,
      product_id INT NOT NULL,
      image VARCHAR(255) NOT NULL,
      is_default TINYINT(1) DEFAULT 0,
      PRIMARY KEY (id),
      FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
    );
  `);

  for (let categoryId = 1; categoryId <= categoryUrls.length; categoryId++) {
    const categoryUrl = categoryUrls[categoryId - 1]; // Assuming category ID starts from 1

    const productUrls = await fetchProductUrlsFromCategory(page, categoryUrl);
    for (const productUrl of productUrls) {
      // Here, you need to get the product ID from your database or another source.
      // Assuming you have a function `getProductIdFromUrl(url)` that retrieves the product_id from the URL:
      const productId = await getProductIdFromUrl(productUrl); // Replace this with actual logic

      await fetchProductDetails(page, productUrl, productId);
    }
  }

  await browser.close();
}

// Placeholder function to simulate getting product_id from a URL
async function getProductIdFromUrl(url) {
  // Replace this with actual logic to retrieve product_id from the database
  return 1598; // Example product_id, replace with real product_id logic
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
