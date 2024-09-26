


const axios = require('axios');
const cheerio = require('cheerio');
const createCsvWriter = require('csv-writer').createObjectCsvWriter;

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
];

const csvWriter = createCsvWriter({
  path: 'products.csv',
  header: [
    { id: 'name', title: 'Name' },
    { id: 'price', title: 'Price' },
    { id: 'link', title: 'Link' },
    { id: 'variantGroup', title: 'Variant Group' }, // Add Variant Group, e.g., Size
    { id: 'variantOption', title: 'Variant Option' }, // Add Variant Option, e.g., 6, 7, 8
    { id: 'variantPrice', title: 'Variant Price' },
    { id: 'sku', title: 'SKU' }, // SKU column
    { id: 'stock', title: 'Stock Status' } // Stock status column
  ]
});

async function fetchProductUrlsFromCategory(url) {
  console.log(`\n--- Fetching product URLs from category: ${url}`);
  let productUrls = [];
  let currentPage = 1;

  while (true) {
    try {
      console.log(`Fetching page ${currentPage} of category ${url}`);
      const { data } = await axios.get(`${url}?page=${currentPage}`);
      const $ = cheerio.load(data);
      
      // Extract product URLs
      $('.product-wrap a').each((index, element) => {
        const productUrl = $(element).attr('href');
        if (productUrl) {
          const fullUrl = new URL(productUrl, url).href;
          productUrls.push(fullUrl);
          console.log(`Found product URL: ${fullUrl}`);
        }
      });

      // Check if there is a next page link
      const nextPage = $('.pagination-next a').attr('href'); // Update selector if needed
      if (nextPage) {
        currentPage++;
        console.log(`Next page found: Page ${currentPage}`);
      } else {
        console.log(`No more pages found. Finished scraping category: ${url}`);
        break; // Exit the loop if no more pages are found
      }
    } catch (error) {
      console.error(`Error fetching product URLs from ${url} page ${currentPage}:`, error);
      break; // Exit the loop if an error occurs
    }
  }

  console.log(`Total product URLs fetched from ${url}: ${productUrls.length}`);
  return productUrls;
}

async function fetchProductDetails(url) {
  console.log(`\n--- Fetching product details from: ${url}`);
  try {
    const { data } = await axios.get(url);
    const $ = cheerio.load(data);

    // Extract master product details
    // Extract master product details
    const name = $('.product-name').text().trim(); // Update selector as needed
    const price = $('.new-price').text().trim(); // Update selector as needed

    console.log(`Master product - Name: ${name}, Price: ${price}`);

    // Extract SKU and stock status
    const sku = $('.stock-and-sku .title:contains("SKU")').next().text().trim(); // Update selector as needed
    const stock = $('.stock-and-sku .text-success').text().trim(); // Update selector as needed
    console.log(`SKU: ${sku}, Stock Status: ${stock}`);

    // Extract variant details based on the variable group (like Size)
    const variants = [];
    $('.variable-group').each((index, element) => {
      const variantGroup = $(element).find('p').text().trim(); // E.g., "Size"
      console.log(`Variant group: ${variantGroup}`);
      
      // Extract all variant options under each group
      $(element).find('.variable-info div').each((i, optionElement) => {
        const variantOption = $(optionElement).find('span').text().trim(); // E.g., "6", "7", "8"
        const variantPrice = price; // Assuming price stays the same for each variant; otherwise, adjust if variant-specific pricing exists
        console.log(`Variant option: ${variantOption}, Price: ${variantPrice}`);

        variants.push({
          name: name,
          price: price,
          link: url,
          variantGroup: variantGroup, // E.g., "Size"
          variantOption: variantOption, // E.g., "6", "7", "8"
          variantPrice: variantPrice,
          sku: sku, // Adding SKU here
          stock: stock // Adding Stock Status here
        });
      });
    });

    console.log(`Total variants fetched from ${url}: ${variants.length}`);
    return variants;
  } catch (error) {
    console.error(`Error fetching product details from ${url}:`, error);
    return [];
  }
}

async function scrapeAllCategories() {
  console.log("\n=== Starting scraping process for all categories ===");
  const allProducts = [];

  for (const categoryUrl of categoryUrls) {
    console.log(`\nScraping category: ${categoryUrl}`);
    const productUrls = await fetchProductUrlsFromCategory(categoryUrl);

    console.log(`Found ${productUrls.length} product URLs in category: ${categoryUrl}`);

    for (const productUrl of productUrls) {
      const products = await fetchProductDetails(productUrl);
      allProducts.push(...products);
    }
  }

  try {
    console.log("\n=== Writing results to CSV ===");
    await csvWriter.writeRecords(allProducts);
    console.log('CSV file has been written successfully.');
  } catch (error) {
    console.error('Error writing CSV file:', error);
  }
}

scrapeAllCategories();
