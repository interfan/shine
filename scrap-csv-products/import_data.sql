
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
  INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('193 Versatile, compact, and shining star Earrings 925 Silver', '193-versatile,-compact,-and-shining-star-earrings-925-silver', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('193 Versatile, compact, and shining star Earrings 925 Silver', '193-versatile,-compact,-and-shining-star-earrings-925-silver', 'Product description here', 29.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('142 Elegant temperament leaf shaped zircon earrings', '142-elegant-temperament-leaf-shaped-zircon-earrings', 'Product description here', 15.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('190 Retro Palace Shining Earrings', '190-retro-palace-shining-earrings', 'Product description here', 15.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('190 Retro Palace Shining Earrings', '190-retro-palace-shining-earrings', 'Product description here', 15.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('131 Snake Queen alloy earrings', '131-snake-queen-alloy-earrings', 'Product description here', 42.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('132 Wild Sparkles alloy earrings', '132-wild-sparkles-alloy-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('167 Full set crescent fashion earrings', '167-full-set-crescent-fashion-earrings', 'Product description here', 32.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('279 Tassel black classy', '279-tassel-black-classy', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('279 Tassel black classy', '279-tassel-black-classy', 'Product description here', 23.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('279 Tassel black classy', '279-tassel-black-classy', 'Product description here', 23.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('289 Ma Family Personalized Leopard Earrings', '289-ma-family-personalized-leopard-earrings', 'Product description here', 46.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('299 Ginkgo Leaf Fashion Earrings', '299-ginkgo-leaf-fashion-earrings', 'Product description here', 32.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('168 The Blossom alloy earrings', '168-the-blossom-alloy-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('51 Mermaid Ocrean Blue I Aqua Earrings', '51-mermaid-ocrean-blue-i-aqua-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('61 Egyption Queen DIVA Stylish Earrings', '61-egyption-queen-diva-stylish-earrings', 'Product description here', 59.88, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('69 Golden Timeless Flower Vintage Earrings', '69-golden-timeless-flower-vintage-earrings', 'Product description here', 25.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('330 Palace inlaid carved earrings', '330-palace-inlaid-carved-earrings', 'Product description here', 46.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('94 burning of fallen leaves fashion style earrings', '94-burning-of-fallen-leaves-fashion-style-earrings', 'Product description here', 24.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('96 blue\'s pring vintage earrings h', '96-blue\'s-pring-vintage-earrings-h', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('108 autumn fancy designable style earrings', '108-autumn-fancy-designable-style-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('188 Seashell Princess alloy earrings', '188-seashell-princess-alloy-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('114 Angel`s wings fashionable earrings', '114-angel`s-wings-fashionable-earrings', 'Product description here', 13.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('115 Starry night zircon earrings', '115-starry-night-zircon-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('113 The four-leaf clover earrings', '113-the-four-leaf-clover-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('123 Exquisite, Transparent Jelly zircon Earrings', '123-exquisite,-transparent-jelly-zircon-earrings', 'Product description here', 39.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('106 golden waterfall fashion earrings', '106-golden-waterfall-fashion-earrings', 'Product description here', 48.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('124 alloy Marge Palace Noble Earrings', '124-alloy-marge-palace-noble-earrings', 'Product description here', 34.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('150 Flower Eyes Tassel alloy Earrings', '150-flower-eyes-tassel-alloy-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('150 Flower Eyes Tassel alloy Earrings', '150-flower-eyes-tassel-alloy-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('155 Unique Fairytale Feather Fashion Earrings', '155-unique-fairytale-feather-fashion-earrings', 'Product description here', 22.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('191 Embedding elegant leaf Earrings', '191-embedding-elegant-leaf-earrings', 'Product description here', 109.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('191 Embedding elegant leaf Earrings', '191-embedding-elegant-leaf-earrings', 'Product description here', 109.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('169 3D irregular pink alloy earrings', '169-3d-irregular-pink-alloy-earrings', 'Product description here', 39.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('179 White clouds lingering earrings', '179-white-clouds-lingering-earrings', 'Product description here', 59.90, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('179 White clouds lingering earrings', '179-white-clouds-lingering-earrings', 'Product description here', 59.90, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('184 Romantic love heart-shaped alloy earrings', '184-romantic-love-heart-shaped-alloy-earrings', 'Product description here', 34.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('184 Romantic love heart-shaped alloy earrings', '184-romantic-love-heart-shaped-alloy-earrings', 'Product description here', 34.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('194 Long full leaf embellished Earrings', '194-long-full-leaf-embellished-earrings', 'Product description here', 179.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('194 Long full leaf embellished Earrings', '194-long-full-leaf-embellished-earrings', 'Product description here', 179.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('198 Long Jinbi Wenteng Earrings', '198-long-jinbi-wenteng-earrings', 'Product description here', 33.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('199 Personalized circular alloy Earrings', '199-personalized-circular-alloy-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('156 Golden Hour alloy earrings', '156-golden-hour-alloy-earrings', 'Product description here', 45.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('210 Vintage Fan-shaped Earrings', '210-vintage-fan-shaped-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('182 Sky Blue Pharaoh\'s Holy Grail alloy Earrings', '182-sky-blue-pharaoh\'s-holy-grail-alloy-earrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('182 Sky Blue Pharaoh\'s Holy Grail alloy Earrings', '182-sky-blue-pharaoh\'s-holy-grail-alloy-earrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('218 Ma Family Mermaid Heart Earrings', '218-ma-family-mermaid-heart-earrings', 'Product description here', 34.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('235 Make old mermaid tear Earrings', '235-make-old-mermaid-tear-earrings', 'Product description here', 38.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('258 Bauhinia five-petal flower earrings', '258-bauhinia-five-petal-flower-earrings', 'Product description here', 26.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('149 Colorful Peacock alloy Earrings', '149-colorful-peacock-alloy-earrings', 'Product description here', 45.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('149 Colorful Peacock alloy Earrings', '149-colorful-peacock-alloy-earrings', 'Product description here', 45.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('116 Cloud the shine zircon earrings', '116-cloud-the-shine-zircon-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('256 European Simplicity Fashionable Earrings', '256-european-simplicity-fashionable-earrings', 'Product description here', 20.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('768 Alloy Personalized Cool Love Earrings', '768-alloy-personalized-cool-love-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('257 Classic Black Fashionable Earrings', '257-classic-black-fashionable-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('769 Alloy English style carved magic shield earrings', '769-alloy-english-style-carved-magic-shield-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('770 Alloy Versatile and exquisite rain beating banana Earrings', '770-alloy-versatile-and-exquisite-rain-beating-banana-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('259 S02 Sexy Beast Earrings', '259-s02-sexy-beast-earrings', 'Product description here', 24.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('260 Flare geometry Fashionable Earrings', '260-flare-geometry-fashionable-earrings', 'Product description here', 35.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('772 Alloy Brilliant leaf goldenen and silver shadow Earrings', '772-alloy-brilliant-leaf-goldenen-and-silver-shadow-earrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('261 Euclidean spiral Fashionable Earrings', '261-euclidean-spiral-fashionable-earrings', 'Product description here', 24.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('773 Alloy Vintage  Sun Art Portrait Ear Clips', '773-alloy-vintage-sun-art-portrait-ear-clips', 'Product description here', 17.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('262 Red & blue contrasting Exaggerated personality ear clip', '262-red-&-blue-contrasting-exaggerated-personality-ear-clip', 'Product description here', 36.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('774 Alloy Elegant Sky Corner Earrings', '774-alloy-elegant-sky-corner-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('774 Alloy Elegant Sky Corner Earrings', '774-alloy-elegant-sky-corner-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Golden');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('774 Alloy Elegant Sky Corner Earrings', '774-alloy-elegant-sky-corner-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('263 Temperament Bright Fashionable Earrings', '263-temperament-bright-fashionable-earrings', 'Product description here', 27.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('264 Brilliant Blue Ocean Flower', '264-brilliant-blue-ocean-flower', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('776 Alloy Elegant and Holy Angel Realm Earrings', '776-alloy-elegant-and-holy-angel-realm-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('265 Cubic The Shine Fashionable Earrings', '265-cubic-the-shine-fashionable-earrings', 'Product description here', 15.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('266 S03 The tassels pure earrings', '266-s03-the-tassels-pure-earrings', 'Product description here', 17.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('778 Alloy Sparkling love heart Earrings', '778-alloy-sparkling-love-heart-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('779 Alloy Personalized and minimalist flower Earrings', '779-alloy-personalized-and-minimalist-flower-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('268 Double circle of lava Fashionable Earrings', '268-double-circle-of-lava-fashionable-earrings', 'Product description here', 21.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('269 S03 Spring Emeralds Fashionable Earrings', '269-s03-spring-emeralds-fashionable-earrings', 'Product description here', 44.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('781 Alloy High quality fashionable Earrings', '781-alloy-high-quality-fashionable-earrings', 'Product description here', 39.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('781 Alloy High quality fashionable Earrings', '781-alloy-high-quality-fashionable-earrings', 'Product description here', 39.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'purple');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('781 Alloy High quality fashionable Earrings', '781-alloy-high-quality-fashionable-earrings', 'Product description here', 39.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('270 Geometric frame Fashionable Earrings', '270-geometric-frame-fashionable-earrings', 'Product description here', 22.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('782 Alloy European and American texture antique alloy earrings', '782-alloy-european-and-american-texture-antique-alloy-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('271 Transparent texture Fashionable Earrings', '271-transparent-texture-fashionable-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('783 Alloy green step a lotus necklace set', '783-alloy-green-step-a-lotus-necklace-set', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('272 Texture grain Fashionable Earrings', '272-texture-grain-fashionable-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'other', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'other', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'other', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('273 Metal hammer Fashionable Earrings', '273-metal-hammer-fashionable-earrings', 'Product description here', 22.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace+bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('274 Auroral Wave Fashionable Earrings', '274-auroral-wave-fashionable-earrings', 'Product description here', 24.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('786 Alloy Versatile Butterfly Love Flower Earrings', '786-alloy-versatile-butterfly-love-flower-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('275 Africa Love Fashionable Earrings', '275-africa-love-fashionable-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('787 Alloy Blue Aurora Sparkling Necklace Set', '787-alloy-blue-aurora-sparkling-necklace-set', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('277 Eve`s Fruite Fashionable Earrings', '277-eve`s-fruite-fashionable-earrings', 'Product description here', 41.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('277 Eve`s Fruite Fashionable Earrings', '277-eve`s-fruite-fashionable-earrings', 'Product description here', 41.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Orange');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('277 Eve`s Fruite Fashionable Earrings', '277-eve`s-fruite-fashionable-earrings', 'Product description here', 41.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('278 S02 Panther Blued Earrings', '278-s02-panther-blued-earrings', 'Product description here', 60.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('278 S02 Panther Blued Earrings', '278-s02-panther-blued-earrings', 'Product description here', 60.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('278 S02 Panther Blued Earrings', '278-s02-panther-blued-earrings', 'Product description here', 60.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('280 Alocasia odora Fashion Earrings', '280-alocasia-odora-fashion-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('280 Alocasia odora Fashion Earrings', '280-alocasia-odora-fashion-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('280 Alocasia odora Fashion Earrings', '280-alocasia-odora-fashion-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Green');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('792 Antique Blue Glitter Enamel snake Set', '792-antique-blue-glitter-enamel-snake-set', 'Product description here', 45.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('281 S03 Alien Glam Fashionable Earrings', '281-s03-alien-glam-fashionable-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('281 S03 Alien Glam Fashionable Earrings', '281-s03-alien-glam-fashionable-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silvery');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('281 S03 Alien Glam Fashionable Earrings', '281-s03-alien-glam-fashionable-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Golden');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('282 Chain Chain Chain Fashion Earrings', '282-chain-chain-chain-fashion-earrings', 'Product description here', 38.00, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('282 Chain Chain Chain Fashion Earrings', '282-chain-chain-chain-fashion-earrings', 'Product description here', 38.00, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('282 Chain Chain Chain Fashion Earrings', '282-chain-chain-chain-fashion-earrings', 'Product description here', 38.00, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('283 Guanyin Fashionable Earrings', '283-guanyin-fashionable-earrings', 'Product description here', 46.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('283 Guanyin Fashionable Earrings', '283-guanyin-fashionable-earrings', 'Product description here', 46.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('283 Guanyin Fashionable Earrings', '283-guanyin-fashionable-earrings', 'Product description here', 46.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace+bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('284 ZEMA bLUE Fashion Earrings', '284-zema-blue-fashion-earrings', 'Product description here', 43.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('284 ZEMA bLUE Fashion Earrings', '284-zema-blue-fashion-earrings', 'Product description here', 43.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Specification', 'Long');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('284 ZEMA bLUE Fashion Earrings', '284-zema-blue-fashion-earrings', 'Product description here', 43.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Specification', 'Short');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('284 ZEMA bLUE Fashion Earrings', '284-zema-blue-fashion-earrings', 'Product description here', 43.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Specification', 'AB');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('540 HD super star zircon earrings', '540-hd-super-star-zircon-earrings', 'Product description here', 54.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('540 HD super star zircon earrings', '540-hd-super-star-zircon-earrings', 'Product description here', 54.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('540 HD super star zircon earrings', '540-hd-super-star-zircon-earrings', 'Product description here', 54.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'purple');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('540 HD super star zircon earrings', '540-hd-super-star-zircon-earrings', 'Product description here', 54.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'colorful');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('796 Alloy Violet Banquet Star Set', '796-alloy-violet-banquet-star-set', 'Product description here', 36.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('285 Starlight Swaying Fashion Earrings', '285-starlight-swaying-fashion-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('541 HD Ocean Star Fashionable Earrings', '541-hd-ocean-star-fashionable-earrings', 'Product description here', 35.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('286 Vintage Dark Red Fashion Earrings', '286-vintage-dark-red-fashion-earrings', 'Product description here', 36.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('286 Vintage Dark Red Fashion Earrings', '286-vintage-dark-red-fashion-earrings', 'Product description here', 36.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('286 Vintage Dark Red Fashion Earrings', '286-vintage-dark-red-fashion-earrings', 'Product description here', 36.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('799 Alloy Retro palace style inlaid with magnificent flowers Set', '799-alloy-retro-palace-style-inlaid-with-magnificent-flowers-set', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('288 Vintage Hepburn Style Red Earrings', '288-vintage-hepburn-style-red-earrings', 'Product description here', 41.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('801 Alloy Retro palace style premium carp joy set', '801-alloy-retro-palace-style-premium-carp-joy-set', 'Product description here', 109.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('801 Alloy Retro palace style premium carp joy set', '801-alloy-retro-palace-style-premium-carp-joy-set', 'Product description here', 109.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('801 Alloy Retro palace style premium carp joy set', '801-alloy-retro-palace-style-premium-carp-joy-set', 'Product description here', 109.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('290 Retro S-shaped Red and White Earrings', '290-retro-s-shaped-red-and-white-earrings', 'Product description here', 50.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('291 Classic surround versatile earrings', '291-classic-surround-versatile-earrings', 'Product description here', 52.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('292 Xiaoxiangfeng Black Button Earrings', '292-xiaoxiangfeng-black-button-earrings', 'Product description here', 25.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('805 Alloy Versatile and Elegant Alien Set', '805-alloy-versatile-and-elegant-alien-set', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('294 French Light Luxury Luxury High Grade Embedding Temperament Flower Dew Earrings', '294-french-light-luxury-luxury-high-grade-embedding-temperament-flower-dew-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('806 Alloy Heavy duty vintage large lion Set', '806-alloy-heavy-duty-vintage-large-lion-set', 'Product description here', 69.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('806 Alloy Heavy duty vintage large lion Set', '806-alloy-heavy-duty-vintage-large-lion-set', 'Product description here', 69.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('806 Alloy Heavy duty vintage large lion Set', '806-alloy-heavy-duty-vintage-large-lion-set', 'Product description here', 69.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('806 Alloy Heavy duty vintage large lion Set', '806-alloy-heavy-duty-vintage-large-lion-set', 'Product description here', 69.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('296 Personalized and minimalist C-shaped crescent earrings', '296-personalized-and-minimalist-c-shaped-crescent-earrings', 'Product description here', 15.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('296 Personalized and minimalist C-shaped crescent earrings', '296-personalized-and-minimalist-c-shaped-crescent-earrings', 'Product description here', 15.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('296 Personalized and minimalist C-shaped crescent earrings', '296-personalized-and-minimalist-c-shaped-crescent-earrings', 'Product description here', 15.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Golden');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('297 Simple and atmospheric design, elegant plain ginkgo leaf earrings', '297-simple-and-atmospheric-design,-elegant-plain-ginkgo-leaf-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('553 Hollow feather zircon earrings', '553-hollow-feather-zircon-earrings', 'Product description here', 12.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('42 Egypt Diva Timeless Vintage Earrings', '42-egypt-diva-timeless-vintage-earrings', 'Product description here', 27.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('298 Fashionable shell shaped Earrings', '298-fashionable-shell-shaped-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('43 Topez Greenvile Power Lady Earrings', '43-topez-greenvile-power-lady-earrings', 'Product description here', 30.88, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('300 French medieval palace style earrings', '300-french-medieval-palace-style-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('301 C-shaped letter Fashion Earrings', '301-c-shaped-letter-fashion-earrings', 'Product description here', 22.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('301 C-shaped letter Fashion Earrings', '301-c-shaped-letter-fashion-earrings', 'Product description here', 22.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('301 C-shaped letter Fashion Earrings', '301-c-shaped-letter-fashion-earrings', 'Product description here', 22.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('46 Blue Mood Romantic Vintage', '46-blue-mood-romantic-vintage', 'Product description here', 26.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('302 Classic hollow maple leaf earrings', '302-classic-hollow-maple-leaf-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('47 Rosy Rose Romance Red Earrings', '47-rosy-rose-romance-red-earrings', 'Product description here', 24.88, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('303 Love Medieval Fashion Earrings', '303-love-medieval-fashion-earrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('48 Vintage Fashion Pink Tassel Earrings', '48-vintage-fashion-pink-tassel-earrings', 'Product description here', 20.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('560 Colorful Rhombus Water Earrings', '560-colorful-rhombus-water-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('560 Colorful Rhombus Water Earrings', '560-colorful-rhombus-water-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'green');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('560 Colorful Rhombus Water Earrings', '560-colorful-rhombus-water-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('49 Rosy Rose Vintage Antic Fashion Earrings', '49-rosy-rose-vintage-antic-fashion-earrings', 'Product description here', 23.88, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('305 Versatile triangular texture tassel Earrings', '305-versatile-triangular-texture-tassel-earrings', 'Product description here', 28.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('50 Powerful Lion King Vintage Earrings', '50-powerful-lion-king-vintage-earrings', 'Product description here', 40.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('50 Powerful Lion King Vintage Earrings', '50-powerful-lion-king-vintage-earrings', 'Product description here', 40.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('306 Retro minimalist tulip Earrings', '306-retro-minimalist-tulip-earrings', 'Product description here', 56.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('819 Alloy Exaggerated large red earrings', '819-alloy-exaggerated-large-red-earrings', 'Product description here', 13.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('309 Inlaid three petal flower Earrings', '309-inlaid-three-petal-flower-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('55 Powerful Lady Luxury Earclip Earrings', '55-powerful-lady-luxury-earclip-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('311 Irregular shaped vintage texture Earrings', '311-irregular-shaped-vintage-texture-earrings', 'Product description here', 36.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('56 Snake Egyption Black&Red Vintage Earrings', '56-snake-egyption-black&red-vintage-earrings', 'Product description here', 42.88, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('57 Elegant Lady Chase Vintage Earrings', '57-elegant-lady-chase-vintage-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('57 Elegant Lady Chase Vintage Earrings', '57-elegant-lady-chase-vintage-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Stud earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('57 Elegant Lady Chase Vintage Earrings', '57-elegant-lady-chase-vintage-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clips');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('313 Vintage exquisite versatile twisted Fried Dough Twists Earrings', '313-vintage-exquisite-versatile-twisted-fried-dough-twists-earrings', 'Product description here', 39.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('59 Starry Night SEASON II Earrings', '59-starry-night-season-ii-earrings', 'Product description here', 43.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('316 Minimalist and niche design with C-shaped Earrings', '316-minimalist-and-niche-design-with-c-shaped-earrings', 'Product description here', 33.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('316 Minimalist and niche design with C-shaped Earrings', '316-minimalist-and-niche-design-with-c-shaped-earrings', 'Product description here', 33.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('316 Minimalist and niche design with C-shaped Earrings', '316-minimalist-and-niche-design-with-c-shaped-earrings', 'Product description here', 33.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('62 Heart to Heart Vintage Earrings', '62-heart-to-heart-vintage-earrings', 'Product description here', 40.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('318 Elegant and classical style with embedded Earrings', '318-elegant-and-classical-style-with-embedded-earrings', 'Product description here', 56.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('574 Fashionable Design Galaxy Sparkling Stone Earrings', '574-fashionable-design-galaxy-sparkling-stone-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('63 Golden Time River Melt Vintage Earrings', '63-golden-time-river-melt-vintage-earrings', 'Product description here', 37.88, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('64 Tassel Rose Romance Vintage Earrings', '64-tassel-rose-romance-vintage-earrings', 'Product description here', 18.88, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('320 Full of lucky clover earrings', '320-full-of-lucky-clover-earrings', 'Product description here', 48.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('320 Full of lucky clover earrings', '320-full-of-lucky-clover-earrings', 'Product description here', 48.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('833 HD Exaggerated Luxury Red Earrings', '833-hd-exaggerated-luxury-red-earrings', 'Product description here', 60.00, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('66 Peacock Greeny Season I Vintage Earrings', '66-peacock-greeny-season-i-vintage-earrings', 'Product description here', 26.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('323 Filled with dazzling square purple hollow out earrings', '323-filled-with-dazzling-square-purple-hollow-out-earrings', 'Product description here', 48.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('836 Fashion Niche Irregular Twisted Circle Earrings', '836-fashion-niche-irregular-twisted-circle-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('325 EYE OF LIFE Fashion Earrings', '325-eye-of-life-fashion-earrings', 'Product description here', 36.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('581 Vintage Spiritual Earrings', '581-vintage-spiritual-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('837 simple long vintage earrings', '837-simple-long-vintage-earrings', 'Product description here', 39.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('70 Diva Detail Vintage For Life Vintage Earrings', '70-diva-detail-vintage-for-life-vintage-earrings', 'Product description here', 25.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('328 Angel Back Tassel Earrings', '328-angel-back-tassel-earrings', 'Product description here', 44.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('584 Warm Pink Petal Earrings', '584-warm-pink-petal-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('584 Warm Pink Petal Earrings', '584-warm-pink-petal-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('584 Warm Pink Petal Earrings', '584-warm-pink-petal-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('73 The King of Universe Vintage Earrings', '73-the-king-of-universe-vintage-earrings', 'Product description here', 28.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('329 Four Leaf Grass Water Drops Earrings', '329-four-leaf-grass-water-drops-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('329 Four Leaf Grass Water Drops Earrings', '329-four-leaf-grass-water-drops-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('79 Trueth of Love Target Vintage Fashion Earrings', '79-trueth-of-love-target-vintage-fashion-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('81 tears of fire love,vintage style erarrings', '81-tears-of-fire-love,vintage-style-erarrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('82 women\'s blue eyes exotic style earrings', '82-women\'s-blue-eyes-exotic-style-earrings', 'Product description here', 28.88, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('850 Alloy Europe and America light luxury design personality earring', '850-alloy-europe-and-america-light-luxury-design-personality-earring', 'Product description here', 27.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('595 Fashionable personalized inlay cool ear clip', '595-fashionable-personalized-inlay-cool-ear-clip', 'Product description here', 24.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('595 Fashionable personalized inlay cool ear clip', '595-fashionable-personalized-inlay-cool-ear-clip', 'Product description here', 24.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('595 Fashionable personalized inlay cool ear clip', '595-fashionable-personalized-inlay-cool-ear-clip', 'Product description here', 24.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('851 Fashion Four-Leaf Swivel Earrings', '851-fashion-four-leaf-swivel-earrings', 'Product description here', 13.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('596 Stylish design exquisite flower carving Earrings', '596-stylish-design-exquisite-flower-carving-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('85 deeply love irragular flowers vintage earrings', '85-deeply-love-irragular-flowers-vintage-earrings', 'Product description here', 31.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('854 Fashion Classic Chinese Style Spring Flower Earrings', '854-fashion-classic-chinese-style-spring-flower-earrings', 'Product description here', 39.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('599 Fashionable Brilliant Feather Tassel Earrings', '599-fashionable-brilliant-feather-tassel-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('855 Temperament light luxury long heart earrings', '855-temperament-light-luxury-long-heart-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('88 red eddy  bothic style  ear  clips', '88-red-eddy-bothic-style-ear-clips', 'Product description here', 42.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('856 subtlety elegant shining Pegasus earrings', '856-subtlety-elegant-shining-pegasus-earrings', 'Product description here', 32.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('89 easten star vintage ear clips', '89-easten-star-vintage-ear-clips', 'Product description here', 14.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('90 dark glory vintage ear clips', '90-dark-glory-vintage-ear-clips', 'Product description here', 14.88, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('92 rosing love designable ear clips', '92-rosing-love-designable-ear-clips', 'Product description here', 42.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('98 hollow flower  simple vintage earrings', '98-hollow-flower-simple-vintage-earrings', 'Product description here', 24.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('100 fancy green heart fashion ring', '100-fancy-green-heart-fashion-ring', 'Product description here', 35.88, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('868 Europe and the American temperament square earrings', '868-europe-and-the-american-temperament-square-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('101 dropping green heart earrings', '101-dropping-green-heart-earrings', 'Product description here', 27.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('102 feather\'s romantic  fashion style earrings', '102-feather\'s-romantic-fashion-style-earrings', 'Product description here', 59.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('102 feather\'s romantic  fashion style earrings', '102-feather\'s-romantic-fashion-style-earrings', 'Product description here', 59.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Yellow');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('102 feather\'s romantic  fashion style earrings', '102-feather\'s-romantic-fashion-style-earrings', 'Product description here', 59.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('104 siberia\'s wall vintage earrings', '104-siberia\'s-wall-vintage-earrings', 'Product description here', 22.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('105 traditional style  drop shap earrings', '105-traditional-style-drop-shap-earrings', 'Product description here', 20.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('105 traditional style  drop shap earrings', '105-traditional-style-drop-shap-earrings', 'Product description here', 20.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('617 Vine Snake Curve Radiant Earrings', '617-vine-snake-curve-radiant-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('618 Jade colored beautiful shadow golden vine earrings', '618-jade-colored-beautiful-shadow-golden-vine-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('109 colourful years vintage style ear cilps', '109-colourful-years-vintage-style-ear-cilps', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('622 Embossed Golden Heart Hanging Stud Earrings', '622-embossed-golden-heart-hanging-stud-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('112 colourful wheel fashion style ear cilps', '112-colourful-wheel-fashion-style-ear-cilps', 'Product description here', 14.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('624 Alloy Golden and silver water drop beaded earrings', '624-alloy-golden-and-silver-water-drop-beaded-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('624 Alloy Golden and silver water drop beaded earrings', '624-alloy-golden-and-silver-water-drop-beaded-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('624 Alloy Golden and silver water drop beaded earrings', '624-alloy-golden-and-silver-water-drop-beaded-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'golden');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('117 Metal Rose Blossom Earrings', '117-metal-rose-blossom-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('118 alloy timeless fashionable hoops', '118-alloy-timeless-fashionable-hoops', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('118 alloy timeless fashionable hoops', '118-alloy-timeless-fashionable-hoops', 'Product description here', 16.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Golden');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('118 alloy timeless fashionable hoops', '118-alloy-timeless-fashionable-hoops', 'Product description here', 16.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silvery');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('121 Small niche design feel elf wing alloy Earrings', '121-small-niche-design-feel-elf-wing-alloy-earrings', 'Product description here', 22.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('122 French Love Fashion alloy zircon Earrings', '122-french-love-fashion-alloy-zircon-earrings', 'Product description here', 38.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('122 French Love Fashion alloy zircon Earrings', '122-french-love-fashion-alloy-zircon-earrings', 'Product description here', 38.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Brown');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('122 French Love Fashion alloy zircon Earrings', '122-french-love-fashion-alloy-zircon-earrings', 'Product description here', 38.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Green');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('122 French Love Fashion alloy zircon Earrings', '122-french-love-fashion-alloy-zircon-earrings', 'Product description here', 38.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Purple');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('634 Irregular fireworks shining earrings', '634-irregular-fireworks-shining-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('636 Colorful Drunken Beauty Earrings', '636-colorful-drunken-beauty-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('126 Retro Sunflower Fashion zircon Earrings', '126-retro-sunflower-fashion-zircon-earrings', 'Product description here', 41.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('127 Heart to Heart Bright Moon alloy Earrings', '127-heart-to-heart-bright-moon-alloy-earrings', 'Product description here', 8.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('129 Sea Blue Star alloy earrings', '129-sea-blue-star-alloy-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('641 HD Pinky Vintage Red Fashionable Earrings', '641-hd-pinky-vintage-red-fashionable-earrings', 'Product description here', 31.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('641 HD Pinky Vintage Red Fashionable Earrings', '641-hd-pinky-vintage-red-fashionable-earrings', 'Product description here', 31.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'earrings', 'ear pin');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('641 HD Pinky Vintage Red Fashionable Earrings', '641-hd-pinky-vintage-red-fashionable-earrings', 'Product description here', 31.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'earrings', 'ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('130 Pinky Lady Classy alloy earrings', '130-pinky-lady-classy-alloy-earrings', 'Product description here', 42.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('130 Pinky Lady Classy alloy earrings', '130-pinky-lady-classy-alloy-earrings', 'Product description here', 42.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear cilp');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('130 Pinky Lady Classy alloy earrings', '130-pinky-lady-classy-alloy-earrings', 'Product description here', 42.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('133 Flame texture alloy earrings', '133-flame-texture-alloy-earrings', 'Product description here', 36.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('134 Black Secret Garden alloy earrings', '134-black-secret-garden-alloy-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('135 Dark Queen alloy earrings', '135-dark-queen-alloy-earrings', 'Product description here', 36.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('136 Tibetan Tribe Envoy zircon Earrings', '136-tibetan-tribe-envoy-zircon-earrings', 'Product description here', 21.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('648 Alloy Aristocratic classical lingering hollow Set', '648-alloy-aristocratic-classical-lingering-hollow-set', 'Product description here', 139.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('137 starry night II alloy earrings', '137-starry-night-ii-alloy-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('651 Alloy Double layered irregular starry meteorite Set', '651-alloy-double-layered-irregular-starry-meteorite-set', 'Product description here', 89.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('140 Cartiglam fashionable alloy earrings', '140-cartiglam-fashionable-alloy-earrings', 'Product description here', 51.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('652 Alloy Elegant and luxurious retro dreamland tassel set', '652-alloy-elegant-and-luxurious-retro-dreamland-tassel-set', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('141 Christy style fashionable alloy earrings', '141-christy-style-fashionable-alloy-earrings', 'Product description here', 59.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('143 Heart connected alloy ear cilp', '143-heart-connected-alloy-ear-cilp', 'Product description here', 25.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('144 Elegant personality alloy ear cilp', '144-elegant-personality-alloy-ear-cilp', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('656 Retro Palace Style Autumn and Winter Fructose Earrings', '656-retro-palace-style-autumn-and-winter-fructose-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('145 Lotus style alloy earrings', '145-lotus-style-alloy-earrings', 'Product description here', 24.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('146 Elegant Spider alloy earrings', '146-elegant-spider-alloy-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('146 Elegant Spider alloy earrings', '146-elegant-spider-alloy-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silvery');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('147 Big Butterfly alloy Earrings', '147-big-butterfly-alloy-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('147 Big Butterfly alloy Earrings', '147-big-butterfly-alloy-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('147 Big Butterfly alloy Earrings', '147-big-butterfly-alloy-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('661 Fashionable Design Green Glow Pony Head Earrings', '661-fashionable-design-green-glow-pony-head-earrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('662 egypt shield exotic style earrings', '662-egypt-shield-exotic-style-earrings', 'Product description here', 39.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('151 Textured metal arrow alloy ear clip', '151-textured-metal-arrow-alloy-ear-clip', 'Product description here', 20.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('151 Textured metal arrow alloy ear clip', '151-textured-metal-arrow-alloy-ear-clip', 'Product description here', 20.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('154 Hibiscus Purple Flower alloy Earrings', '154-hibiscus-purple-flower-alloy-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('667 Love Gem Heart Language Earrings', '667-love-gem-heart-language-earrings', 'Product description here', 28.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('158 Square green whirlwind alloy earrings', '158-square-green-whirlwind-alloy-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('670 Alloy Versatile Spring/Summer Flower Earrings', '670-alloy-versatile-spring/summer-flower-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('159 Colorful stitching alloy earrings', '159-colorful-stitching-alloy-earrings', 'Product description here', 35.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('671 Alloy geometric concave shape elf earring', '671-alloy-geometric-concave-shape-elf-earring', 'Product description here', 17.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('160 Golden Wheet alloy earrings', '160-golden-wheet-alloy-earrings', 'Product description here', 24.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('161 Forrest jungle Vintage alloy earrings', '161-forrest-jungle-vintage-alloy-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('162 Exquisitely crafted old alloy earrings', '162-exquisitely-crafted-old-alloy-earrings', 'Product description here', 44.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('163 Symmetrical face alloy earrings', '163-symmetrical-face-alloy-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('676 Classic Chinese Dragon Gemstone Earrings', '676-classic-chinese-dragon-gemstone-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('165 Double row large C zircon earrings', '165-double-row-large-c-zircon-earrings', 'Product description here', 25.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('165 Double row large C zircon earrings', '165-double-row-large-c-zircon-earrings', 'Product description here', 25.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Green');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('165 Double row large C zircon earrings', '165-double-row-large-c-zircon-earrings', 'Product description here', 25.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Purple');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('677 Smart Jellyfish Fashion Earrings', '677-smart-jellyfish-fashion-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('166 Fashionable inlaid triangular cross Earrings', '166-fashionable-inlaid-triangular-cross-earrings', 'Product description here', 28.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('678 Fun multi-color patchwork earrings', '678-fun-multi-color-patchwork-earrings', 'Product description here', 26.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('679 Square design feel alloy earrings', '679-square-design-feel-alloy-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('681 Fashionable snowflake earrings', '681-fashionable-snowflake-earrings', 'Product description here', 52.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('170 Bamboo C-shaped alloy earrings', '170-bamboo-c-shaped-alloy-earrings', 'Product description here', 31.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('682 Golden Ripple Ring Earrings', '682-golden-ripple-ring-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('171 Classic Purple Button alloy earrings', '171-classic-purple-button-alloy-earrings', 'Product description here', 45.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('683 Colorful golden heart Earrings', '683-colorful-golden-heart-earrings', 'Product description here', 17.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('172 Retro Palace Brown Round Button alloy earrings', '172-retro-palace-brown-round-button-alloy-earrings', 'Product description here', 42.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('684 Minimalist personality asymmetrical geometric earrings', '684-minimalist-personality-asymmetrical-geometric-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('173 Embossed rose alloy earrings', '173-embossed-rose-alloy-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('686 Alloy Design Long Earrings', '686-alloy-design-long-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('686 Alloy Design Long Earrings', '686-alloy-design-long-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('686 Alloy Design Long Earrings', '686-alloy-design-long-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('175 Dingjing Blue Fashion Earrings', '175-dingjing-blue-fashion-earrings', 'Product description here', 36.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('176 Irregular Fried Dough Twists braided earrings', '176-irregular-fried-dough-twists-braided-earrings', 'Product description here', 41.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('176 Irregular Fried Dough Twists braided earrings', '176-irregular-fried-dough-twists-braided-earrings', 'Product description here', 41.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('176 Irregular Fried Dough Twists braided earrings', '176-irregular-fried-dough-twists-braided-earrings', 'Product description here', 41.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('688 Fashionable and exquisite star studded earrings', '688-fashionable-and-exquisite-star-studded-earrings', 'Product description here', 47.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('689 Elegant Golden Arc Line Earrings', '689-elegant-golden-arc-line-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('178 Fully inlaid minimalist love alloy earrings', '178-fully-inlaid-minimalist-love-alloy-earrings', 'Product description here', 27.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('178 Fully inlaid minimalist love alloy earrings', '178-fully-inlaid-minimalist-love-alloy-earrings', 'Product description here', 27.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('691 Alloy exaggerated personalized leaf earrings', '691-alloy-exaggerated-personalized-leaf-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('691 Alloy exaggerated personalized leaf earrings', '691-alloy-exaggerated-personalized-leaf-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('691 Alloy exaggerated personalized leaf earrings', '691-alloy-exaggerated-personalized-leaf-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('180 Layered Wave Style alloy Earrings', '180-layered-wave-style-alloy-earrings', 'Product description here', 46.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('180 Layered Wave Style alloy Earrings', '180-layered-wave-style-alloy-earrings', 'Product description here', 46.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('180 Layered Wave Style alloy Earrings', '180-layered-wave-style-alloy-earrings', 'Product description here', 46.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('692 Alloy Fashionable Butterfly Ear Clamp Earring', '692-alloy-fashionable-butterfly-ear-clamp-earring', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('181 Inlaid sugar tassel alloy earrings', '181-inlaid-sugar-tassel-alloy-earrings', 'Product description here', 17.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('181 Inlaid sugar tassel alloy earrings', '181-inlaid-sugar-tassel-alloy-earrings', 'Product description here', 17.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('693 Stylish and classic inlaid forest maze earrings', '693-stylish-and-classic-inlaid-forest-maze-earrings', 'Product description here', 36.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('183 Versatile Shell Teeth Small Flower alloy Earrings', '183-versatile-shell-teeth-small-flower-alloy-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('695 Exquisite and Dynamic Butterfly Earrings', '695-exquisite-and-dynamic-butterfly-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('696 Shining Love Beloved Earrings', '696-shining-love-beloved-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('696 Shining Love Beloved Earrings', '696-shining-love-beloved-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('696 Shining Love Beloved Earrings', '696-shining-love-beloved-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('697 Exaggerated morning leaf earrings', '697-exaggerated-morning-leaf-earrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('697 Exaggerated morning leaf earrings', '697-exaggerated-morning-leaf-earrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('697 Exaggerated morning leaf earrings', '697-exaggerated-morning-leaf-earrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('186 French high-end colored mushroom Earrings', '186-french-high-end-colored-mushroom-earrings', 'Product description here', 31.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('186 French high-end colored mushroom Earrings', '186-french-high-end-colored-mushroom-earrings', 'Product description here', 31.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Yellow');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('186 French high-end colored mushroom Earrings', '186-french-high-end-colored-mushroom-earrings', 'Product description here', 31.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'White');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('187 Bohemian style tassel alloy Earrings', '187-bohemian-style-tassel-alloy-earrings', 'Product description here', 42.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('189 Stereoscopic Forest Leaf Vein alloy Earrings', '189-stereoscopic-forest-leaf-vein-alloy-earrings', 'Product description here', 42.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('701 Colorful Gemstone Waltz Earrings', '701-colorful-gemstone-waltz-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('192 Elegant and exquisite round point Earrings', '192-elegant-and-exquisite-round-point-earrings', 'Product description here', 26.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('192 Elegant and exquisite round point Earrings', '192-elegant-and-exquisite-round-point-earrings', 'Product description here', 26.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('704 Song of the Ocean Blue Crystal Earrings', '704-song-of-the-ocean-blue-crystal-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('706 Weaving and inlaying circular earrings', '706-weaving-and-inlaying-circular-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('195 Design sense Phoenix Earrings', '195-design-sense-phoenix-earrings', 'Product description here', 179.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('195 Design sense Phoenix Earrings', '195-design-sense-phoenix-earrings', 'Product description here', 179.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear Threads');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('707 Fashionable sparkling Eden treasure beads earrings', '707-fashionable-sparkling-eden-treasure-beads-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('196 Cute Four Leaf Grass Earrings', '196-cute-four-leaf-grass-earrings', 'Product description here', 59.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('196 Cute Four Leaf Grass Earrings', '196-cute-four-leaf-grass-earrings', 'Product description here', 59.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('197 Conical hollow alloy earrings', '197-conical-hollow-alloy-earrings', 'Product description here', 24.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('710 Bonfire Dinner Temperament Earrings', '710-bonfire-dinner-temperament-earrings', 'Product description here', 27.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('711 Alloy Fashionable Super Flash Tassel Earrings', '711-alloy-fashionable-super-flash-tassel-earrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('200 Golden Time alloy earrings', '200-golden-time-alloy-earrings', 'Product description here', 21.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('201 Vintage ball alloy earrings', '201-vintage-ball-alloy-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('202 Three-dimensional coral alloy earrings', '202-three-dimensional-coral-alloy-earrings', 'Product description here', 52.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('202 Three-dimensional coral alloy earrings', '202-three-dimensional-coral-alloy-earrings', 'Product description here', 52.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'White');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('202 Three-dimensional coral alloy earrings', '202-three-dimensional-coral-alloy-earrings', 'Product description here', 52.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('203 Totally tassel alloy earrings', '203-totally-tassel-alloy-earrings', 'Product description here', 47.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('204 Simple black and white checkered Earrings', '204-simple-black-and-white-checkered-earrings', 'Product description here', 26.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('205 Fashionable green square Earrings', '205-fashionable-green-square-earrings', 'Product description here', 46.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('206 Temperament Circle Fashion Earrings', '206-temperament-circle-fashion-earrings', 'Product description here', 23.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('207 Droplet shaped tassel Earrings', '207-droplet-shaped-tassel-earrings', 'Product description here', 38.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('208 Gilded spring days', '208-gilded-spring-days', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('209 Retro rhombic circle earshot', '209-retro-rhombic-circle-earshot', 'Product description here', 39.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('722 Long Snake Spirit Earrings', '722-long-snake-spirit-earrings', 'Product description here', 12.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('722 Long Snake Spirit Earrings', '722-long-snake-spirit-earrings', 'Product description here', 12.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('722 Long Snake Spirit Earrings', '722-long-snake-spirit-earrings', 'Product description here', 12.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('211 Curved tassel fashion Earrings', '211-curved-tassel-fashion-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('212 Classic Hepburn Style Earrings', '212-classic-hepburn-style-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('212 Classic Hepburn Style Earrings', '212-classic-hepburn-style-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'White');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('212 Classic Hepburn Style Earrings', '212-classic-hepburn-style-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Orange');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('213 Hollow woven heart Earrings', '213-hollow-woven-heart-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('725 Modern simple goldenen braided Earrings', '725-modern-simple-goldenen-braided-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('214 Curved V-shaped fashion Earrings', '214-curved-v-shaped-fashion-earrings', 'Product description here', 34.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('215 Cold and cool style plain ring Earrings', '215-cold-and-cool-style-plain-ring-earrings', 'Product description here', 21.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('216 Divaus Fashionable Earrings', '216-divaus-fashionable-earrings', 'Product description here', 26.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('219 Girl on Fire', '219-girl-on-fire', 'Product description here', 37.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('220 Vintage Red Fashionable Earrings', '220-vintage-red-fashionable-earrings', 'Product description here', 72.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('221 European and American water drop', '221-european-and-american-water-drop', 'Product description here', 42.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('222 Dynasty China Fashion Earrings', '222-dynasty-china-fashion-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('223 Love Spirit Fashionable Earrings', '223-love-spirit-fashionable-earrings', 'Product description here', 37.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('224 S04 Halo Fashionable Earrings', '224-s04-halo-fashionable-earrings', 'Product description here', 30.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('225 The EYE Fashionable Earrings', '225-the-eye-fashionable-earrings', 'Product description here', 52.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('226 S02 Black Black Heart Earrings', '226-s02-black-black-heart-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('227 Angel Burake Fashion Earrings', '227-angel-burake-fashion-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('228 Leaf The Love Fashionable Earrings', '228-leaf-the-love-fashionable-earrings', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('230 Magic LOVE Fashion Earrings', '230-magic-love-fashion-earrings', 'Product description here', 39.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('231 Retro Palace Design Colorful Texture Flower Earrings', '231-retro-palace-design-colorful-texture-flower-earrings', 'Product description here', 25.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('232 Ambery Fluid Fashion Earrings', '232-ambery-fluid-fashion-earrings', 'Product description here', 15.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('233 Watery Lily Fashion Earrings', '233-watery-lily-fashion-earrings', 'Product description here', 26.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('234 European and American hollow button', '234-european-and-american-hollow-button', 'Product description here', 28.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('236 Mon Tree Fashion Earrings', '236-mon-tree-fashion-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('237 Flying Feels Fashion Earrings', '237-flying-feels-fashion-earrings', 'Product description here', 27.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('238 Mystery Egypt Fashion Earrings', '238-mystery-egypt-fashion-earrings', 'Product description here', 43.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('239 Ancient Queen Fashionable Earrings', '239-ancient-queen-fashionable-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('240 FAB Day Fashionable Earrings', '240-fab-day-fashionable-earrings', 'Product description here', 50.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('241 S04 Litter Mermaid Earrings', '241-s04-litter-mermaid-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('753 rose golden dance hoop Earrings', '753-rose-golden-dance-hoop-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('242 French Palace Western Quicksand', '242-french-palace-western-quicksand', 'Product description here', 18.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('754 Alloy Perfect Round goldenen Earrings', '754-alloy-perfect-round-goldenen-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('243 Turgolings Fashion Earrings', '243-turgolings-fashion-earrings', 'Product description here', 29.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('755 Alloy Design sensation C-arc chain earrings', '755-alloy-design-sensation-c-arc-chain-earrings', 'Product description here', 32.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('244 S01 Gold Panther Earrings', '244-s01-gold-panther-earrings', 'Product description here', 22.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('756 Alloy Rose goldenen sparkling long Earrings', '756-alloy-rose-goldenen-sparkling-long-earrings', 'Product description here', 32.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('245 The Hive Fashion Earrings', '245-the-hive-fashion-earrings', 'Product description here', 30.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('246 Saphary Vintage Fashion Earrings', '246-saphary-vintage-fashion-earrings', 'Product description here', 33.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('758 Alloy fashionable stitching semicircle unique design earrings', '758-alloy-fashionable-stitching-semicircle-unique-design-earrings', 'Product description here', 28.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('758 Alloy fashionable stitching semicircle unique design earrings', '758-alloy-fashionable-stitching-semicircle-unique-design-earrings', 'Product description here', 28.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Brown');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('758 Alloy fashionable stitching semicircle unique design earrings', '758-alloy-fashionable-stitching-semicircle-unique-design-earrings', 'Product description here', 28.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Grey');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('247 Versatile and Elegant Four Leaf Starfish', '247-versatile-and-elegant-four-leaf-starfish', 'Product description here', 28.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('759 Alloy Fashionable temperament jaden  earrings', '759-alloy-fashionable-temperament-jaden-earrings', 'Product description here', 46.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('248 Tomato Tassel Fashionable Earrings', '248-tomato-tassel-fashionable-earrings', 'Product description here', 40.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('760 Alloy Versatile Daisy Bead Earrings', '760-alloy-versatile-daisy-bead-earrings', 'Product description here', 16.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('249 S03 Little Girly Earrings', '249-s03-little-girly-earrings', 'Product description here', 72.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('761 Alloy Wrinkle Texture Magic Mirror Earrings', '761-alloy-wrinkle-texture-magic-mirror-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('761 Alloy Wrinkle Texture Magic Mirror Earrings', '761-alloy-wrinkle-texture-magic-mirror-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Other', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('761 Alloy Wrinkle Texture Magic Mirror Earrings', '761-alloy-wrinkle-texture-magic-mirror-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Other', 'Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('250 S01 Simple Elegant Earrings', '250-s01-simple-elegant-earrings', 'Product description here', 41.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('251 Ancient Tassels Fashion Earrings', '251-ancient-tassels-fashion-earrings', 'Product description here', 49.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('252 Vintage vintage Hong Kong style', '252-vintage-vintage-hong-kong-style', 'Product description here', 64.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('764 Alloy Vintage studded floral alloy earrings', '764-alloy-vintage-studded-floral-alloy-earrings', 'Product description here', 14.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('253 Light Luxury Black Square', '253-light-luxury-black-square', 'Product description here', 55.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('765 Retro design aurora drop goldenen Earrings', '765-retro-design-aurora-drop-goldenen-earrings', 'Product description here', 9.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('254 Simple Elegante Fashion Earrings', '254-simple-elegante-fashion-earrings', 'Product description here', 25.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('766 Alloy Elegant charm water drop earrings', '766-alloy-elegant-charm-water-drop-earrings', 'Product description here', 19.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('255 Cosmic star stream Fashionable Earrings', '255-cosmic-star-stream-fashionable-earrings', 'Product description here', 40.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('767 Alloy Western heavy craftsmanship flower earrings', '767-alloy-western-heavy-craftsmanship-flower-earrings', 'Product description here', 24.99, 1, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('366 Advanced Chain Tassel zircon Necklace', '366-advanced-chain-tassel-zircon-necklace', 'Product description here', 147.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('340 Gothic Luxury Special Style Doule Necklace', '340-gothic-luxury-special-style-doule-necklace', 'Product description here', 15.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('340 Gothic Luxury Special Style Doule Necklace', '340-gothic-luxury-special-style-doule-necklace', 'Product description here', 15.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'White');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('340 Gothic Luxury Special Style Doule Necklace', '340-gothic-luxury-special-style-doule-necklace', 'Product description here', 15.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('340 Gothic Luxury Special Style Doule Necklace', '340-gothic-luxury-special-style-doule-necklace', 'Product description here', 15.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('340 Gothic Luxury Special Style Doule Necklace', '340-gothic-luxury-special-style-doule-necklace', 'Product description here', 15.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Purple');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('340 Gothic Luxury Special Style Doule Necklace', '340-gothic-luxury-special-style-doule-necklace', 'Product description here', 15.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Champagne');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('331 Personalized Snake Head Dual Use alloy Necklace', '331-personalized-snake-head-dual-use-alloy-necklace', 'Product description here', 25.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('331 Personalized Snake Head Dual Use alloy Necklace', '331-personalized-snake-head-dual-use-alloy-necklace', 'Product description here', 25.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('331 Personalized Snake Head Dual Use alloy Necklace', '331-personalized-snake-head-dual-use-alloy-necklace', 'Product description here', 25.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Sliver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('355 soft moonlight fashion necklece', '355-soft-moonlight-fashion-necklece', 'Product description here', 14.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('356 wind belling fashin style necklece', '356-wind-belling-fashin-style-necklece', 'Product description here', 35.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('368 Shining queen snake Necklace', '368-shining-queen-snake-necklace', 'Product description here', 42.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('368 Shining queen snake Necklace', '368-shining-queen-snake-necklace', 'Product description here', 42.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('368 Shining queen snake Necklace', '368-shining-queen-snake-necklace', 'Product description here', 42.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('368 Shining queen snake Necklace', '368-shining-queen-snake-necklace', 'Product description here', 42.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('359 exotic moonlight simple fashion necklece', '359-exotic-moonlight-simple-fashion-necklece', 'Product description here', 75.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('367 alloy luxury ancient coin vintage Necklace', '367-alloy-luxury-ancient-coin-vintage-necklace', 'Product description here', 80.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('373 Angel fashionable Necklace', '373-angel-fashionable-necklace', 'Product description here', 79.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('378 Unique Phoenix Butterfly', '378-unique-phoenix-butterfly', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('399 Hip Hop Men\'s Curved Water Pattern Wave Necklace', '399-hip-hop-men\'s-curved-water-pattern-wave-necklace', 'Product description here', 14.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('392 Multi Element Fashion Necklace', '392-multi-element-fashion-necklace', 'Product description here', 49.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('401 Hip Hop Men\'s Narrow Flat Arrow Necklace', '401-hip-hop-men\'s-narrow-flat-arrow-necklace', 'Product description here', 14.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('407 Exquisite and trendy sparkling starry necklace', '407-exquisite-and-trendy-sparkling-starry-necklace', 'Product description here', 69.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('410 Lion King alloy fashionable necklace', '410-lion-king-alloy-fashionable-necklace', 'Product description here', 58.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('420 Palace Wind Starlight Necklace', '420-palace-wind-starlight-necklace', 'Product description here', 85.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('424 Emperor Style Golden Lion Necklace', '424-emperor-style-golden-lion-necklace', 'Product description here', 26.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('371 Double Layer Twisted alloy Necklace', '371-double-layer-twisted-alloy-necklace', 'Product description here', 69.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('371 Double Layer Twisted alloy Necklace', '371-double-layer-twisted-alloy-necklace', 'Product description here', 69.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Long', '51cm');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('371 Double Layer Twisted alloy Necklace', '371-double-layer-twisted-alloy-necklace', 'Product description here', 69.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Long', '50cm');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('371 Double Layer Twisted alloy Necklace', '371-double-layer-twisted-alloy-necklace', 'Product description here', 69.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'White');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('371 Double Layer Twisted alloy Necklace', '371-double-layer-twisted-alloy-necklace', 'Product description here', 69.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('371 Double Layer Twisted alloy Necklace', '371-double-layer-twisted-alloy-necklace', 'Product description here', 69.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('391 Warm and versatile round rolling necklace', '391-warm-and-versatile-round-rolling-necklace', 'Product description here', 54.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('391 Warm and versatile round rolling necklace', '391-warm-and-versatile-round-rolling-necklace', 'Product description here', 54.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Long', '55cm');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('391 Warm and versatile round rolling necklace', '391-warm-and-versatile-round-rolling-necklace', 'Product description here', 54.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Champagne');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('391 Warm and versatile round rolling necklace', '391-warm-and-versatile-round-rolling-necklace', 'Product description here', 54.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Green');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('417 Persian Glam alloy necklace', '417-persian-glam-alloy-necklace', 'Product description here', 28.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'classification', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'classification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'classification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'purple');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('783 Alloy green step a lotus necklace set', '783-alloy-green-step-a-lotus-necklace-set', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'other', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'other', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'other', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace+bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('531 Key-shaped Fashion Necklace', '531-key-shaped-fashion-necklace', 'Product description here', 97.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('787 Alloy Blue Aurora Sparkling Necklace Set', '787-alloy-blue-aurora-sparkling-necklace-set', 'Product description here', 49.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('792 Antique Blue Glitter Enamel snake Set', '792-antique-blue-glitter-enamel-snake-set', 'Product description here', 45.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace+bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('796 Alloy Violet Banquet Star Set', '796-alloy-violet-banquet-star-set', 'Product description here', 36.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('798 Hip-hop Exaggerated Thorns Cuban Necklace', '798-hip-hop-exaggerated-thorns-cuban-necklace', 'Product description here', 32.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('798 Hip-hop Exaggerated Thorns Cuban Necklace', '798-hip-hop-exaggerated-thorns-cuban-necklace', 'Product description here', 32.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('798 Hip-hop Exaggerated Thorns Cuban Necklace', '798-hip-hop-exaggerated-thorns-cuban-necklace', 'Product description here', 32.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('544 Elegant Night Moon Silver Butterfly Pull Necklace', '544-elegant-night-moon-silver-butterfly-pull-necklace', 'Product description here', 69.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('802 Alloy Retro palace style autumn color Set', '802-alloy-retro-palace-style-autumn-color-set', 'Product description here', 32.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('805 Alloy Versatile and Elegant Alien Set', '805-alloy-versatile-and-elegant-alien-set', 'Product description here', 49.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Golden');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('554 Vintage Simple Bully Leopard Head Necklace', '554-vintage-simple-bully-leopard-head-necklace', 'Product description here', 24.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('811 Spring princess simple elagant flower necklace', '811-spring-princess-simple-elagant-flower-necklace', 'Product description here', 36.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('811 Spring princess simple elagant flower necklace', '811-spring-princess-simple-elagant-flower-necklace', 'Product description here', 36.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('811 Spring princess simple elagant flower necklace', '811-spring-princess-simple-elagant-flower-necklace', 'Product description here', 36.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'brown');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('811 Spring princess simple elagant flower necklace', '811-spring-princess-simple-elagant-flower-necklace', 'Product description here', 36.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('815 Fashion Simple Colorful Necklace Set', '815-fashion-simple-colorful-necklace-set', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('816 Exquisite Designs of the Blue Sea Necklace', '816-exquisite-designs-of-the-blue-sea-necklace', 'Product description here', 16.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('568 Ocean blue wave jadeite diamond Necklace', '568-ocean-blue-wave-jadeite-diamond-necklace', 'Product description here', 79.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('569 Red flower blooming beads Necklace', '569-red-flower-blooming-beads-necklace', 'Product description here', 99.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('830 Vintage temperament heavy coral necklace', '830-vintage-temperament-heavy-coral-necklace', 'Product description here', 49.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('578 Gorgeous Galaxy Multi-Layered Necklace', '578-gorgeous-galaxy-multi-layered-necklace', 'Product description here', 149.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('838 Vintage Gorgeous Alice in Wonderland Necklace', '838-vintage-gorgeous-alice-in-wonderland-necklace', 'Product description here', 19.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('843 French Geometric Niche choker Necklace', '843-french-geometric-niche-choker-necklace', 'Product description here', 19.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('333 Egypt Kingsley Vintage Necklace 4 Ways', '333-egypt-kingsley-vintage-necklace-4-ways', 'Product description here', 73.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('591 Rose Golden micropaved coral necklace', '591-rose-golden-micropaved-coral-necklace', 'Product description here', 28.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('592 Red Pink Fan Shadow Colorful Treasure Necklace', '592-red-pink-fan-shadow-colorful-treasure-necklace', 'Product description here', 49.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('594 Advanced pendant necklace', '594-advanced-pendant-necklace', 'Product description here', 23.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('852 Simple Versatile Niche Premium Star River Necklace', '852-simple-versatile-niche-premium-star-river-necklace', 'Product description here', 34.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('853 Luxurious and versatile Crushed Ice Star Necklace', '853-luxurious-and-versatile-crushed-ice-star-necklace', 'Product description here', 55.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('343 Ice Cube Vintage Style Fashion Necklace', '343-ice-cube-vintage-style-fashion-necklace', 'Product description here', 16.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('343 Ice Cube Vintage Style Fashion Necklace', '343-ice-cube-vintage-style-fashion-necklace', 'Product description here', 16.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('343 Ice Cube Vintage Style Fashion Necklace', '343-ice-cube-vintage-style-fashion-necklace', 'Product description here', 16.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Dark Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('343 Ice Cube Vintage Style Fashion Necklace', '343-ice-cube-vintage-style-fashion-necklace', 'Product description here', 16.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Green');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('343 Ice Cube Vintage Style Fashion Necklace', '343-ice-cube-vintage-style-fashion-necklace', 'Product description here', 16.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Sea Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('343 Ice Cube Vintage Style Fashion Necklace', '343-ice-cube-vintage-style-fashion-necklace', 'Product description here', 16.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('601 Palace Deer Shadow Flower Necklace', '601-palace-deer-shadow-flower-necklace', 'Product description here', 36.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('603 Fashionable and Versatile Long Sparkling Colorful Necklace', '603-fashionable-and-versatile-long-sparkling-colorful-necklace', 'Product description here', 39.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('859 Elegant Fairy  Necklace Set', '859-elegant-fairy-necklace-set', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('351 Lightening Shocky Shock Necklace', '351-lightening-shocky-shock-necklace', 'Product description here', 19.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('351 Lightening Shocky Shock Necklace', '351-lightening-shocky-shock-necklace', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('351 Lightening Shocky Shock Necklace', '351-lightening-shocky-shock-necklace', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('351 Lightening Shocky Shock Necklace', '351-lightening-shocky-shock-necklace', 'Product description here', 19.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('609 Vintage Luxury Vintage Necklace', '609-vintage-luxury-vintage-necklace', 'Product description here', 45.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('354 Snow Princess Blue IV Cute Necklace', '354-snow-princess-blue-iv-cute-necklace', 'Product description here', 19.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('610 Alloy Long Vintage Greek Style Chain Necklace', '610-alloy-long-vintage-greek-style-chain-necklace', 'Product description here', 39.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('870 Vintage temperament heavy feather necklace', '870-vintage-temperament-heavy-feather-necklace', 'Product description here', 49.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('362 rainbow girl fashion style necklece', '362-rainbow-girl-fashion-style-necklece', 'Product description here', 49.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('365 Mysterious Halloween Necklace', '365-mysterious-halloween-necklace', 'Product description here', 99.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('365 Mysterious Halloween Necklace', '365-mysterious-halloween-necklace', 'Product description here', 99.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('625 Vintage Multi-Layered Twisted Necklace', '625-vintage-multi-layered-twisted-necklace', 'Product description here', 33.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('629 Egytption Queen Chocker', '629-egytption-queen-chocker', 'Product description here', 35.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('374 Blue rock candy bow alloy necklace', '374-blue-rock-candy-bow-alloy-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('374 Blue rock candy bow alloy necklace', '374-blue-rock-candy-bow-alloy-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('630 Elegant and elegant long pearl necklace', '630-elegant-and-elegant-long-pearl-necklace', 'Product description here', 36.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('375 Everything goes smoothly with a lucky character necklace', '375-everything-goes-smoothly-with-a-lucky-character-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('381 Christmas Double Color Round alloy Necklace', '381-christmas-double-color-round-alloy-necklace', 'Product description here', 34.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('381 Christmas Double Color Round alloy Necklace', '381-christmas-double-color-round-alloy-necklace', 'Product description here', 34.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Long', '44cm');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('381 Christmas Double Color Round alloy Necklace', '381-christmas-double-color-round-alloy-necklace', 'Product description here', 34.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('381 Christmas Double Color Round alloy Necklace', '381-christmas-double-color-round-alloy-necklace', 'Product description here', 34.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Green');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('382 Aurora Shining Candy alloy Necklace', '382-aurora-shining-candy-alloy-necklace', 'Product description here', 20.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('383 Ancient style fashionable alloy necklace', '383-ancient-style-fashionable-alloy-necklace', 'Product description here', 42.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('384 Pure and simple colors alloy necklace', '384-pure-and-simple-colors-alloy-necklace', 'Product description here', 22.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('384 Pure and simple colors alloy necklace', '384-pure-and-simple-colors-alloy-necklace', 'Product description here', 22.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Long', 'Short');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('384 Pure and simple colors alloy necklace', '384-pure-and-simple-colors-alloy-necklace', 'Product description here', 22.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Long', 'Long');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('385 Autumn and Winter Round Rolling Bead alloy Necklace', '385-autumn-and-winter-round-rolling-bead-alloy-necklace', 'Product description here', 18.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('385 Autumn and Winter Round Rolling Bead alloy Necklace', '385-autumn-and-winter-round-rolling-bead-alloy-necklace', 'Product description here', 18.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Long', '50cm');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('385 Autumn and Winter Round Rolling Bead alloy Necklace', '385-autumn-and-winter-round-rolling-bead-alloy-necklace', 'Product description here', 18.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Champagne');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('385 Autumn and Winter Round Rolling Bead alloy Necklace', '385-autumn-and-winter-round-rolling-bead-alloy-necklace', 'Product description here', 18.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'White');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('643 Alloy Lux feather EGYPTION QUEEN Necklace', '643-alloy-lux-feather-egyption-queen-necklace', 'Product description here', 19.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Gemini');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Pisces');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Virgin');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Libra');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Scorpio');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Shooter');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Cancer');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Capricorn');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Water Bottle');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Lion');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Aries');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('388 Twelve Constellations Series alloy Necklace', '388-twelve-constellations-series-alloy-necklace', 'Product description here', 107.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'onstellation', 'Taurus');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('390 Twisted ancient tube alloy choker', '390-twisted-ancient-tube-alloy-choker', 'Product description here', 85.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('390 Twisted ancient tube alloy choker', '390-twisted-ancient-tube-alloy-choker', 'Product description here', 85.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Long', '44cm');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('393 Versatile Layered Colorful Necklace', '393-versatile-layered-colorful-necklace', 'Product description here', 56.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('649 Alloy Inlaid Indian Snake Necklace', '649-alloy-inlaid-indian-snake-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('395 3D Skull Fashion Necklace', '395-3d-skull-fashion-necklace', 'Product description here', 37.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('651 Alloy Double layered irregular starry meteorite Set', '651-alloy-double-layered-irregular-starry-meteorite-set', 'Product description here', 89.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('396 Hip Hop Convex Arrow Necklace', '396-hip-hop-convex-arrow-necklace', 'Product description here', 14.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('652 Alloy Elegant and luxurious retro dreamland tassel set', '652-alloy-elegant-and-luxurious-retro-dreamland-tassel-set', 'Product description here', 49.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('397 Hip Hop Flat Wide Arrow Necklace', '397-hip-hop-flat-wide-arrow-necklace', 'Product description here', 14.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('398 Hip Hop Style Personalized Men\'s Star Necklace', '398-hip-hop-style-personalized-men\'s-star-necklace', 'Product description here', 16.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('657 Colorful Love Language Fine Chain Necklace', '657-colorful-love-language-fine-chain-necklace', 'Product description here', 36.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('402 Hip Hop Cross Men\'s Necklace', '402-hip-hop-cross-men\'s-necklace', 'Product description here', 15.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('403 Chinese style dragon plate sword necklace', '403-chinese-style-dragon-plate-sword-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('403 Chinese style dragon plate sword necklace', '403-chinese-style-dragon-plate-sword-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Purple');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('403 Chinese style dragon plate sword necklace', '403-chinese-style-dragon-plate-sword-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('403 Chinese style dragon plate sword necklace', '403-chinese-style-dragon-plate-sword-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('404 Personalized inlaid leaf Necklace', '404-personalized-inlaid-leaf-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'A');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'B');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'C');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'D');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'E');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'F');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'G');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'H');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'I');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'J');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'K');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'L');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'M');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'N');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'O');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'P');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'Q');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'R');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'S');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'T');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'U');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'V');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'W');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'X');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'Y');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('406 26 letter series necklace', '406-26-letter-series-necklace', 'Product description here', 31.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Letter', 'Z');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('408 Heart shaped patchwork necklace', '408-heart-shaped-patchwork-necklace', 'Product description here', 49.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('408 Heart shaped patchwork necklace', '408-heart-shaped-patchwork-necklace', 'Product description here', 49.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('408 Heart shaped patchwork necklace', '408-heart-shaped-patchwork-necklace', 'Product description here', 49.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('409 Entangled Spirit Domain Snake Necklace', '409-entangled-spirit-domain-snake-necklace', 'Product description here', 46.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('411 Rome Warrior Fashionable Necklace', '411-rome-warrior-fashionable-necklace', 'Product description here', 61.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('412 Vintage Lux Fashion Necklace', '412-vintage-lux-fashion-necklace', 'Product description here', 69.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('413 Xiaoxiangfeng Long Round Bead Necklace', '413-xiaoxiangfeng-long-round-bead-necklace', 'Product description here', 71.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('415 The Eye Fashionable Necklace', '415-the-eye-fashionable-necklace', 'Product description here', 67.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('416 Coral Golden Time Fashion Necklace', '416-coral-golden-time-fashion-necklace', 'Product description here', 19.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('418 Flowery Day Fashionable Necklace', '418-flowery-day-fashionable-necklace', 'Product description here', 17.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('421 Versatile V-shaped Snake Bone Necklace', '421-versatile-v-shaped-snake-bone-necklace', 'Product description here', 51.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('422 Cold Wind Layered Tassel Necklace', '422-cold-wind-layered-tassel-necklace', 'Product description here', 39.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('685 Rainbow Twilight Double Layer Necklace', '685-rainbow-twilight-double-layer-necklace', 'Product description here', 39.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('694 Temperament and Versatile Drunken Hongxia Necklace', '694-temperament-and-versatile-drunken-hongxia-necklace', 'Product description here', 39.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('698 Simple luxury ancient style classical flower necklace', '698-simple-luxury-ancient-style-classical-flower-necklace', 'Product description here', 42.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('703 Fashion Simple Romantic Tassel Multi-Layers Necklace', '703-fashion-simple-romantic-tassel-multi-layers-necklace', 'Product description here', 34.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('705 Luxury Embossed Centaur Reversible Necklace', '705-luxury-embossed-centaur-reversible-necklace', 'Product description here', 17.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('709 Deep Sea Teardrop Bead Necklace', '709-deep-sea-teardrop-bead-necklace', 'Product description here', 55.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('717 HD Luxury Colorful Bracelet', '717-hd-luxury-colorful-bracelet', 'Product description here', 59.00, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('719 sparkling short cross chocker', '719-sparkling-short-cross-chocker', 'Product description here', 19.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('720 Vintage cool stylish temperament necklace', '720-vintage-cool-stylish-temperament-necklace', 'Product description here', 16.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('724 Alloy retro exaggerated multi-layer tassel necklace', '724-alloy-retro-exaggerated-multi-layer-tassel-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('740 thousand threads lingering around alloy necklace', '740-thousand-threads-lingering-around-alloy-necklace', 'Product description here', 39.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('740 thousand threads lingering around alloy necklace', '740-thousand-threads-lingering-around-alloy-necklace', 'Product description here', 39.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('740 thousand threads lingering around alloy necklace', '740-thousand-threads-lingering-around-alloy-necklace', 'Product description here', 39.99, 2, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('743 Elegant plain deep-sea pearl necklace', '743-elegant-plain-deep-sea-pearl-necklace', 'Product description here', 29.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('747 Elegant golden Bead Pendant Classic Necklace', '747-elegant-golden-bead-pendant-classic-necklace', 'Product description here', 39.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('750 Trendy texture multi-layer snake bone necklace', '750-trendy-texture-multi-layer-snake-bone-necklace', 'Product description here', 59.99, 2, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('486 Alloy Vintage Light Luxury Double Winged Open Ring', '486-alloy-vintage-light-luxury-double-winged-open-ring', 'Product description here', 45.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('486 Alloy Vintage Light Luxury Double Winged Open Ring', '486-alloy-vintage-light-luxury-double-winged-open-ring', 'Product description here', 45.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('486 Alloy Vintage Light Luxury Double Winged Open Ring', '486-alloy-vintage-light-luxury-double-winged-open-ring', 'Product description here', 45.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('504 Starry Sky Brilliant Circle Open Ring', '504-starry-sky-brilliant-circle-open-ring', 'Product description here', 16.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('487 Golden FLOWER Vintage Fashionable Ring', '487-golden-flower-vintage-fashionable-ring', 'Product description here', 26.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('488 Attack Red Beehive zircon Ring', '488-attack-red-beehive-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('488 Attack Red Beehive zircon Ring', '488-attack-red-beehive-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '6');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('488 Attack Red Beehive zircon Ring', '488-attack-red-beehive-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('488 Attack Red Beehive zircon Ring', '488-attack-red-beehive-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('492 Rotable Cuban zircon Ring', '492-rotable-cuban-zircon-ring', 'Product description here', 28.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('492 Rotable Cuban zircon Ring', '492-rotable-cuban-zircon-ring', 'Product description here', 28.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('492 Rotable Cuban zircon Ring', '492-rotable-cuban-zircon-ring', 'Product description here', 28.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('492 Rotable Cuban zircon Ring', '492-rotable-cuban-zircon-ring', 'Product description here', 28.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '10');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('494 Light Feather Open Ring', '494-light-feather-open-ring', 'Product description here', 24.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('514 Yellow Sugar Fashion Ring', '514-yellow-sugar-fashion-ring', 'Product description here', 18.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('514 Yellow Sugar Fashion Ring', '514-yellow-sugar-fashion-ring', 'Product description here', 18.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('514 Yellow Sugar Fashion Ring', '514-yellow-sugar-fashion-ring', 'Product description here', 18.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('484 glitzying planet high fashion ring', '484-glitzying-planet-high-fashion-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('496 Love Half Bow Open Ring', '496-love-half-bow-open-ring', 'Product description here', 25.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('433 Butterfly Extra Shinny Vintage Ring', '433-butterfly-extra-shinny-vintage-ring', 'Product description here', 39.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('497 Starry Fashionable Open Ring', '497-starry-fashionable-open-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('502 Curled Leaf Opening Ring', '502-curled-leaf-opening-ring', 'Product description here', 89.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('483 swallow\'s last kiss fashion ring', '483-swallow\'s-last-kiss-fashion-ring', 'Product description here', 58.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('483 swallow\'s last kiss fashion ring', '483-swallow\'s-last-kiss-fashion-ring', 'Product description here', 58.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('483 swallow\'s last kiss fashion ring', '483-swallow\'s-last-kiss-fashion-ring', 'Product description here', 58.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('483 swallow\'s last kiss fashion ring', '483-swallow\'s-last-kiss-fashion-ring', 'Product description here', 58.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('508 Twins Brass With Gcold Plateel Ring', '508-twins-brass-with-gcold-plateel-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('500 French Simple and Exquisite Princess Crown Open Ring', '500-french-simple-and-exquisite-princess-crown-open-ring', 'Product description here', 26.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('499 Red queen alloy Opening Ring', '499-red-queen-alloy-opening-ring', 'Product description here', 17.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('490 Red Snake alloy ring', '490-red-snake-alloy-ring', 'Product description here', 49.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('503 Exquisite Snowflake Sugar Heart Ring', '503-exquisite-snowflake-sugar-heart-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('503 Exquisite Snowflake Sugar Heart Ring', '503-exquisite-snowflake-sugar-heart-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('503 Exquisite Snowflake Sugar Heart Ring', '503-exquisite-snowflake-sugar-heart-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('503 Exquisite Snowflake Sugar Heart Ring', '503-exquisite-snowflake-sugar-heart-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'yellow');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('503 Exquisite Snowflake Sugar Heart Ring', '503-exquisite-snowflake-sugar-heart-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '6');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('503 Exquisite Snowflake Sugar Heart Ring', '503-exquisite-snowflake-sugar-heart-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('503 Exquisite Snowflake Sugar Heart Ring', '503-exquisite-snowflake-sugar-heart-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('512 Vintage Snake Holding Stone Open Ring', '512-vintage-snake-holding-stone-open-ring', 'Product description here', 59.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('513 Gold and silver flowing light minimalist ring', '513-gold-and-silver-flowing-light-minimalist-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('513 Gold and silver flowing light minimalist ring', '513-gold-and-silver-flowing-light-minimalist-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('513 Gold and silver flowing light minimalist ring', '513-gold-and-silver-flowing-light-minimalist-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('794 Alloy antique Light Luxury Vintage Gorgeous Ring', '794-alloy-antique-light-luxury-vintage-gorgeous-ring', 'Product description here', 49.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('800 Alloy Glacier Combination Open Ring', '800-alloy-glacier-combination-open-ring', 'Product description here', 16.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('804 Alloy Hollow Cross Small Flower Open Ring', '804-alloy-hollow-cross-small-flower-open-ring', 'Product description here', 13.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('814 Nest Skeleton Mesh Ring', '814-nest-skeleton-mesh-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('814 Nest Skeleton Mesh Ring', '814-nest-skeleton-mesh-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size6');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('814 Nest Skeleton Mesh Ring', '814-nest-skeleton-mesh-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('814 Nest Skeleton Mesh Ring', '814-nest-skeleton-mesh-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('814 Nest Skeleton Mesh Ring', '814-nest-skeleton-mesh-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('814 Nest Skeleton Mesh Ring', '814-nest-skeleton-mesh-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size10');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('563 Classic gold cast faucet open Ring', '563-classic-gold-cast-faucet-open-ring', 'Product description here', 17.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('824 Fashionable Design Sense Smart Athena Goddess Open Ring', '824-fashionable-design-sense-smart-athena-goddess-open-ring', 'Product description here', 29.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('827 Alloy Rainbow Beauty seasion fashion ring', '827-alloy-rainbow-beauty-seasion-fashion-ring', 'Product description here', 14.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('827 Alloy Rainbow Beauty seasion fashion ring', '827-alloy-rainbow-beauty-seasion-fashion-ring', 'Product description here', 14.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size6');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('827 Alloy Rainbow Beauty seasion fashion ring', '827-alloy-rainbow-beauty-seasion-fashion-ring', 'Product description here', 14.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('827 Alloy Rainbow Beauty seasion fashion ring', '827-alloy-rainbow-beauty-seasion-fashion-ring', 'Product description here', 14.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('827 Alloy Rainbow Beauty seasion fashion ring', '827-alloy-rainbow-beauty-seasion-fashion-ring', 'Product description here', 14.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('827 Alloy Rainbow Beauty seasion fashion ring', '827-alloy-rainbow-beauty-seasion-fashion-ring', 'Product description here', 14.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size10');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('575 Vintage Elegant Two Color Lace Open Ring', '575-vintage-elegant-two-color-lace-open-ring', 'Product description here', 13.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('575 Vintage Elegant Two Color Lace Open Ring', '575-vintage-elegant-two-color-lace-open-ring', 'Product description here', 13.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('575 Vintage Elegant Two Color Lace Open Ring', '575-vintage-elegant-two-color-lace-open-ring', 'Product description here', 13.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('580 Inlaid triangular opening ring', '580-inlaid-triangular-opening-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('839 Fashion Gorgeous Atmosphere Vine Open Ring', '839-fashion-gorgeous-atmosphere-vine-open-ring', 'Product description here', 55.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('587 Fantasy Colorful Fashion Ring', '587-fantasy-colorful-fashion-ring', 'Product description here', 79.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('587 Fantasy Colorful Fashion Ring', '587-fantasy-colorful-fashion-ring', 'Product description here', 79.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', '5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('587 Fantasy Colorful Fashion Ring', '587-fantasy-colorful-fashion-ring', 'Product description here', 79.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', '6');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('587 Fantasy Colorful Fashion Ring', '587-fantasy-colorful-fashion-ring', 'Product description here', 79.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', '7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('587 Fantasy Colorful Fashion Ring', '587-fantasy-colorful-fashion-ring', 'Product description here', 79.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', '7.5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('587 Fantasy Colorful Fashion Ring', '587-fantasy-colorful-fashion-ring', 'Product description here', 79.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('587 Fantasy Colorful Fashion Ring', '587-fantasy-colorful-fashion-ring', 'Product description here', 79.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', '9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('849 Vintage Courtly Elegant Dreamy Smog Ring', '849-vintage-courtly-elegant-dreamy-smog-ring', 'Product description here', 25.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('849 Vintage Courtly Elegant Dreamy Smog Ring', '849-vintage-courtly-elegant-dreamy-smog-ring', 'Product description here', 25.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size6');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('849 Vintage Courtly Elegant Dreamy Smog Ring', '849-vintage-courtly-elegant-dreamy-smog-ring', 'Product description here', 25.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('849 Vintage Courtly Elegant Dreamy Smog Ring', '849-vintage-courtly-elegant-dreamy-smog-ring', 'Product description here', 25.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('605 Abyssal Blue Treasure Mountain Peak Ring', '605-abyssal-blue-treasure-mountain-peak-ring', 'Product description here', 89.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('605 Abyssal Blue Treasure Mountain Peak Ring', '605-abyssal-blue-treasure-mountain-peak-ring', 'Product description here', 89.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('605 Abyssal Blue Treasure Mountain Peak Ring', '605-abyssal-blue-treasure-mountain-peak-ring', 'Product description here', 89.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size6');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('605 Abyssal Blue Treasure Mountain Peak Ring', '605-abyssal-blue-treasure-mountain-peak-ring', 'Product description here', 89.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('605 Abyssal Blue Treasure Mountain Peak Ring', '605-abyssal-blue-treasure-mountain-peak-ring', 'Product description here', 89.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7.5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('605 Abyssal Blue Treasure Mountain Peak Ring', '605-abyssal-blue-treasure-mountain-peak-ring', 'Product description here', 89.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('605 Abyssal Blue Treasure Mountain Peak Ring', '605-abyssal-blue-treasure-mountain-peak-ring', 'Product description here', 89.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('866 HD Rectangle temperament high-end feeling Ring', '866-hd-rectangle-temperament-high-end-feeling-ring', 'Product description here', 55.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('866 HD Rectangle temperament high-end feeling Ring', '866-hd-rectangle-temperament-high-end-feeling-ring', 'Product description here', 55.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('866 HD Rectangle temperament high-end feeling Ring', '866-hd-rectangle-temperament-high-end-feeling-ring', 'Product description here', 55.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('627 Temperament light luxury sparkling star open ring', '627-temperament-light-luxury-sparkling-star-open-ring', 'Product description here', 69.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('628 Aalloy French Classic Snake Print Open Ring', '628-aalloy-french-classic-snake-print-open-ring', 'Product description here', 14.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('633 Golden Cracked Silver Flower Open Ring', '633-golden-cracked-silver-flower-open-ring', 'Product description here', 16.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('645 Vintage European Court Style Castle Sanctuary Ring', '645-vintage-european-court-style-castle-sanctuary-ring', 'Product description here', 75.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('645 Vintage European Court Style Castle Sanctuary Ring', '645-vintage-european-court-style-castle-sanctuary-ring', 'Product description here', 75.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('645 Vintage European Court Style Castle Sanctuary Ring', '645-vintage-european-court-style-castle-sanctuary-ring', 'Product description here', 75.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('648 Alloy Aristocratic classical lingering hollow Set', '648-alloy-aristocratic-classical-lingering-hollow-set', 'Product description here', 139.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('660 Fashionable and Elegant Men\'s Ring', '660-fashionable-and-elegant-men\'s-ring', 'Product description here', 63.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('660 Fashionable and Elegant Men\'s Ring', '660-fashionable-and-elegant-men\'s-ring', 'Product description here', 63.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('660 Fashionable and Elegant Men\'s Ring', '660-fashionable-and-elegant-men\'s-ring', 'Product description here', 63.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'size7.5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('660 Fashionable and Elegant Men\'s Ring', '660-fashionable-and-elegant-men\'s-ring', 'Product description here', 63.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('660 Fashionable and Elegant Men\'s Ring', '660-fashionable-and-elegant-men\'s-ring', 'Product description here', 63.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'size9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('660 Fashionable and Elegant Men\'s Ring', '660-fashionable-and-elegant-men\'s-ring', 'Product description here', 63.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'CARAT', '1carat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('660 Fashionable and Elegant Men\'s Ring', '660-fashionable-and-elegant-men\'s-ring', 'Product description here', 63.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'CARAT', '2carat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('665 Gradient Dream Crystal Wide Ring', '665-gradient-dream-crystal-wide-ring', 'Product description here', 49.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('665 Gradient Dream Crystal Wide Ring', '665-gradient-dream-crystal-wide-ring', 'Product description here', 49.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('665 Gradient Dream Crystal Wide Ring', '665-gradient-dream-crystal-wide-ring', 'Product description here', 49.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7.5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('665 Gradient Dream Crystal Wide Ring', '665-gradient-dream-crystal-wide-ring', 'Product description here', 49.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('668 Alloy Blue Ice Light Square Ring', '668-alloy-blue-ice-light-square-ring', 'Product description here', 36.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('669 Colorful Rainbow Stone Inlaid Ring', '669-colorful-rainbow-stone-inlaid-ring', 'Product description here', 42.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('669 Colorful Rainbow Stone Inlaid Ring', '669-colorful-rainbow-stone-inlaid-ring', 'Product description here', 42.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('669 Colorful Rainbow Stone Inlaid Ring', '669-colorful-rainbow-stone-inlaid-ring', 'Product description here', 42.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7.5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('669 Colorful Rainbow Stone Inlaid Ring', '669-colorful-rainbow-stone-inlaid-ring', 'Product description here', 42.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('672 HD Little Flying Dragon Ring', '672-hd-little-flying-dragon-ring', 'Product description here', 69.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('672 HD Little Flying Dragon Ring', '672-hd-little-flying-dragon-ring', 'Product description here', 69.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('672 HD Little Flying Dragon Ring', '672-hd-little-flying-dragon-ring', 'Product description here', 69.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('675 Gradient Shadow Colorful Wave Ring', '675-gradient-shadow-colorful-wave-ring', 'Product description here', 48.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('675 Gradient Shadow Colorful Wave Ring', '675-gradient-shadow-colorful-wave-ring', 'Product description here', 48.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('675 Gradient Shadow Colorful Wave Ring', '675-gradient-shadow-colorful-wave-ring', 'Product description here', 48.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'size7.5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('675 Gradient Shadow Colorful Wave Ring', '675-gradient-shadow-colorful-wave-ring', 'Product description here', 48.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('426 Classic Timeless Vintage Fashionable Ring', '426-classic-timeless-vintage-fashionable-ring', 'Product description here', 23.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('427 925 Water Lotus Vintage Ring', '427-925-water-lotus-vintage-ring', 'Product description here', 25.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('431 Vintage Red Queen Style Fashionable Ring', '431-vintage-red-queen-style-fashionable-ring', 'Product description here', 72.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('431 Vintage Red Queen Style Fashionable Ring', '431-vintage-red-queen-style-fashionable-ring', 'Product description here', 72.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '6');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('431 Vintage Red Queen Style Fashionable Ring', '431-vintage-red-queen-style-fashionable-ring', 'Product description here', 72.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('431 Vintage Red Queen Style Fashionable Ring', '431-vintage-red-queen-style-fashionable-ring', 'Product description here', 72.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('690 Jade Dream Light Luxury Ring', '690-jade-dream-light-luxury-ring', 'Product description here', 46.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('690 Jade Dream Light Luxury Ring', '690-jade-dream-light-luxury-ring', 'Product description here', 46.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('690 Jade Dream Light Luxury Ring', '690-jade-dream-light-luxury-ring', 'Product description here', 46.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size7.5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('690 Jade Dream Light Luxury Ring', '690-jade-dream-light-luxury-ring', 'Product description here', 46.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('435 gemini heart vintage ring', '435-gemini-heart-vintage-ring', 'Product description here', 54.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('713 Brilliant Water Drops Feather Opening Ring', '713-brilliant-water-drops-feather-opening-ring', 'Product description here', 17.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('714 Flower Blooming Diamond Finger Ring', '714-flower-blooming-diamond-finger-ring', 'Product description here', 29.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('714 Flower Blooming Diamond Finger Ring', '714-flower-blooming-diamond-finger-ring', 'Product description here', 29.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'size7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('714 Flower Blooming Diamond Finger Ring', '714-flower-blooming-diamond-finger-ring', 'Product description here', 29.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'size7.5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('730 Sea Moon Opening Ring', '730-sea-moon-opening-ring', 'Product description here', 16.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('734 French Elegance Classic Vine Open ring', '734-french-elegance-classic-vine-open-ring', 'Product description here', 69.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('738 Brilliant gemstone inlaid fashion Ring', '738-brilliant-gemstone-inlaid-fashion-ring', 'Product description here', 39.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('738 Brilliant gemstone inlaid fashion Ring', '738-brilliant-gemstone-inlaid-fashion-ring', 'Product description here', 39.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'Size-7(54mm)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('738 Brilliant gemstone inlaid fashion Ring', '738-brilliant-gemstone-inlaid-fashion-ring', 'Product description here', 39.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'Size-7.5(57mm)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('738 Brilliant gemstone inlaid fashion Ring', '738-brilliant-gemstone-inlaid-fashion-ring', 'Product description here', 39.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'SIZE', 'Size-8(59mm)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('739 Square badge opening ring', '739-square-badge-opening-ring', 'Product description here', 13.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('746 Moon shaped Cuban ring', '746-moon-shaped-cuban-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('746 Moon shaped Cuban ring', '746-moon-shaped-cuban-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'Size7（55mm）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('746 Moon shaped Cuban ring', '746-moon-shaped-cuban-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'Size8（57mm）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('746 Moon shaped Cuban ring', '746-moon-shaped-cuban-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'Size9（59mm）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('746 Moon shaped Cuban ring', '746-moon-shaped-cuban-ring', 'Product description here', 19.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'Size10（62mm）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('491 Simple T-square zircon ring', '491-simple-t-square-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('491 Simple T-square zircon ring', '491-simple-t-square-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'yellow');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('491 Simple T-square zircon ring', '491-simple-t-square-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('491 Simple T-square zircon ring', '491-simple-t-square-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('491 Simple T-square zircon ring', '491-simple-t-square-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('491 Simple T-square zircon ring', '491-simple-t-square-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('491 Simple T-square zircon ring', '491-simple-t-square-zircon-ring', 'Product description here', 21.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', '10');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('748 Creative Modern Micropavé Square Ring', '748-creative-modern-micropavé-square-ring', 'Product description here', 12.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('748 Creative Modern Micropavé Square Ring', '748-creative-modern-micropavé-square-ring', 'Product description here', 12.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'Size-6(52mm)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('748 Creative Modern Micropavé Square Ring', '748-creative-modern-micropavé-square-ring', 'Product description here', 12.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'Size-7(55mm)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('748 Creative Modern Micropavé Square Ring', '748-creative-modern-micropavé-square-ring', 'Product description here', 12.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'Size-8(58mm)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('748 Creative Modern Micropavé Square Ring', '748-creative-modern-micropavé-square-ring', 'Product description here', 12.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'Size-9(60mm)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('748 Creative Modern Micropavé Square Ring', '748-creative-modern-micropavé-square-ring', 'Product description here', 12.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'Size-10(62mm)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('495 Exquisitely crafted old alloy ring', '495-exquisitely-crafted-old-alloy-ring', 'Product description here', 35.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('498 Beautiful Heart shaped Open Ring', '498-beautiful-heart-shaped-open-ring', 'Product description here', 16.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('501 Full set dual color flower Ring', '501-full-set-dual-color-flower-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('501 Full set dual color flower Ring', '501-full-set-dual-color-flower-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '6');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('501 Full set dual color flower Ring', '501-full-set-dual-color-flower-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('501 Full set dual color flower Ring', '501-full-set-dual-color-flower-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '7.5');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('501 Full set dual color flower Ring', '501-full-set-dual-color-flower-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('501 Full set dual color flower Ring', '501-full-set-dual-color-flower-ring', 'Product description here', 129.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('506 Hip Hop Style Inlaid Double Finger Ring', '506-hip-hop-style-inlaid-double-finger-ring', 'Product description here', 29.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('507 Queen Red Fashionable Ring', '507-queen-red-fashionable-ring', 'Product description here', 18.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('509 Ring of must', '509-ring-of-must', 'Product description here', 27.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('509 Ring of must', '509-ring-of-must', 'Product description here', 27.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('509 Ring of must', '509-ring-of-must', 'Product description here', 27.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('510 Deep Dark', '510-deep-dark', 'Product description here', 18.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('510 Deep Dark', '510-deep-dark', 'Product description here', 18.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('510 Deep Dark', '510-deep-dark', 'Product description here', 18.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('510 Deep Dark', '510-deep-dark', 'Product description here', 18.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '10');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('511 European and American multi faceted diamond ring', '511-european-and-american-multi-faceted-diamond-ring', 'Product description here', 39.99, 3, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('511 European and American multi faceted diamond ring', '511-european-and-american-multi-faceted-diamond-ring', 'Product description here', 39.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('511 European and American multi faceted diamond ring', '511-european-and-american-multi-faceted-diamond-ring', 'Product description here', 39.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'chamgpagne');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('511 European and American multi faceted diamond ring', '511-european-and-american-multi-faceted-diamond-ring', 'Product description here', 39.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('511 European and American multi faceted diamond ring', '511-european-and-american-multi-faceted-diamond-ring', 'Product description here', 39.99, 3, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', '9');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('452 Autumn Green alloy necklace Set', '452-autumn-green-alloy-necklace-set', 'Product description here', 42.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('452 Autumn Green alloy necklace Set', '452-autumn-green-alloy-necklace-set', 'Product description here', 42.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('439 Gentle Rose Fashionable zircon necklace Set', '439-gentle-rose-fashionable-zircon-necklace-set', 'Product description here', 35.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('439 Gentle Rose Fashionable zircon necklace Set', '439-gentle-rose-fashionable-zircon-necklace-set', 'Product description here', 35.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('461 Elegant Princess Holiday necklace Set', '461-elegant-princess-holiday-necklace-set', 'Product description here', 34.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('461 Elegant Princess Holiday necklace Set', '461-elegant-princess-holiday-necklace-set', 'Product description here', 34.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('461 Elegant Princess Holiday necklace Set', '461-elegant-princess-holiday-necklace-set', 'Product description here', 34.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('461 Elegant Princess Holiday necklace Set', '461-elegant-princess-holiday-necklace-set', 'Product description here', 34.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('430 Zircon necklace Brilliant Rock Candy Set', '430-zircon-necklace-brilliant-rock-candy-set', 'Product description here', 28.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('430 Zircon necklace Brilliant Rock Candy Set', '430-zircon-necklace-brilliant-rock-candy-set', 'Product description here', 28.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Pink(Earrings+Necklace+Bracelet)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('430 Zircon necklace Brilliant Rock Candy Set', '430-zircon-necklace-brilliant-rock-candy-set', 'Product description here', 28.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Green(Earrings+Necklace+Bracelet)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('455 Clear Fruit Color Square Splice alloy Set', '455-clear-fruit-color-square-splice-alloy-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('455 Clear Fruit Color Square Splice alloy Set', '455-clear-fruit-color-square-splice-alloy-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('379 Egyption Queen Diva EXTRA Fab Vintage Fashion Elegant Set', '379-egyption-queen-diva-extra-fab-vintage-fashion-elegant-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('379 Egyption Queen Diva EXTRA Fab Vintage Fashion Elegant Set', '379-egyption-queen-diva-extra-fab-vintage-fashion-elegant-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('379 Egyption Queen Diva EXTRA Fab Vintage Fashion Elegant Set', '379-egyption-queen-diva-extra-fab-vintage-fashion-elegant-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('379 Egyption Queen Diva EXTRA Fab Vintage Fashion Elegant Set', '379-egyption-queen-diva-extra-fab-vintage-fashion-elegant-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('379 Egyption Queen Diva EXTRA Fab Vintage Fashion Elegant Set', '379-egyption-queen-diva-extra-fab-vintage-fashion-elegant-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('428 Waving leaves french style set', '428-waving-leaves-french-style-set', 'Product description here', 47.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('428 Waving leaves french style set', '428-waving-leaves-french-style-set', 'Product description here', 47.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('428 Waving leaves french style set', '428-waving-leaves-french-style-set', 'Product description here', 47.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('428 Waving leaves french style set', '428-waving-leaves-french-style-set', 'Product description here', 47.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('432 alloy zircon necklace Retro Dream Style Rainbow Set', '432-alloy-zircon-necklace-retro-dream-style-rainbow-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('432 alloy zircon necklace Retro Dream Style Rainbow Set', '432-alloy-zircon-necklace-retro-dream-style-rainbow-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('432 alloy zircon necklace Retro Dream Style Rainbow Set', '432-alloy-zircon-necklace-retro-dream-style-rainbow-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('432 alloy zircon necklace Retro Dream Style Rainbow Set', '432-alloy-zircon-necklace-retro-dream-style-rainbow-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('432 alloy zircon necklace Retro Dream Style Rainbow Set', '432-alloy-zircon-necklace-retro-dream-style-rainbow-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('432 alloy zircon necklace Retro Dream Style Rainbow Set', '432-alloy-zircon-necklace-retro-dream-style-rainbow-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('454 Middle ancient micro inlaid irregular flowers alloy necklace set', '454-middle-ancient-micro-inlaid-irregular-flowers-alloy-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('454 Middle ancient micro inlaid irregular flowers alloy necklace set', '454-middle-ancient-micro-inlaid-irregular-flowers-alloy-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('454 Middle ancient micro inlaid irregular flowers alloy necklace set', '454-middle-ancient-micro-inlaid-irregular-flowers-alloy-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('454 Middle ancient micro inlaid irregular flowers alloy necklace set', '454-middle-ancient-micro-inlaid-irregular-flowers-alloy-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('457 Design Sensory Blossom Blossom Set', '457-design-sensory-blossom-blossom-set', 'Product description here', 99.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('457 Design Sensory Blossom Blossom Set', '457-design-sensory-blossom-blossom-set', 'Product description here', 99.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('457 Design Sensory Blossom Blossom Set', '457-design-sensory-blossom-blossom-set', 'Product description here', 99.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('457 Design Sensory Blossom Blossom Set', '457-design-sensory-blossom-blossom-set', 'Product description here', 99.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('443 alloy niche woven plain necklace set', '443-alloy-niche-woven-plain-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('443 alloy niche woven plain necklace set', '443-alloy-niche-woven-plain-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('474 Ethnic Style Exaggerated Chain Set', '474-ethnic-style-exaggerated-chain-set', 'Product description here', 99.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('474 Ethnic Style Exaggerated Chain Set', '474-ethnic-style-exaggerated-chain-set', 'Product description here', 99.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('473 French Romantic Rose Snake Bone Chain Set', '473-french-romantic-rose-snake-bone-chain-set', 'Product description here', 24.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('473 French Romantic Rose Snake Bone Chain Set', '473-french-romantic-rose-snake-bone-chain-set', 'Product description here', 24.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('489 Golden Time Chain Set', '489-golden-time-chain-set', 'Product description here', 24.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('489 Golden Time Chain Set', '489-golden-time-chain-set', 'Product description here', 24.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Set-Gold(Necklace+Bracelet)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('489 Golden Time Chain Set', '489-golden-time-chain-set', 'Product description here', 24.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Set-Silver(Necklace+Bracelet)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('482 Forest Light and Shadow Flashing Set', '482-forest-light-and-shadow-flashing-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('482 Forest Light and Shadow Flashing Set', '482-forest-light-and-shadow-flashing-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('557 Luxurious and versatile necklace', '557-luxurious-and-versatile-necklace', 'Product description here', 15.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'classification', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'classification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'classification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'purple');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('515 Egyptian Cubic Antique style Necklace Set', '515-egyptian-cubic-antique-style-necklace-set', 'Product description here', 186.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('515 Egyptian Cubic Antique style Necklace Set', '515-egyptian-cubic-antique-style-necklace-set', 'Product description here', 186.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace+Bracelet+Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('515 Egyptian Cubic Antique style Necklace Set', '515-egyptian-cubic-antique-style-necklace-set', 'Product description here', 186.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('515 Egyptian Cubic Antique style Necklace Set', '515-egyptian-cubic-antique-style-necklace-set', 'Product description here', 186.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('515 Egyptian Cubic Antique style Necklace Set', '515-egyptian-cubic-antique-style-necklace-set', 'Product description here', 186.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('516 Advanced Fantasy Butterfly brooch Set', '516-advanced-fantasy-butterfly-brooch-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('517 Fashion Sparkling Broken Brick Necklace Set', '517-fashion-sparkling-broken-brick-necklace-set', 'Product description here', 16.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('517 Fashion Sparkling Broken Brick Necklace Set', '517-fashion-sparkling-broken-brick-necklace-set', 'Product description here', 16.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Gold(Necklace+Bracelet)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('517 Fashion Sparkling Broken Brick Necklace Set', '517-fashion-sparkling-broken-brick-necklace-set', 'Product description here', 16.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Silver(Necklace+Bracelet)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('523 HD Universe Queen Fashionable Set', '523-hd-universe-queen-fashionable-set', 'Product description here', 138.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('523 HD Universe Queen Fashionable Set', '523-hd-universe-queen-fashionable-set', 'Product description here', 138.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clips+Rings(size 9)+Necklaces');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('523 HD Universe Queen Fashionable Set', '523-hd-universe-queen-fashionable-set', 'Product description here', 138.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear slaps+Ring(size 7)+Necklaces');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('523 HD Universe Queen Fashionable Set', '523-hd-universe-queen-fashionable-set', 'Product description here', 138.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear slaps');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('523 HD Universe Queen Fashionable Set', '523-hd-universe-queen-fashionable-set', 'Product description here', 138.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clips');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('523 HD Universe Queen Fashionable Set', '523-hd-universe-queen-fashionable-set', 'Product description here', 138.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Rings(size 7)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('523 HD Universe Queen Fashionable Set', '523-hd-universe-queen-fashionable-set', 'Product description here', 138.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Rings(size 9)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('523 HD Universe Queen Fashionable Set', '523-hd-universe-queen-fashionable-set', 'Product description here', 138.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklaces');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('524 Pink Dream of Vintage', '524-pink-dream-of-vintage', 'Product description here', 197.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('524 Pink Dream of Vintage', '524-pink-dream-of-vintage', 'Product description here', 197.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace+Ear Beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('524 Pink Dream of Vintage', '524-pink-dream-of-vintage', 'Product description here', 197.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace+Ear Clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('524 Pink Dream of Vintage', '524-pink-dream-of-vintage', 'Product description here', 197.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('524 Pink Dream of Vintage', '524-pink-dream-of-vintage', 'Product description here', 197.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('524 Pink Dream of Vintage', '524-pink-dream-of-vintage', 'Product description here', 197.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('780 Vintage Temperament Heavy Duty Classic Snake Bone Necklace Set', '780-vintage-temperament-heavy-duty-classic-snake-bone-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('780 Vintage Temperament Heavy Duty Classic Snake Bone Necklace Set', '780-vintage-temperament-heavy-duty-classic-snake-bone-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('780 Vintage Temperament Heavy Duty Classic Snake Bone Necklace Set', '780-vintage-temperament-heavy-duty-classic-snake-bone-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('780 Vintage Temperament Heavy Duty Classic Snake Bone Necklace Set', '780-vintage-temperament-heavy-duty-classic-snake-bone-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('780 Vintage Temperament Heavy Duty Classic Snake Bone Necklace Set', '780-vintage-temperament-heavy-duty-classic-snake-bone-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set1（earrings+necklace）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('780 Vintage Temperament Heavy Duty Classic Snake Bone Necklace Set', '780-vintage-temperament-heavy-duty-classic-snake-bone-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set2（earrings+necklace+bracelet）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('525 FIREWORK Fashionable Brooch', '525-firework-fashionable-brooch', 'Product description here', 89.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('526 Romantic rose Lux', '526-romantic-rose-lux', 'Product description here', 273.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('526 Romantic rose Lux', '526-romantic-rose-lux', 'Product description here', 273.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip+Brooch+Ring(size 9)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('526 Romantic rose Lux', '526-romantic-rose-lux', 'Product description here', 273.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip+Brooch+Ring(size 7)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('526 Romantic rose Lux', '526-romantic-rose-lux', 'Product description here', 273.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('526 Romantic rose Lux', '526-romantic-rose-lux', 'Product description here', 273.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('526 Romantic rose Lux', '526-romantic-rose-lux', 'Product description here', 273.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ring(size 7)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('526 Romantic rose Lux', '526-romantic-rose-lux', 'Product description here', 273.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ring(size 9)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('527 victoria acient vintage set', '527-victoria-acient-vintage-set', 'Product description here', 178.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('527 victoria acient vintage set', '527-victoria-acient-vintage-set', 'Product description here', 178.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('527 victoria acient vintage set', '527-victoria-acient-vintage-set', 'Product description here', 178.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear studs');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('783 Alloy green step a lotus necklace set', '783-alloy-green-step-a-lotus-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('528 Zebra Elegant', '528-zebra-elegant', 'Product description here', 295.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('528 Zebra Elegant', '528-zebra-elegant', 'Product description here', 295.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace+Bracelet+Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('528 Zebra Elegant', '528-zebra-elegant', 'Product description here', 295.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace+Bracelet+Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('528 Zebra Elegant', '528-zebra-elegant', 'Product description here', 295.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('528 Zebra Elegant', '528-zebra-elegant', 'Product description here', 295.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('528 Zebra Elegant', '528-zebra-elegant', 'Product description here', 295.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('528 Zebra Elegant', '528-zebra-elegant', 'Product description here', 295.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'other', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'other', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('784 Vintage Heavy Duty Ornate Star Necklace Set', '784-vintage-heavy-duty-ornate-star-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'other', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('529 Kings Queen love', '529-kings-queen-love', 'Product description here', 175.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('529 Kings Queen love', '529-kings-queen-love', 'Product description here', 175.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Brooch+Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('529 Kings Queen love', '529-kings-queen-love', 'Product description here', 175.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Brooch+Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('529 Kings Queen love', '529-kings-queen-love', 'Product description here', 175.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('529 Kings Queen love', '529-kings-queen-love', 'Product description here', 175.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('529 Kings Queen love', '529-kings-queen-love', 'Product description here', 175.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace+bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('530 Christoper lux', '530-christoper-lux', 'Product description here', 155.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('530 Christoper lux', '530-christoper-lux', 'Product description here', 155.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('530 Christoper lux', '530-christoper-lux', 'Product description here', 155.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('530 Christoper lux', '530-christoper-lux', 'Product description here', 155.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('787 Alloy Blue Aurora Sparkling Necklace Set', '787-alloy-blue-aurora-sparkling-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('532 HD 3D Pink Fashionable Set', '532-hd-3d-pink-fashionable-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('532 HD 3D Pink Fashionable Set', '532-hd-3d-pink-fashionable-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('532 HD 3D Pink Fashionable Set', '532-hd-3d-pink-fashionable-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('532 HD 3D Pink Fashionable Set', '532-hd-3d-pink-fashionable-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('532 HD 3D Pink Fashionable Set', '532-hd-3d-pink-fashionable-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace+Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('532 HD 3D Pink Fashionable Set', '532-hd-3d-pink-fashionable-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace+Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('533 HD maple queeny eleganza lux Set(custome design)', '533-hd-maple-queeny-eleganza-lux-set(custome-design)', 'Product description here', 79.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('533 HD maple queeny eleganza lux Set(custome design)', '533-hd-maple-queeny-eleganza-lux-set(custome-design)', 'Product description here', 79.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('533 HD maple queeny eleganza lux Set(custome design)', '533-hd-maple-queeny-eleganza-lux-set(custome-design)', 'Product description here', 79.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('533 HD maple queeny eleganza lux Set(custome design)', '533-hd-maple-queeny-eleganza-lux-set(custome-design)', 'Product description here', 79.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('533 HD maple queeny eleganza lux Set(custome design)', '533-hd-maple-queeny-eleganza-lux-set(custome-design)', 'Product description here', 79.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace+Ear clip');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('533 HD maple queeny eleganza lux Set(custome design)', '533-hd-maple-queeny-eleganza-lux-set(custome-design)', 'Product description here', 79.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace+Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('534 maple princessy lux Set(custume design)', '534-maple-princessy-lux-set(custume-design)', 'Product description here', 82.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('534 maple princessy lux Set(custume design)', '534-maple-princessy-lux-set(custume-design)', 'Product description here', 82.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('534 maple princessy lux Set(custume design)', '534-maple-princessy-lux-set(custume-design)', 'Product description here', 82.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('534 maple princessy lux Set(custume design)', '534-maple-princessy-lux-set(custume-design)', 'Product description here', 82.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace+Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('535 luxury pinky elegant necklace(Custome Design)', '535-luxury-pinky-elegant-necklace(custome-design)', 'Product description here', 109.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('535 luxury pinky elegant necklace(Custome Design)', '535-luxury-pinky-elegant-necklace(custome-design)', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('535 luxury pinky elegant necklace(Custome Design)', '535-luxury-pinky-elegant-necklace(custome-design)', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('535 luxury pinky elegant necklace(Custome Design)', '535-luxury-pinky-elegant-necklace(custome-design)', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('535 luxury pinky elegant necklace(Custome Design)', '535-luxury-pinky-elegant-necklace(custome-design)', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('535 luxury pinky elegant necklace(Custome Design)', '535-luxury-pinky-elegant-necklace(custome-design)', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('792 Antique Blue Glitter Enamel snake Set', '792-antique-blue-glitter-enamel-snake-set', 'Product description here', 45.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('537 HD European and American court ethnic color Set', '537-hd-european-and-american-court-ethnic-color-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('537 HD European and American court ethnic color Set', '537-hd-european-and-american-court-ethnic-color-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('537 HD European and American court ethnic color Set', '537-hd-european-and-american-court-ethnic-color-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('537 HD European and American court ethnic color Set', '537-hd-european-and-american-court-ethnic-color-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ring(size 9)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('537 HD European and American court ethnic color Set', '537-hd-european-and-american-court-ethnic-color-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('537 HD European and American court ethnic color Set', '537-hd-european-and-american-court-ethnic-color-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Ear beat+Necklace+Ring(size 9)+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('539 Simple and elegant temperament fireworks streamer set', '539-simple-and-elegant-temperament-fireworks-streamer-set', 'Product description here', 28.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace+bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('796 Alloy Violet Banquet Star Set', '796-alloy-violet-banquet-star-set', 'Product description here', 36.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('542 versatile and elegant sparkling moonlight set', '542-versatile-and-elegant-sparkling-moonlight-set', 'Product description here', 56.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('542 versatile and elegant sparkling moonlight set', '542-versatile-and-elegant-sparkling-moonlight-set', 'Product description here', 56.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('542 versatile and elegant sparkling moonlight set', '542-versatile-and-elegant-sparkling-moonlight-set', 'Product description here', 56.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('542 versatile and elegant sparkling moonlight set', '542-versatile-and-elegant-sparkling-moonlight-set', 'Product description here', 56.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Specification', 'set(earrings+necklace)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('543 European court temperament blooming ripple suit', '543-european-court-temperament-blooming-ripple-suit', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('543 European court temperament blooming ripple suit', '543-european-court-temperament-blooming-ripple-suit', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('543 European court temperament blooming ripple suit', '543-european-court-temperament-blooming-ripple-suit', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('543 European court temperament blooming ripple suit', '543-european-court-temperament-blooming-ripple-suit', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set(earrings+necklace)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('801 Alloy Retro palace style premium carp joy set', '801-alloy-retro-palace-style-premium-carp-joy-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('801 Alloy Retro palace style premium carp joy set', '801-alloy-retro-palace-style-premium-carp-joy-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('801 Alloy Retro palace style premium carp joy set', '801-alloy-retro-palace-style-premium-carp-joy-set', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('546 Noble Gloss Charm Fashion Set', '546-noble-gloss-charm-fashion-set', 'Product description here', 36.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('547 Stylish&exquisitely sparkling aurora set', '547-stylish&exquisitely-sparkling-aurora-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('547 Stylish&exquisitely sparkling aurora set', '547-stylish&exquisitely-sparkling-aurora-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('547 Stylish&exquisitely sparkling aurora set', '547-stylish&exquisitely-sparkling-aurora-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('547 Stylish&exquisitely sparkling aurora set', '547-stylish&exquisitely-sparkling-aurora-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('803 Alloy Vintage Lion Head fashionable Set', '803-alloy-vintage-lion-head-fashionable-set', 'Product description here', 63.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('549 Extrmely shining silver necklace Set', '549-extrmely-shining-silver-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('549 Extrmely shining silver necklace Set', '549-extrmely-shining-silver-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size 6');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('549 Extrmely shining silver necklace Set', '549-extrmely-shining-silver-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size 7');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('549 Extrmely shining silver necklace Set', '549-extrmely-shining-silver-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'size', 'size 8');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('805 Alloy Versatile and Elegant Alien Set', '805-alloy-versatile-and-elegant-alien-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('806 Alloy Heavy duty vintage large lion Set', '806-alloy-heavy-duty-vintage-large-lion-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('806 Alloy Heavy duty vintage large lion Set', '806-alloy-heavy-duty-vintage-large-lion-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('806 Alloy Heavy duty vintage large lion Set', '806-alloy-heavy-duty-vintage-large-lion-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('806 Alloy Heavy duty vintage large lion Set', '806-alloy-heavy-duty-vintage-large-lion-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('551 Vintage Fashionable Exquisite Butterfly Colorful Set', '551-vintage-fashionable-exquisite-butterfly-colorful-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('551 Vintage Fashionable Exquisite Butterfly Colorful Set', '551-vintage-fashionable-exquisite-butterfly-colorful-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('551 Vintage Fashionable Exquisite Butterfly Colorful Set', '551-vintage-fashionable-exquisite-butterfly-colorful-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('551 Vintage Fashionable Exquisite Butterfly Colorful Set', '551-vintage-fashionable-exquisite-butterfly-colorful-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Golden');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('809 Alloy Temperament Minimalist Meteor Drop Necklace Set', '809-alloy-temperament-minimalist-meteor-drop-necklace-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('809 Alloy Temperament Minimalist Meteor Drop Necklace Set', '809-alloy-temperament-minimalist-meteor-drop-necklace-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('809 Alloy Temperament Minimalist Meteor Drop Necklace Set', '809-alloy-temperament-minimalist-meteor-drop-necklace-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('809 Alloy Temperament Minimalist Meteor Drop Necklace Set', '809-alloy-temperament-minimalist-meteor-drop-necklace-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('556 Stylish Premium Inlaid Lion\'s Head Set', '556-stylish-premium-inlaid-lion\'s-head-set', 'Product description here', 15.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('556 Stylish Premium Inlaid Lion\'s Head Set', '556-stylish-premium-inlaid-lion\'s-head-set', 'Product description here', 15.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('556 Stylish Premium Inlaid Lion\'s Head Set', '556-stylish-premium-inlaid-lion\'s-head-set', 'Product description here', 15.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('556 Stylish Premium Inlaid Lion\'s Head Set', '556-stylish-premium-inlaid-lion\'s-head-set', 'Product description here', 15.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('812 design personal rose heart necklace set', '812-design-personal-rose-heart-necklace-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('813 Alloy Fashionable design temperament rainbow necklace set', '813-alloy-fashionable-design-temperament-rainbow-necklace-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('559 Retro personality classic snake set', '559-retro-personality-classic-snake-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('559 Retro personality classic snake set', '559-retro-personality-classic-snake-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('559 Retro personality classic snake set', '559-retro-personality-classic-snake-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('559 Retro personality classic snake set', '559-retro-personality-classic-snake-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('815 Fashion Simple Colorful Necklace Set', '815-fashion-simple-colorful-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('817 Alloy Premium Leopard Necklace Set', '817-alloy-premium-leopard-necklace-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('818 HD multilayered flower necklace set', '818-hd-multilayered-flower-necklace-set', 'Product description here', 55.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('818 HD multilayered flower necklace set', '818-hd-multilayered-flower-necklace-set', 'Product description here', 55.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('818 HD multilayered flower necklace set', '818-hd-multilayered-flower-necklace-set', 'Product description here', 55.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('818 HD multilayered flower necklace set', '818-hd-multilayered-flower-necklace-set', 'Product description here', 55.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring（size7）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('818 HD multilayered flower necklace set', '818-hd-multilayered-flower-necklace-set', 'Product description here', 55.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring（size9）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('818 HD multilayered flower necklace set', '818-hd-multilayered-flower-necklace-set', 'Product description here', 55.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set1（earrings+necklace）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('818 HD multilayered flower necklace set', '818-hd-multilayered-flower-necklace-set', 'Product description here', 55.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set7（earrings+necklace+ring7）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('818 HD multilayered flower necklace set', '818-hd-multilayered-flower-necklace-set', 'Product description here', 55.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set9（earrings+necklace+ring9）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('820 Alloy Vintage Heavy Duty Crab Necklace Set', '820-alloy-vintage-heavy-duty-crab-necklace-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('565 Natural green treasure fashion set', '565-natural-green-treasure-fashion-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('565 Natural green treasure fashion set', '565-natural-green-treasure-fashion-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('565 Natural green treasure fashion set', '565-natural-green-treasure-fashion-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('565 Natural green treasure fashion set', '565-natural-green-treasure-fashion-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('821 Vintage temperament heavy peacock tassel necklace set', '821-vintage-temperament-heavy-peacock-tassel-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('821 Vintage temperament heavy peacock tassel necklace set', '821-vintage-temperament-heavy-peacock-tassel-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('821 Vintage temperament heavy peacock tassel necklace set', '821-vintage-temperament-heavy-peacock-tassel-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('821 Vintage temperament heavy peacock tassel necklace set', '821-vintage-temperament-heavy-peacock-tassel-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set（earrings+necklace）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('825 Simple, Elegant and Versatile Greenfield Neckalce Set', '825-simple,-elegant-and-versatile-greenfield-neckalce-set', 'Product description here', 18.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('826 Stylish Exaggerated Flower Tassel necklace Set', '826-stylish-exaggerated-flower-tassel-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('572 Fashionable exquisite colorful starfish set', '572-fashionable-exquisite-colorful-starfish-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('572 Fashionable exquisite colorful starfish set', '572-fashionable-exquisite-colorful-starfish-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('572 Fashionable exquisite colorful starfish set', '572-fashionable-exquisite-colorful-starfish-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('572 Fashionable exquisite colorful starfish set', '572-fashionable-exquisite-colorful-starfish-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('828 Vintage quality heavy industry Fried Dough Twists Necklace Set', '828-vintage-quality-heavy-industry-fried-dough-twists-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('828 Vintage quality heavy industry Fried Dough Twists Necklace Set', '828-vintage-quality-heavy-industry-fried-dough-twists-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('828 Vintage quality heavy industry Fried Dough Twists Necklace Set', '828-vintage-quality-heavy-industry-fried-dough-twists-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('828 Vintage quality heavy industry Fried Dough Twists Necklace Set', '828-vintage-quality-heavy-industry-fried-dough-twists-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set（earrings+necklace）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('573 Gold wire wrapped luxury Set', '573-gold-wire-wrapped-luxury-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('829 Westen tassel alloy multi-layer fashion necklace', '829-westen-tassel-alloy-multi-layer-fashion-necklace', 'Product description here', 16.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('831 Blue Vantage bow tie necklace set', '831-blue-vantage-bow-tie-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('831 Blue Vantage bow tie necklace set', '831-blue-vantage-bow-tie-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('831 Blue Vantage bow tie necklace set', '831-blue-vantage-bow-tie-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('831 Blue Vantage bow tie necklace set', '831-blue-vantage-bow-tie-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set（earrings+necklace）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('576 Verdant jade charm Set', '576-verdant-jade-charm-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('576 Verdant jade charm Set', '576-verdant-jade-charm-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('576 Verdant jade charm Set', '576-verdant-jade-charm-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('576 Verdant jade charm Set', '576-verdant-jade-charm-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'set', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('834 French fashion versatile exquisite 3D inlaid rose necklace set', '834-french-fashion-versatile-exquisite-3d-inlaid-rose-necklace-set', 'Product description here', 18.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('582 Alloy exaggerated metal fashion set', '582-alloy-exaggerated-metal-fashion-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('582 Alloy exaggerated metal fashion set', '582-alloy-exaggerated-metal-fashion-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('582 Alloy exaggerated metal fashion set', '582-alloy-exaggerated-metal-fashion-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('583 European and American irregular cut blue purple Set', '583-european-and-american-irregular-cut-blue-purple-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('583 European and American irregular cut blue purple Set', '583-european-and-american-irregular-cut-blue-purple-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specication', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('583 European and American irregular cut blue purple Set', '583-european-and-american-irregular-cut-blue-purple-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specication', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('583 European and American irregular cut blue purple Set', '583-european-and-american-irregular-cut-blue-purple-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specication', 'ring(7)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('583 European and American irregular cut blue purple Set', '583-european-and-american-irregular-cut-blue-purple-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specication', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('583 European and American irregular cut blue purple Set', '583-european-and-american-irregular-cut-blue-purple-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specication', 'ring(9)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('840 Niche Multi Layered Wear Gorgeous Set', '840-niche-multi-layered-wear-gorgeous-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('840 Niche Multi Layered Wear Gorgeous Set', '840-niche-multi-layered-wear-gorgeous-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('840 Niche Multi Layered Wear Gorgeous Set', '840-niche-multi-layered-wear-gorgeous-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('840 Niche Multi Layered Wear Gorgeous Set', '840-niche-multi-layered-wear-gorgeous-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set（earrings+necklace）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('585 Snake luring red pearl set', '585-snake-luring-red-pearl-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('585 Snake luring red pearl set', '585-snake-luring-red-pearl-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('585 Snake luring red pearl set', '585-snake-luring-red-pearl-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('585 Snake luring red pearl set', '585-snake-luring-red-pearl-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('841 HD Ocean Collection Coral Tassel Set', '841-hd-ocean-collection-coral-tassel-set', 'Product description here', 169.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('841 HD Ocean Collection Coral Tassel Set', '841-hd-ocean-collection-coral-tassel-set', 'Product description here', 169.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set（earrings+necklace）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('586 Nishang Feather Fan Chain Set', '586-nishang-feather-fan-chain-set', 'Product description here', 85.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('586 Nishang Feather Fan Chain Set', '586-nishang-feather-fan-chain-set', 'Product description here', 85.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('842 Vintage luxury temperament stylish necklace set', '842-vintage-luxury-temperament-stylish-necklace-set', 'Product description here', 18.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('844 Alloy Europe and Ameican temperament full inlaid pink flowers necklace set', '844-alloy-europe-and-ameican-temperament-full-inlaid-pink-flowers-necklace-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('845 French Light Luxury Temperament Peplum Casual Necklace Set', '845-french-light-luxury-temperament-peplum-casual-necklace-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('590 Simple and versatile temperament set', '590-simple-and-versatile-temperament-set', 'Product description here', 32.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('846 Simple Versatile Niche Pink Beading Set', '846-simple-versatile-niche-pink-beading-set', 'Product description here', 35.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('847 Fashionable and versatile small flowers 3D spirit set', '847-fashionable-and-versatile-small-flowers-3d-spirit-set', 'Product description here', 63.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('848 Zirconia Small Leopard Brooch Set', '848-zirconia-small-leopard-brooch-set', 'Product description here', 27.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('593 Colorful Treasure Garden dazzling set', '593-colorful-treasure-garden-dazzling-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('593 Colorful Treasure Garden dazzling set', '593-colorful-treasure-garden-dazzling-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('593 Colorful Treasure Garden dazzling set', '593-colorful-treasure-garden-dazzling-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('593 Colorful Treasure Garden dazzling set', '593-colorful-treasure-garden-dazzling-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('597 Quaint emerald green beads set', '597-quaint-emerald-green-beads-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('598 Blue Star Sea Dream Set', '598-blue-star-sea-dream-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('598 Blue Star Sea Dream Set', '598-blue-star-sea-dream-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('598 Blue Star Sea Dream Set', '598-blue-star-sea-dream-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('598 Blue Star Sea Dream Set', '598-blue-star-sea-dream-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('598 Blue Star Sea Dream Set', '598-blue-star-sea-dream-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('598 Blue Star Sea Dream Set', '598-blue-star-sea-dream-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('600 New Green Shower, Sparkling Spring Flower Snake Head Set', '600-new-green-shower,-sparkling-spring-flower-snake-head-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('600 New Green Shower, Sparkling Spring Flower Snake Head Set', '600-new-green-shower,-sparkling-spring-flower-snake-head-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('600 New Green Shower, Sparkling Spring Flower Snake Head Set', '600-new-green-shower,-sparkling-spring-flower-snake-head-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('600 New Green Shower, Sparkling Spring Flower Snake Head Set', '600-new-green-shower,-sparkling-spring-flower-snake-head-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('857 Fashionable temperament senior ice candy splicing set', '857-fashionable-temperament-senior-ice-candy-splicing-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('857 Fashionable temperament senior ice candy splicing set', '857-fashionable-temperament-senior-ice-candy-splicing-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('857 Fashionable temperament senior ice candy splicing set', '857-fashionable-temperament-senior-ice-candy-splicing-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('857 Fashionable temperament senior ice candy splicing set', '857-fashionable-temperament-senior-ice-candy-splicing-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set（earrings+necklace）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('858 Alloy Medieval design exquisite luxury texture back to the flavor set', '858-alloy-medieval-design-exquisite-luxury-texture-back-to-the-flavor-set', 'Product description here', 45.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('858 Alloy Medieval design exquisite luxury texture back to the flavor set', '858-alloy-medieval-design-exquisite-luxury-texture-back-to-the-flavor-set', 'Product description here', 45.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('858 Alloy Medieval design exquisite luxury texture back to the flavor set', '858-alloy-medieval-design-exquisite-luxury-texture-back-to-the-flavor-set', 'Product description here', 45.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('858 Alloy Medieval design exquisite luxury texture back to the flavor set', '858-alloy-medieval-design-exquisite-luxury-texture-back-to-the-flavor-set', 'Product description here', 45.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('858 Alloy Medieval design exquisite luxury texture back to the flavor set', '858-alloy-medieval-design-exquisite-luxury-texture-back-to-the-flavor-set', 'Product description here', 45.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Set1(Earrings+Necklace)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('858 Alloy Medieval design exquisite luxury texture back to the flavor set', '858-alloy-medieval-design-exquisite-luxury-texture-back-to-the-flavor-set', 'Product description here', 45.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Set(Earrings+Necklace+bracelet)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('859 Elegant Fairy  Necklace Set', '859-elegant-fairy-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('604 Design Sense Time Journey Blackstone Set', '604-design-sense-time-journey-blackstone-set', 'Product description here', 36.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('860 Vintage Palace Vegetarian Multi-Layer Necklace Set', '860-vintage-palace-vegetarian-multi-layer-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('860 Vintage Palace Vegetarian Multi-Layer Necklace Set', '860-vintage-palace-vegetarian-multi-layer-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('860 Vintage Palace Vegetarian Multi-Layer Necklace Set', '860-vintage-palace-vegetarian-multi-layer-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('860 Vintage Palace Vegetarian Multi-Layer Necklace Set', '860-vintage-palace-vegetarian-multi-layer-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set（earrings+necklace）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('861 fashionable versatile texture funky color platter set', '861-fashionable-versatile-texture-funky-color-platter-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('861 fashionable versatile texture funky color platter set', '861-fashionable-versatile-texture-funky-color-platter-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('861 fashionable versatile texture funky color platter set', '861-fashionable-versatile-texture-funky-color-platter-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('861 fashionable versatile texture funky color platter set', '861-fashionable-versatile-texture-funky-color-platter-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('861 fashionable versatile texture funky color platter set', '861-fashionable-versatile-texture-funky-color-platter-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring-red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('861 fashionable versatile texture funky color platter set', '861-fashionable-versatile-texture-funky-color-platter-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring-blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('861 fashionable versatile texture funky color platter set', '861-fashionable-versatile-texture-funky-color-platter-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set red（earrings+necklace+bracelet+ring-red）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('861 fashionable versatile texture funky color platter set', '861-fashionable-versatile-texture-funky-color-platter-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set blue（earrings+necklace+bracelet+ring-blue）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('606 Palace Nocturne Bead Set', '606-palace-nocturne-bead-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('606 Palace Nocturne Bead Set', '606-palace-nocturne-bead-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('606 Palace Nocturne Bead Set', '606-palace-nocturne-bead-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('606 Palace Nocturne Bead Set', '606-palace-nocturne-bead-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('862 Skinner Sensational Spring Flowering set', '862-skinner-sensational-spring-flowering-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('862 Skinner Sensational Spring Flowering set', '862-skinner-sensational-spring-flowering-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('862 Skinner Sensational Spring Flowering set', '862-skinner-sensational-spring-flowering-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('862 Skinner Sensational Spring Flowering set', '862-skinner-sensational-spring-flowering-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set（earrings+bracelet）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('607 Jade Contour Micropaved Set', '607-jade-contour-micropaved-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('352 Van Vin Vintage Fashionable Fab SET', '352-van-vin-vintage-fashionable-fab-set', 'Product description here', 126.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('352 Van Vin Vintage Fashionable Fab SET', '352-van-vin-vintage-fashionable-fab-set', 'Product description here', 126.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('352 Van Vin Vintage Fashionable Fab SET', '352-van-vin-vintage-fashionable-fab-set', 'Product description here', 126.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('352 Van Vin Vintage Fashionable Fab SET', '352-van-vin-vintage-fashionable-fab-set', 'Product description here', 126.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('864 Luxury Premium Green Dragon Limited Set', '864-luxury-premium-green-dragon-limited-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('864 Luxury Premium Green Dragon Limited Set', '864-luxury-premium-green-dragon-limited-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('864 Luxury Premium Green Dragon Limited Set', '864-luxury-premium-green-dragon-limited-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace-green');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('864 Luxury Premium Green Dragon Limited Set', '864-luxury-premium-green-dragon-limited-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace-white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('864 Luxury Premium Green Dragon Limited Set', '864-luxury-premium-green-dragon-limited-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('864 Luxury Premium Green Dragon Limited Set', '864-luxury-premium-green-dragon-limited-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('864 Luxury Premium Green Dragon Limited Set', '864-luxury-premium-green-dragon-limited-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set(earrings+necklace-green+necklace-white+brooch+ring）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('865 HD vintage Elephant Head Necklace Set', '865-hd-vintage-elephant-head-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('865 HD vintage Elephant Head Necklace Set', '865-hd-vintage-elephant-head-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('865 HD vintage Elephant Head Necklace Set', '865-hd-vintage-elephant-head-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('865 HD vintage Elephant Head Necklace Set', '865-hd-vintage-elephant-head-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('865 HD vintage Elephant Head Necklace Set', '865-hd-vintage-elephant-head-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set（earrings+necklace+bracelet）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('611 HD Queen Love elegant set', '611-hd-queen-love-elegant-set', 'Product description here', 138.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('867 Alloy Fashionable temperament versatile fan-shaped small sun set', '867-alloy-fashionable-temperament-versatile-fan-shaped-small-sun-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('867 Alloy Fashionable temperament versatile fan-shaped small sun set', '867-alloy-fashionable-temperament-versatile-fan-shaped-small-sun-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('867 Alloy Fashionable temperament versatile fan-shaped small sun set', '867-alloy-fashionable-temperament-versatile-fan-shaped-small-sun-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('867 Alloy Fashionable temperament versatile fan-shaped small sun set', '867-alloy-fashionable-temperament-versatile-fan-shaped-small-sun-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'earrings+necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('612 Alloy Princess Braided Style Earrings Set', '612-alloy-princess-braided-style-earrings-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('357 Simply Simp Golden Queen Necklace', '357-simply-simp-golden-queen-necklace', 'Product description here', 109.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('357 Simply Simp Golden Queen Necklace', '357-simply-simp-golden-queen-necklace', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('357 Simply Simp Golden Queen Necklace', '357-simply-simp-golden-queen-necklace', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('357 Simply Simp Golden Queen Necklace', '357-simply-simp-golden-queen-necklace', 'Product description here', 109.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('613 Alloy Queen Red Luxury Bracelet & Ring Set', '613-alloy-queen-red-luxury-bracelet-&-ring-set', 'Product description here', 79.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('869 Butterfly Wings Fashionable earrings Set', '869-butterfly-wings-fashionable-earrings-set', 'Product description here', 35.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('616 HD European and American court ethnic color Set', '616-hd-european-and-american-court-ethnic-color-set', 'Product description here', 129.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('619 Sweet Berry Beads Set', '619-sweet-berry-beads-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('619 Sweet Berry Beads Set', '619-sweet-berry-beads-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('619 Sweet Berry Beads Set', '619-sweet-berry-beads-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'purple');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('621 HD Luxury Sexy Vibe SET', '621-hd-luxury-sexy-vibe-set', 'Product description here', 110.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('623 HD pink purple elegant set', '623-hd-pink-purple-elegant-set', 'Product description here', 199.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('370 Greenvile Chic Vintage FASHION Set', '370-greenvile-chic-vintage-fashion-set', 'Product description here', 122.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('370 Greenvile Chic Vintage FASHION Set', '370-greenvile-chic-vintage-fashion-set', 'Product description here', 122.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('370 Greenvile Chic Vintage FASHION Set', '370-greenvile-chic-vintage-fashion-set', 'Product description here', 122.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('370 Greenvile Chic Vintage FASHION Set', '370-greenvile-chic-vintage-fashion-set', 'Product description here', 122.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('626 Alloy Stylish Cloudy Bright Moon Glistening White Necklace Set', '626-alloy-stylish-cloudy-bright-moon-glistening-white-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('626 Alloy Stylish Cloudy Bright Moon Glistening White Necklace Set', '626-alloy-stylish-cloudy-bright-moon-glistening-white-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('626 Alloy Stylish Cloudy Bright Moon Glistening White Necklace Set', '626-alloy-stylish-cloudy-bright-moon-glistening-white-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('626 Alloy Stylish Cloudy Bright Moon Glistening White Necklace Set', '626-alloy-stylish-cloudy-bright-moon-glistening-white-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('626 Alloy Stylish Cloudy Bright Moon Glistening White Necklace Set', '626-alloy-stylish-cloudy-bright-moon-glistening-white-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set1（necklace+earrings）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('626 Alloy Stylish Cloudy Bright Moon Glistening White Necklace Set', '626-alloy-stylish-cloudy-bright-moon-glistening-white-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set2（earrings+necklace+brooch）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('632 Alloy Fashionable, delicate and cute little octopus set', '632-alloy-fashionable,-delicate-and-cute-little-octopus-set', 'Product description here', 35.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('632 Alloy Fashionable, delicate and cute little octopus set', '632-alloy-fashionable,-delicate-and-cute-little-octopus-set', 'Product description here', 35.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('632 Alloy Fashionable, delicate and cute little octopus set', '632-alloy-fashionable,-delicate-and-cute-little-octopus-set', 'Product description here', 35.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('632 Alloy Fashionable, delicate and cute little octopus set', '632-alloy-fashionable,-delicate-and-cute-little-octopus-set', 'Product description here', 35.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('632 Alloy Fashionable, delicate and cute little octopus set', '632-alloy-fashionable,-delicate-and-cute-little-octopus-set', 'Product description here', 35.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('635 Stylish design bejeweled parrot feather Set', '635-stylish-design-bejeweled-parrot-feather-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('635 Stylish design bejeweled parrot feather Set', '635-stylish-design-bejeweled-parrot-feather-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('635 Stylish design bejeweled parrot feather Set', '635-stylish-design-bejeweled-parrot-feather-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('635 Stylish design bejeweled parrot feather Set', '635-stylish-design-bejeweled-parrot-feather-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('635 Stylish design bejeweled parrot feather Set', '635-stylish-design-bejeweled-parrot-feather-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set1');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('635 Stylish design bejeweled parrot feather Set', '635-stylish-design-bejeweled-parrot-feather-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set2');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('637 High End Feeling Luxury Texture Inlay Artistic Eye Set', '637-high-end-feeling-luxury-texture-inlay-artistic-eye-set', 'Product description here', 79.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('638 Vintage Simple Versatile Design Square Inlay Set', '638-vintage-simple-versatile-design-square-inlay-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('644 Simple Clover Set', '644-simple-clover-set', 'Product description here', 60.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('389 nile shell\'s fantasy high fashion set', '389-nile-shell\'s-fantasy-high-fashion-set', 'Product description here', 56.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('389 nile shell\'s fantasy high fashion set', '389-nile-shell\'s-fantasy-high-fashion-set', 'Product description here', 56.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('389 nile shell\'s fantasy high fashion set', '389-nile-shell\'s-fantasy-high-fashion-set', 'Product description here', 56.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('389 nile shell\'s fantasy high fashion set', '389-nile-shell\'s-fantasy-high-fashion-set', 'Product description here', 56.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('394 jumping blue bubble simple fashion set', '394-jumping-blue-bubble-simple-fashion-set', 'Product description here', 67.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('394 jumping blue bubble simple fashion set', '394-jumping-blue-bubble-simple-fashion-set', 'Product description here', 67.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('394 jumping blue bubble simple fashion set', '394-jumping-blue-bubble-simple-fashion-set', 'Product description here', 67.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('394 jumping blue bubble simple fashion set', '394-jumping-blue-bubble-simple-fashion-set', 'Product description here', 67.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('650 Alloy Retro Lion Baroque Set', '650-alloy-retro-lion-baroque-set', 'Product description here', 66.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('654 Alloy Stylishly Simple Violet Ross Set', '654-alloy-stylishly-simple-violet-ross-set', 'Product description here', 22.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('655 Alloy Elegant temperament versatile spring necklace set', '655-alloy-elegant-temperament-versatile-spring-necklace-set', 'Product description here', 17.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('400 green apple wonderland vintage set', '400-green-apple-wonderland-vintage-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('400 green apple wonderland vintage set', '400-green-apple-wonderland-vintage-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Ear Beat');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('400 green apple wonderland vintage set', '400-green-apple-wonderland-vintage-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('400 green apple wonderland vintage set', '400-green-apple-wonderland-vintage-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('400 green apple wonderland vintage set', '400-green-apple-wonderland-vintage-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Ring(Size-8)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('400 green apple wonderland vintage set', '400-green-apple-wonderland-vintage-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Ear Beat+Necklace+Bracelet+Ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('405 babylon\'s image vintage style set', '405-babylon\'s-image-vintage-style-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('405 babylon\'s image vintage style set', '405-babylon\'s-image-vintage-style-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('405 babylon\'s image vintage style set', '405-babylon\'s-image-vintage-style-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('405 babylon\'s image vintage style set', '405-babylon\'s-image-vintage-style-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('405 babylon\'s image vintage style set', '405-babylon\'s-image-vintage-style-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('663 Delicate design inlaid marine summer set', '663-delicate-design-inlaid-marine-summer-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('663 Delicate design inlaid marine summer set', '663-delicate-design-inlaid-marine-summer-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('663 Delicate design inlaid marine summer set', '663-delicate-design-inlaid-marine-summer-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('663 Delicate design inlaid marine summer set', '663-delicate-design-inlaid-marine-summer-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('664 HD Vintage Palace Green Cut Oval Set', '664-hd-vintage-palace-green-cut-oval-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('664 HD Vintage Palace Green Cut Oval Set', '664-hd-vintage-palace-green-cut-oval-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('664 HD Vintage Palace Green Cut Oval Set', '664-hd-vintage-palace-green-cut-oval-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('664 HD Vintage Palace Green Cut Oval Set', '664-hd-vintage-palace-green-cut-oval-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('666 Azure Phoenix Tail Bead Set', '666-azure-phoenix-tail-bead-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('673 Fashion Bubble Necklace Set', '673-fashion-bubble-necklace-set', 'Product description here', 76.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('674 Exquisite Love Peace Lock Set', '674-exquisite-love-peace-lock-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('674 Exquisite Love Peace Lock Set', '674-exquisite-love-peace-lock-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('674 Exquisite Love Peace Lock Set', '674-exquisite-love-peace-lock-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('674 Exquisite Love Peace Lock Set', '674-exquisite-love-peace-lock-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('680 Fashion retro temperament fall icing sugar smoothie set', '680-fashion-retro-temperament-fall-icing-sugar-smoothie-set', 'Product description here', 25.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('425 peacock wonderland court style set', '425-peacock-wonderland-court-style-set', 'Product description here', 64.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('425 peacock wonderland court style set', '425-peacock-wonderland-court-style-set', 'Product description here', 64.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('425 peacock wonderland court style set', '425-peacock-wonderland-court-style-set', 'Product description here', 64.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('425 peacock wonderland court style set', '425-peacock-wonderland-court-style-set', 'Product description here', 64.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('429 blue coastline designable set', '429-blue-coastline-designable-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('429 blue coastline designable set', '429-blue-coastline-designable-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('429 blue coastline designable set', '429-blue-coastline-designable-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('429 blue coastline designable set', '429-blue-coastline-designable-set', 'Product description here', 69.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('687 Versatile hollow square badge set', '687-versatile-hollow-square-badge-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('434 Wrapping Time and Space Intersection alloy necklace Set', '434-wrapping-time-and-space-intersection-alloy-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('434 Wrapping Time and Space Intersection alloy necklace Set', '434-wrapping-time-and-space-intersection-alloy-necklace-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('436 Three Layer Surrounding Glowing Galaxy alloy Set', '436-three-layer-surrounding-glowing-galaxy-alloy-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('436 Three Layer Surrounding Glowing Galaxy alloy Set', '436-three-layer-surrounding-glowing-galaxy-alloy-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('437 French Oval alloy necklace Set', '437-french-oval-alloy-necklace-set', 'Product description here', 44.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('437 French Oval alloy necklace Set', '437-french-oval-alloy-necklace-set', 'Product description here', 44.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('438 Oval Ice Flower alloy necklace Set', '438-oval-ice-flower-alloy-necklace-set', 'Product description here', 44.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('438 Oval Ice Flower alloy necklace Set', '438-oval-ice-flower-alloy-necklace-set', 'Product description here', 44.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('442 Domineering lion alloy necklace set', '442-domineering-lion-alloy-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('442 Domineering lion alloy necklace set', '442-domineering-lion-alloy-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('699 Vintage Elegant Elegant Necklace Set', '699-vintage-elegant-elegant-necklace-set', 'Product description here', 58.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('699 Vintage Elegant Elegant Necklace Set', '699-vintage-elegant-elegant-necklace-set', 'Product description here', 58.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('699 Vintage Elegant Elegant Necklace Set', '699-vintage-elegant-elegant-necklace-set', 'Product description here', 58.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('699 Vintage Elegant Elegant Necklace Set', '699-vintage-elegant-elegant-necklace-set', 'Product description here', 58.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('444 Temperament Snowflake Shining alloy necklace Set', '444-temperament-snowflake-shining-alloy-necklace-set', 'Product description here', 32.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('444 Temperament Snowflake Shining alloy necklace Set', '444-temperament-snowflake-shining-alloy-necklace-set', 'Product description here', 32.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('700 Alloy fashionable blooming flower set', '700-alloy-fashionable-blooming-flower-set', 'Product description here', 36.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('445 Bee Queen luxury alloy Set', '445-bee-queen-luxury-alloy-set', 'Product description here', 73.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('445 Bee Queen luxury alloy Set', '445-bee-queen-luxury-alloy-set', 'Product description here', 73.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('446 Blue Olive Branch alloy brooch Set', '446-blue-olive-branch-alloy-brooch-set', 'Product description here', 62.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('446 Blue Olive Branch alloy brooch Set', '446-blue-olive-branch-alloy-brooch-set', 'Product description here', 62.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('702 Medieval texture personality temperament scallop interlocking set', '702-medieval-texture-personality-temperament-scallop-interlocking-set', 'Product description here', 32.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('702 Medieval texture personality temperament scallop interlocking set', '702-medieval-texture-personality-temperament-scallop-interlocking-set', 'Product description here', 32.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('702 Medieval texture personality temperament scallop interlocking set', '702-medieval-texture-personality-temperament-scallop-interlocking-set', 'Product description here', 32.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('702 Medieval texture personality temperament scallop interlocking set', '702-medieval-texture-personality-temperament-scallop-interlocking-set', 'Product description here', 32.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('447 Old Gold Wrapped Double Layer Texture neckalace Set', '447-old-gold-wrapped-double-layer-texture-neckalace-set', 'Product description here', 64.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('447 Old Gold Wrapped Double Layer Texture neckalace Set', '447-old-gold-wrapped-double-layer-texture-neckalace-set', 'Product description here', 64.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('447 Old Gold Wrapped Double Layer Texture neckalace Set', '447-old-gold-wrapped-double-layer-texture-neckalace-set', 'Product description here', 64.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('447 Old Gold Wrapped Double Layer Texture neckalace Set', '447-old-gold-wrapped-double-layer-texture-neckalace-set', 'Product description here', 64.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('448 Green Leaf Shaped alloy necklace Set', '448-green-leaf-shaped-alloy-necklace-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('448 Green Leaf Shaped alloy necklace Set', '448-green-leaf-shaped-alloy-necklace-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('448 Green Leaf Shaped alloy necklace Set', '448-green-leaf-shaped-alloy-necklace-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('448 Green Leaf Shaped alloy necklace Set', '448-green-leaf-shaped-alloy-necklace-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('449 Morgan Pink Water Drop Two Color zircon necklace Set', '449-morgan-pink-water-drop-two-color-zircon-necklace-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('449 Morgan Pink Water Drop Two Color zircon necklace Set', '449-morgan-pink-water-drop-two-color-zircon-necklace-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('450 Vintage Art Shield alloy necklace Set', '450-vintage-art-shield-alloy-necklace-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('450 Vintage Art Shield alloy necklace Set', '450-vintage-art-shield-alloy-necklace-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('450 Vintage Art Shield alloy necklace Set', '450-vintage-art-shield-alloy-necklace-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('450 Vintage Art Shield alloy necklace Set', '450-vintage-art-shield-alloy-necklace-set', 'Product description here', 54.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('451 Clover flower alloy necklace set', '451-clover-flower-alloy-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('451 Clover flower alloy necklace set', '451-clover-flower-alloy-necklace-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklcae+Ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('708 Alloy exaggerated metal circular set', '708-alloy-exaggerated-metal-circular-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('453 Vintage Palace Peach Hearts alloy necklace set', '453-vintage-palace-peach-hearts-alloy-necklace-set', 'Product description here', 42.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('453 Vintage Palace Peach Hearts alloy necklace set', '453-vintage-palace-peach-hearts-alloy-necklace-set', 'Product description here', 42.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('453 Vintage Palace Peach Hearts alloy necklace set', '453-vintage-palace-peach-hearts-alloy-necklace-set', 'Product description here', 42.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('453 Vintage Palace Peach Hearts alloy necklace set', '453-vintage-palace-peach-hearts-alloy-necklace-set', 'Product description here', 42.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('456 Atmospheric Moonlight alloy necklace Set', '456-atmospheric-moonlight-alloy-necklace-set', 'Product description here', 84.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('456 Atmospheric Moonlight alloy necklace Set', '456-atmospheric-moonlight-alloy-necklace-set', 'Product description here', 84.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('712 Vintage Court Style Heavy Inlay Colorful Cross Necklace Set', '712-vintage-court-style-heavy-inlay-colorful-cross-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('712 Vintage Court Style Heavy Inlay Colorful Cross Necklace Set', '712-vintage-court-style-heavy-inlay-colorful-cross-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('712 Vintage Court Style Heavy Inlay Colorful Cross Necklace Set', '712-vintage-court-style-heavy-inlay-colorful-cross-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('712 Vintage Court Style Heavy Inlay Colorful Cross Necklace Set', '712-vintage-court-style-heavy-inlay-colorful-cross-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('712 Vintage Court Style Heavy Inlay Colorful Cross Necklace Set', '712-vintage-court-style-heavy-inlay-colorful-cross-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set1（earrings+necklace）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('712 Vintage Court Style Heavy Inlay Colorful Cross Necklace Set', '712-vintage-court-style-heavy-inlay-colorful-cross-necklace-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set（earrings+necklace+bracelet）');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('458 Design Sense Ripple Wave Set', '458-design-sense-ripple-wave-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('458 Design Sense Ripple Wave Set', '458-design-sense-ripple-wave-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('459 Antique Emerald Green Elegant Round Ball Set', '459-antique-emerald-green-elegant-round-ball-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('459 Antique Emerald Green Elegant Round Ball Set', '459-antique-emerald-green-elegant-round-ball-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('459 Antique Emerald Green Elegant Round Ball Set', '459-antique-emerald-green-elegant-round-ball-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('460 Vintage Shining Sun Wheel Set', '460-vintage-shining-sun-wheel-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('460 Vintage Shining Sun Wheel Set', '460-vintage-shining-sun-wheel-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('460 Vintage Shining Sun Wheel Set', '460-vintage-shining-sun-wheel-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('460 Vintage Shining Sun Wheel Set', '460-vintage-shining-sun-wheel-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('462 3D relief peony fashion Set', '462-3d-relief-peony-fashion-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('462 3D relief peony fashion Set', '462-3d-relief-peony-fashion-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('462 3D relief peony fashion Set', '462-3d-relief-peony-fashion-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('462 3D relief peony fashion Set', '462-3d-relief-peony-fashion-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Brooch+Ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('463 Golden Flower Sfylish Set', '463-golden-flower-sfylish-set', 'Product description here', 51.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('463 Golden Flower Sfylish Set', '463-golden-flower-sfylish-set', 'Product description here', 51.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('463 Golden Flower Sfylish Set', '463-golden-flower-sfylish-set', 'Product description here', 51.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('463 Golden Flower Sfylish Set', '463-golden-flower-sfylish-set', 'Product description here', 51.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('463 Golden Flower Sfylish Set', '463-golden-flower-sfylish-set', 'Product description here', 51.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('464 Green Lux Fashionable Set', '464-green-lux-fashionable-set', 'Product description here', 99.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('464 Green Lux Fashionable Set', '464-green-lux-fashionable-set', 'Product description here', 99.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('465 The Queen Fashionable Set', '465-the-queen-fashionable-set', 'Product description here', 99.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('465 The Queen Fashionable Set', '465-the-queen-fashionable-set', 'Product description here', 99.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('466 Moonlight Goddness Fashionable Set', '466-moonlight-goddness-fashionable-set', 'Product description here', 106.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('466 Moonlight Goddness Fashionable Set', '466-moonlight-goddness-fashionable-set', 'Product description here', 106.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('467 Black Ocean Fashionable Jewelry Set', '467-black-ocean-fashionable-jewelry-set', 'Product description here', 89.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('467 Black Ocean Fashionable Jewelry Set', '467-black-ocean-fashionable-jewelry-set', 'Product description here', 89.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('723 Alloy Natural golden Branch Wishing Set', '723-alloy-natural-golden-branch-wishing-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('468 Wave Light Rose Necklace Fashion Set', '468-wave-light-rose-necklace-fashion-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('468 Wave Light Rose Necklace Fashion Set', '468-wave-light-rose-necklace-fashion-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Eecklace+Bracelet+Ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('469 Sunny Good  Fashionable Set', '469-sunny-good-fashionable-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('469 Sunny Good  Fashionable Set', '469-sunny-good-fashionable-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('469 Sunny Good  Fashionable Set', '469-sunny-good-fashionable-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('469 Sunny Good  Fashionable Set', '469-sunny-good-fashionable-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('470 Luxury long Y-shaped Fashion set', '470-luxury-long-y-shaped-fashion-set', 'Product description here', 199.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('470 Luxury long Y-shaped Fashion set', '470-luxury-long-y-shaped-fashion-set', 'Product description here', 199.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('726 Neo-Chinese Style Simple Auspicious Brocade Necklace set', '726-neo-chinese-style-simple-auspicious-brocade-necklace-set', 'Product description here', 32.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('471 Ancient Coins Fashion Set', '471-ancient-coins-fashion-set', 'Product description here', 119.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('471 Ancient Coins Fashion Set', '471-ancient-coins-fashion-set', 'Product description here', 119.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('472 Light Luxury Retro Texture Ice Through Honey Oval Set', '472-light-luxury-retro-texture-ice-through-honey-oval-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('472 Light Luxury Retro Texture Ice Through Honey Oval Set', '472-light-luxury-retro-texture-ice-through-honey-oval-set', 'Product description here', 59.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('475 European and American Golden Toad Chain Set', '475-european-and-american-golden-toad-chain-set', 'Product description here', 84.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('475 European and American Golden Toad Chain Set', '475-european-and-american-golden-toad-chain-set', 'Product description here', 84.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('475 European and American Golden Toad Chain Set', '475-european-and-american-golden-toad-chain-set', 'Product description here', 84.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('475 European and American Golden Toad Chain Set', '475-european-and-american-golden-toad-chain-set', 'Product description here', 84.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('475 European and American Golden Toad Chain Set', '475-european-and-american-golden-toad-chain-set', 'Product description here', 84.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('476 Versatile Inlaid Snake Bone Joint Set', '476-versatile-inlaid-snake-bone-joint-set', 'Product description here', 79.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('476 Versatile Inlaid Snake Bone Joint Set', '476-versatile-inlaid-snake-bone-joint-set', 'Product description here', 79.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Gold(Earrings+Necklace+Bracelet)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('476 Versatile Inlaid Snake Bone Joint Set', '476-versatile-inlaid-snake-bone-joint-set', 'Product description here', 79.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Silver(Earrings+Necklace+Bracelet)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('732 Vintage design personality simple irregular set', '732-vintage-design-personality-simple-irregular-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('732 Vintage design personality simple irregular set', '732-vintage-design-personality-simple-irregular-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('732 Vintage design personality simple irregular set', '732-vintage-design-personality-simple-irregular-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('732 Vintage design personality simple irregular set', '732-vintage-design-personality-simple-irregular-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('732 Vintage design personality simple irregular set', '732-vintage-design-personality-simple-irregular-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('477 Cold and cool design, snake tail carrying Set', '477-cold-and-cool-design,-snake-tail-carrying-set', 'Product description here', 169.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('477 Cold and cool design, snake tail carrying Set', '477-cold-and-cool-design,-snake-tail-carrying-set', 'Product description here', 169.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('478 Hexagonal Splice Fashion Set', '478-hexagonal-splice-fashion-set', 'Product description here', 119.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('478 Hexagonal Splice Fashion Set', '478-hexagonal-splice-fashion-set', 'Product description here', 119.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace+Bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('479 Vintage Droplet Shape Lianli Branch Set', '479-vintage-droplet-shape-lianli-branch-set', 'Product description here', 92.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('479 Vintage Droplet Shape Lianli Branch Set', '479-vintage-droplet-shape-lianli-branch-set', 'Product description here', 92.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('735 Nile style forest rain and dew set', '735-nile-style-forest-rain-and-dew-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('735 Nile style forest rain and dew set', '735-nile-style-forest-rain-and-dew-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('735 Nile style forest rain and dew set', '735-nile-style-forest-rain-and-dew-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('735 Nile style forest rain and dew set', '735-nile-style-forest-rain-and-dew-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('480 Wind tassel alloy necklace Set', '480-wind-tassel-alloy-necklace-set', 'Product description here', 119.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('480 Wind tassel alloy necklace Set', '480-wind-tassel-alloy-necklace-set', 'Product description here', 119.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Red(Earrings+Necklace)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('480 Wind tassel alloy necklace Set', '480-wind-tassel-alloy-necklace-set', 'Product description here', 119.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Champagne(Earrings+Necklace)');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('736 Personalized goldenen Rose Set', '736-personalized-goldenen-rose-set', 'Product description here', 29.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('737 Fashionable and elegant flower laurel set', '737-fashionable-and-elegant-flower-laurel-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('737 Fashionable and elegant flower laurel set', '737-fashionable-and-elegant-flower-laurel-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('737 Fashionable and elegant flower laurel set', '737-fashionable-and-elegant-flower-laurel-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('737 Fashionable and elegant flower laurel set', '737-fashionable-and-elegant-flower-laurel-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('485 Light Luxury Design Cross Style alloy necklace Set', '485-light-luxury-design-cross-style-alloy-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('485 Light Luxury Design Cross Style alloy necklace Set', '485-light-luxury-design-cross-style-alloy-necklace-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Suit', 'Earrings+Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('741 Three-dimensional branch and bright moon Set', '741-three-dimensional-branch-and-bright-moon-set', 'Product description here', 46.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('744 Middle ancient style niche art fan relief set', '744-middle-ancient-style-niche-art-fan-relief-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('744 Middle ancient style niche art fan relief set', '744-middle-ancient-style-niche-art-fan-relief-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('744 Middle ancient style niche art fan relief set', '744-middle-ancient-style-niche-art-fan-relief-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('744 Middle ancient style niche art fan relief set', '744-middle-ancient-style-niche-art-fan-relief-set', 'Product description here', 19.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('745 Fashionable exquisite colorful starfish set', '745-fashionable-exquisite-colorful-starfish-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('745 Fashionable exquisite colorful starfish set', '745-fashionable-exquisite-colorful-starfish-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('745 Fashionable exquisite colorful starfish set', '745-fashionable-exquisite-colorful-starfish-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('745 Fashionable exquisite colorful starfish set', '745-fashionable-exquisite-colorful-starfish-set', 'Product description here', 49.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('749 Fashionable Elegant Old Money Style Classic jaden Color Set', '749-fashionable-elegant-old-money-style-classic-jaden-color-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('749 Fashionable Elegant Old Money Style Classic jaden Color Set', '749-fashionable-elegant-old-money-style-classic-jaden-color-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('749 Fashionable Elegant Old Money Style Classic jaden Color Set', '749-fashionable-elegant-old-money-style-classic-jaden-color-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('749 Fashionable Elegant Old Money Style Classic jaden Color Set', '749-fashionable-elegant-old-money-style-classic-jaden-color-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('751 High End Feeling Luxury Texture Inlay Artistic Eye Set', '751-high-end-feeling-luxury-texture-inlay-artistic-eye-set', 'Product description here', 79.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('752 Fashionable and Shining Colorful Hammer Set', '752-fashionable-and-shining-colorful-hammer-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('752 Fashionable and Shining Colorful Hammer Set', '752-fashionable-and-shining-colorful-hammer-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('752 Fashionable and Shining Colorful Hammer Set', '752-fashionable-and-shining-colorful-hammer-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'ring');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('752 Fashionable and Shining Colorful Hammer Set', '752-fashionable-and-shining-colorful-hammer-set', 'Product description here', 39.99, 4, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('363 Vintage snake Fashion Bracelets', '363-vintage-snake-fashion-bracelets', 'Product description here', 36.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('363 Vintage snake Fashion Bracelets', '363-vintage-snake-fashion-bracelets', 'Product description here', 36.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('363 Vintage snake Fashion Bracelets', '363-vintage-snake-fashion-bracelets', 'Product description here', 36.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('377 Fashionable hip-hop style studded bracelet', '377-fashionable-hip-hop-style-studded-bracelet', 'Product description here', 46.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('377 Fashionable hip-hop style studded bracelet', '377-fashionable-hip-hop-style-studded-bracelet', 'Product description here', 46.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('377 Fashionable hip-hop style studded bracelet', '377-fashionable-hip-hop-style-studded-bracelet', 'Product description here', 46.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'classification', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'classification', 'necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'classification', 'set');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'purple');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('347 Black Panther Chic Cooler Version Necklace', '347-black-panther-chic-cooler-version-necklace', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'white');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('344 Trendy Hip Hop Open Bracelet', '344-trendy-hip-hop-open-bracelet', 'Product description here', 36.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('785 Alloy Vintage court style personalized design sense of old texture set', '785-alloy-vintage-court-style-personalized-design-sense-of-old-texture-set', 'Product description here', 19.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace+bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Necklace');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('795 Alloy Fashionable and playful colorful set', '795-alloy-fashionable-and-playful-colorful-set', 'Product description here', 19.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Necklace+bracelet');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('293 IVE Got Butterflies Romantic Bracelet', '293-ive-got-butterflies-romantic-bracelet', 'Product description here', 24.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('293 IVE Got Butterflies Romantic Bracelet', '293-ive-got-butterflies-romantic-bracelet', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('293 IVE Got Butterflies Romantic Bracelet', '293-ive-got-butterflies-romantic-bracelet', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'golden');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('550 Fashionable Versatile Gorgeous Heart Bracelet', '550-fashionable-versatile-gorgeous-heart-bracelet', 'Product description here', 21.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('552 Simple Gold Interwoven Love Bracelet', '552-simple-gold-interwoven-love-bracelet', 'Product description here', 19.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Golden');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('808 Alloy Design inspired goldenen and silver interlocking set', '808-alloy-design-inspired-goldenen-and-silver-interlocking-set', 'Product description here', 69.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('810 Alloy Fashionable Angel Wings Open Bracelet', '810-alloy-fashionable-angel-wings-open-bracelet', 'Product description here', 17.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('815 Fashion Simple Colorful Necklace Set', '815-fashion-simple-colorful-necklace-set', 'Product description here', 29.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('561 Fashion Simple Light Luxury Digital Bracelet', '561-fashion-simple-light-luxury-digital-bracelet', 'Product description here', 59.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('307 Rainbow Beauty seasion I Fashion Bracelet', '307-rainbow-beauty-seasion-i-fashion-bracelet', 'Product description here', 19.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('308 undefinable love simple fashion bracelet', '308-undefinable-love-simple-fashion-bracelet', 'Product description here', 85.00, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('310 Vintage Pure Luxury Queeny Bracelet', '310-vintage-pure-luxury-queeny-bracelet', 'Product description here', 61.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('312 Bracelet of Vintage & Fashion', '312-bracelet-of-vintage-&-fashion', 'Product description here', 37.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('570 Designer Inlaid Wheat Spiking Bracelet', '570-designer-inlaid-wheat-spiking-bracelet', 'Product description here', 28.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('832 Alloy Stylish and Luxurious Blue Sea Heart Bracelet', '832-alloy-stylish-and-luxurious-blue-sea-heart-bracelet', 'Product description here', 16.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('577 Light and shadow intertwined geometric bracelet', '577-light-and-shadow-intertwined-geometric-bracelet', 'Product description here', 19.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('324 Old Gold Plum Blossom Bracelet', '324-old-gold-plum-blossom-bracelet', 'Product description here', 55.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('332 Suya Open Fashion Bracelet', '332-suya-open-fashion-bracelet', 'Product description here', 24.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('332 Suya Open Fashion Bracelet', '332-suya-open-fashion-bracelet', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'A');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('332 Suya Open Fashion Bracelet', '332-suya-open-fashion-bracelet', 'Product description here', 24.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'B');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('345 Tassels Silver Bracelets', '345-tassels-silver-bracelets', 'Product description here', 87.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('346 Timelessly Fashionable Bracelets', '346-timelessly-fashionable-bracelets', 'Product description here', 89.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('348 European and American minimalist hollowed out woven knot bracelet', '348-european-and-american-minimalist-hollowed-out-woven-knot-bracelet', 'Product description here', 23.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('349 Vintage Elegant Micro Inlaid Starlight Hollow out Coin Bracelet', '349-vintage-elegant-micro-inlaid-starlight-hollow-out-coin-bracelet', 'Product description here', 44.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('350 Vintage Gold Leaf Fashion Bracelet', '350-vintage-gold-leaf-fashion-bracelet', 'Product description here', 59.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('369 Beautiful Smile Shines Bright bracelet', '369-beautiful-smile-shines-bright-bracelet', 'Product description here', 47.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('369 Beautiful Smile Shines Bright bracelet', '369-beautiful-smile-shines-bright-bracelet', 'Product description here', 47.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('369 Beautiful Smile Shines Bright bracelet', '369-beautiful-smile-shines-bright-bracelet', 'Product description here', 47.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('372 Design Sense Three Layer Splice Wide Inlaid Bracelet', '372-design-sense-three-layer-splice-wide-inlaid-bracelet', 'Product description here', 319.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('372 Design Sense Three Layer Splice Wide Inlaid Bracelet', '372-design-sense-three-layer-splice-wide-inlaid-bracelet', 'Product description here', 319.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('372 Design Sense Three Layer Splice Wide Inlaid Bracelet', '372-design-sense-three-layer-splice-wide-inlaid-bracelet', 'Product description here', 319.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Green');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('642 Casual Dobo Bracelet', '642-casual-dobo-bracelet', 'Product description here', 39.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('716 Blue Patchwork Glitter Bracelet', '716-blue-patchwork-glitter-bracelet', 'Product description here', 56.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('717 HD Luxury Colorful Bracelet', '717-hd-luxury-colorful-bracelet', 'Product description here', 59.00, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('718 Hip-hop Unique Woven Open Bracelet', '718-hip-hop-unique-woven-open-bracelet', 'Product description here', 39.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('731 Alloy exaggerated alloy wide edge Bracelet', '731-alloy-exaggerated-alloy-wide-edge-bracelet', 'Product description here', 23.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('731 Alloy exaggerated alloy wide edge Bracelet', '731-alloy-exaggerated-alloy-wide-edge-bracelet', 'Product description here', 23.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'COLOR', 'gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('731 Alloy exaggerated alloy wide edge Bracelet', '731-alloy-exaggerated-alloy-wide-edge-bracelet', 'Product description here', 23.99, 5, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'COLOR', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('733 Elegant inlaid splicing double row bracelet', '733-elegant-inlaid-splicing-double-row-bracelet', 'Product description here', 29.99, 5, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 6, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 6, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('793 Alloy Versatile Textured Snake Set', '793-alloy-versatile-textured-snake-set', 'Product description here', 23.99, 6, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Set', 'Earrings+Brooch');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('799 Alloy Retro palace style inlaid with magnificent flowers Set', '799-alloy-retro-palace-style-inlaid-with-magnificent-flowers-set', 'Product description here', 29.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('801 Alloy Retro palace style premium carp joy set', '801-alloy-retro-palace-style-premium-carp-joy-set', 'Product description here', 109.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('801 Alloy Retro palace style premium carp joy set', '801-alloy-retro-palace-style-premium-carp-joy-set', 'Product description here', 109.99, 6, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('801 Alloy Retro palace style premium carp joy set', '801-alloy-retro-palace-style-premium-carp-joy-set', 'Product description here', 109.99, 6, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('555 Neo-Chinese Style Phoenix Feather Brooch', '555-neo-chinese-style-phoenix-feather-brooch', 'Product description here', 12.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('558 Simple Design Personalized Mask Brooch', '558-simple-design-personalized-mask-brooch', 'Product description here', 26.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('566 Simple snake-shaped hollow Brooch', '566-simple-snake-shaped-hollow-brooch', 'Product description here', 54.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('314 Rose Shines Bright Vintage Brooch', '314-rose-shines-bright-vintage-brooch', 'Product description here', 20.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('315 Black Elegant Flower Vintage Brooch', '315-black-elegant-flower-vintage-brooch', 'Product description here', 20.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('571 Vintage Simple Personalized Cupid\'s Heart Brooch', '571-vintage-simple-personalized-cupid\'s-heart-brooch', 'Product description here', 29.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('317 Vintage Flower Fashionable Brooch', '317-vintage-flower-fashionable-brooch', 'Product description here', 26.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('319 word trip colourful breaspin', '319-word-trip-colourful-breaspin', 'Product description here', 76.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('322 fashion queen luxury alloy brooch', '322-fashion-queen-luxury-alloy-brooch', 'Product description here', 42.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('579 Noble style dazzling horse brooch', '579-noble-style-dazzling-horse-brooch', 'Product description here', 26.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('326 Vintage Dragonfly alloy brooch', '326-vintage-dragonfly-alloy-brooch', 'Product description here', 36.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('589 Golden emerald eye crocodile Brooch', '589-golden-emerald-eye-crocodile-brooch', 'Product description here', 49.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('335 Bee Queen fashionable alloy brooch', '335-bee-queen-fashionable-alloy-brooch', 'Product description here', 35.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('336 3D circular hollow brooch', '336-3d-circular-hollow-brooch', 'Product description here', 33.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('337 Irregular flower Fashion Brooch', '337-irregular-flower-fashion-brooch', 'Product description here', 38.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('339 Fashion Gold Lucky Rope Knot brooch', '339-fashion-gold-lucky-rope-knot-brooch', 'Product description here', 31.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('341 Smart Dragonfly Fashion Brooch', '341-smart-dragonfly-fashion-brooch', 'Product description here', 25.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('353 Embedding a plum blossom dual purpose alloy brooch', '353-embedding-a-plum-blossom-dual-purpose-alloy-brooch', 'Product description here', 31.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('353 Embedding a plum blossom dual purpose alloy brooch', '353-embedding-a-plum-blossom-dual-purpose-alloy-brooch', 'Product description here', 31.99, 6, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Pink');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('353 Embedding a plum blossom dual purpose alloy brooch', '353-embedding-a-plum-blossom-dual-purpose-alloy-brooch', 'Product description here', 31.99, 6, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Blue');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('358 the ice wing of butterfly high fashion style brooch', '358-the-ice-wing-of-butterfly-high-fashion-style-brooch', 'Product description here', 105.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('358 the ice wing of butterfly high fashion style brooch', '358-the-ice-wing-of-butterfly-high-fashion-style-brooch', 'Product description here', 105.99, 6, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('358 the ice wing of butterfly high fashion style brooch', '358-the-ice-wing-of-butterfly-high-fashion-style-brooch', 'Product description here', 105.99, 6, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Sliver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('620 Jinrui Zibao Brilliant Flower brooch', '620-jinrui-zibao-brilliant-flower-brooch', 'Product description here', 19.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('631 Vintage Elegant Butterfly Fairy Brooch', '631-vintage-elegant-butterfly-fairy-brooch', 'Product description here', 12.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('646 HD Sailor Moon Brooch', '646-hd-sailor-moon-brooch', 'Product description here', 47.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('648 Alloy Aristocratic classical lingering hollow Set', '648-alloy-aristocratic-classical-lingering-hollow-set', 'Product description here', 139.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('742 Alloy Vintage Metal Snake Brooch', '742-alloy-vintage-metal-snake-brooch', 'Product description here', 21.99, 6, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('295 Simple Fashionable Vintage Shinny Hair Clip', '295-simple-fashionable-vintage-shinny-hair-clip', 'Product description here', 19.99, 7, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('295 Simple Fashionable Vintage Shinny Hair Clip', '295-simple-fashionable-vintage-shinny-hair-clip', 'Product description here', 19.99, 7, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Hair Clip I');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('295 Simple Fashionable Vintage Shinny Hair Clip', '295-simple-fashionable-vintage-shinny-hair-clip', 'Product description here', 19.99, 7, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Type', 'Hair Clip II');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('658 Modern Ripple golden Hair Clip', '658-modern-ripple-golden-hair-clip', 'Product description here', 9.99, 7, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('658 Modern Ripple golden Hair Clip', '658-modern-ripple-golden-hair-clip', 'Product description here', 9.99, 7, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'COLOR', 'GOLD');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('658 Modern Ripple golden Hair Clip', '658-modern-ripple-golden-hair-clip', 'Product description here', 9.99, 7, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'COLOR', 'SILVER');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('287 Retro China-Chic radio zircon Bracelet Bag', '287-retro-china-chic-radio-zircon-bracelet-bag', 'Product description here', 69.99, 9, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('287 Retro China-Chic radio zircon Bracelet Bag', '287-retro-china-chic-radio-zircon-bracelet-bag', 'Product description here', 69.99, 9, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Red');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('287 Retro China-Chic radio zircon Bracelet Bag', '287-retro-china-chic-radio-zircon-bracelet-bag', 'Product description here', 69.99, 9, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('518 Classic fashion high-end texture simple temperament ladies  bag', '518-classic-fashion-high-end-texture-simple-temperament-ladies-bag', 'Product description here', 49.99, 9, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('518 Classic fashion high-end texture simple temperament ladies  bag', '518-classic-fashion-high-end-texture-simple-temperament-ladies-bag', 'Product description here', 49.99, 9, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'White');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('518 Classic fashion high-end texture simple temperament ladies  bag', '518-classic-fashion-high-end-texture-simple-temperament-ladies-bag', 'Product description here', 49.99, 9, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'Black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('519 Simple Peplum Pleated Crossbody Shoulder Bag', '519-simple-peplum-pleated-crossbody-shoulder-bag', 'Product description here', 89.99, 9, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('520 Elegant design atmospheric women\'s bag', '520-elegant-design-atmospheric-women\'s-bag', 'Product description here', 99.99, 9, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('520 Elegant design atmospheric women\'s bag', '520-elegant-design-atmospheric-women\'s-bag', 'Product description here', 99.99, 9, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'White');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('520 Elegant design atmospheric women\'s bag', '520-elegant-design-atmospheric-women\'s-bag', 'Product description here', 99.99, 9, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Color', 'Black');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('521 Design Light Luxury Gold Rose Shoulder Cell Phone Bag', '521-design-light-luxury-gold-rose-shoulder-cell-phone-bag', 'Product description here', 59.99, 9, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('522 ladies bag collection moisture-proof transparent protective bag', '522-ladies-bag-collection-moisture-proof-transparent-protective-bag', 'Product description here', 69.99, 9, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('822 Design Chain Golden Crossbody bracelet Bag', '822-design-chain-golden-crossbody-bracelet-bag', 'Product description here', 25.99, 9, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('822 Design Chain Golden Crossbody bracelet Bag', '822-design-chain-golden-crossbody-bracelet-bag', 'Product description here', 25.99, 9, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'gold');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('822 Design Chain Golden Crossbody bracelet Bag', '822-design-chain-golden-crossbody-bracelet-bag', 'Product description here', 25.99, 9, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'color', 'silver');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('823 Alloy Cute Love bead shoulder bag', '823-alloy-cute-love-bead-shoulder-bag', 'Product description here', 78.99, 9, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('538 klein blue Woolen one-piece coat', '538-klein-blue-woolen-one-piece-coat', 'Product description here', 110.00, 10, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('538 klein blue Woolen one-piece coat', '538-klein-blue-woolen-one-piece-coat', 'Product description here', 110.00, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'M');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('538 klein blue Woolen one-piece coat', '538-klein-blue-woolen-one-piece-coat', 'Product description here', 110.00, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'L');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('538 klein blue Woolen one-piece coat', '538-klein-blue-woolen-one-piece-coat', 'Product description here', 110.00, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'XL');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('545 Fashionable Jeans Outfit (Top+Pants)', '545-fashionable-jeans-outfit-(top+pants)', 'Product description here', 69.99, 10, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('545 Fashionable Jeans Outfit (Top+Pants)', '545-fashionable-jeans-outfit-(top+pants)', 'Product description here', 69.99, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'M');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('545 Fashionable Jeans Outfit (Top+Pants)', '545-fashionable-jeans-outfit-(top+pants)', 'Product description here', 69.99, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'L');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('545 Fashionable Jeans Outfit (Top+Pants)', '545-fashionable-jeans-outfit-(top+pants)', 'Product description here', 69.99, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'Size', 'XL');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id) 
                        VALUES ('567 Colorful oversize T-shirt', '567-colorful-oversize-t-shirt', 'Product description here', 25.99, 10, 1, 'SKU not found', 1, NULL);
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('567 Colorful oversize T-shirt', '567-colorful-oversize-t-shirt', 'Product description here', 25.99, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'M');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('567 Colorful oversize T-shirt', '567-colorful-oversize-t-shirt', 'Product description here', 25.99, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'L');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('567 Colorful oversize T-shirt', '567-colorful-oversize-t-shirt', 'Product description here', 25.99, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', 'XL');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('567 Colorful oversize T-shirt', '567-colorful-oversize-t-shirt', 'Product description here', 25.99, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', '2XL');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('567 Colorful oversize T-shirt', '567-colorful-oversize-t-shirt', 'Product description here', 25.99, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', '3XL');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('567 Colorful oversize T-shirt', '567-colorful-oversize-t-shirt', 'Product description here', 25.99, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', '4XL');
INSERT INTO products (name, slug, description, price, category_id, stock, sku, is_master, master_product_id, variation_name, variation_value) 
                          VALUES ('567 Colorful oversize T-shirt', '567-colorful-oversize-t-shirt', 'Product description here', 25.99, 10, 1, 'SKU not found', 0, (LAST_INSERT_ID()), 'specification', '5XL');
