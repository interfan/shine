<?php
class Product {
    private $conn;
    private $table_name = "products";

    // Product properties
    public $id;
    public $name;
    public $slug;
    public $sku; // SKU property
    public $description;
    public $price;
    public $category_id;
    public $stock;
    public $created_at;
    public $updated_at;
    public $video;
    public $color;
    public $size;
    public $alloy; // Will be stored as JSON in DB and decoded into an array in PHP
    public $gems;  // Will be stored as JSON in DB and decoded into an array in PHP
    
    public $is_master; // New property
    public $master_product_id;
    public $is_disabled; // New property
    public $variation_name; // New property
    public $variation_value; // New property
    public $image; // Ensure this property is declared

    // NEW: These properties will hold the effective pricing from the pricebook system.
    public $lowest_price;
    public $standard_price;

    // 1. Constructor to initialize the database connection
    public function __construct($db) {
        $this->conn = $db;
    }

    // 2. Create a new product
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " 
            (name, slug, sku, description, price, category_id, stock, created_at, updated_at, video, color, size, alloy, gems, is_master, variation_name, variation_value) 
            VALUES (:name, :slug, :sku, :description, :price, :category_id, :stock, NOW(), NOW(), :video, :color, :size, :alloy, :gems, :is_master, :variation_name, :variation_value)";
        $stmt = $this->conn->prepare($query);

        // Encode alloy and gems as JSON before saving
        if (is_array($this->alloy)) {
            $this->alloy = json_encode($this->alloy);
        } else {
            $this->alloy = json_encode([$this->alloy]);
        }
        if (is_array($this->gems)) {
            $this->gems = json_encode($this->gems);
        } else {
            $this->gems = json_encode([$this->gems]);
        }
        if (is_array($this->color)) {
            $this->color = json_encode($this->color);
        } else {
            $this->color = json_encode([$this->color]);
        }
        if (is_array($this->size)) {
            $this->size = json_encode($this->size);
        } else {
            $this->size = json_encode([$this->size]);
        }

        // Sanitize input for other fields
        $this->name = htmlspecialchars($this->sanitize($this->name));
        $this->slug = htmlspecialchars($this->sanitize($this->slug));
        $this->sku = htmlspecialchars($this->sanitize($this->sku));
        $this->description = htmlspecialchars($this->sanitize($this->description));
        $this->price = htmlspecialchars($this->sanitize($this->price));
        $this->category_id = htmlspecialchars($this->sanitize($this->category_id));
        $this->stock = htmlspecialchars($this->sanitize($this->stock));
        $this->video = htmlspecialchars($this->sanitize($this->video));
        $this->is_master = htmlspecialchars($this->sanitize($this->is_master));
        $this->variation_name = htmlspecialchars($this->sanitize($this->variation_name));
        $this->variation_value = htmlspecialchars($this->sanitize($this->variation_value));

        // Bind parameters
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':sku', $this->sku);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':category_id', $this->category_id);
        $stmt->bindParam(':stock', $this->stock);
        $stmt->bindParam(':video', $this->video);
        $stmt->bindParam(':color', $this->color);
        $stmt->bindParam(':size', $this->size);
        $stmt->bindParam(':alloy', $this->alloy);
        $stmt->bindParam(':gems', $this->gems);
        $stmt->bindParam(':is_master', $this->is_master);
        $stmt->bindParam(':variation_name', $this->variation_name);
        $stmt->bindParam(':variation_value', $this->variation_value);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    // 3. Read all products (returns an array with decoded JSON fields and effective pricing)
    public function readAll() {
        $query = "SELECT id, name, slug, sku, description, price, category_id, stock, created_at, updated_at, video, color, size, alloy, gems, is_master, is_disabled, variation_name, variation_value
                  FROM " . $this->table_name . " ORDER BY name";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Decode the JSON fields for color, size, alloy, and gems
        foreach ($results as &$row) {
            $row['color'] = ($row['color'] !== null) ? json_decode($row['color'], true) : [];
            $row['size']  = ($row['size'] !== null)  ? json_decode($row['size'], true)  : [];
            $row['alloy'] = ($row['alloy'] !== null) ? json_decode($row['alloy'], true) : [];
            $row['gems']  = ($row['gems'] !== null)  ? json_decode($row['gems'], true)  : [];
        }

        // Retrieve effective pricing using the Pricebook system
        include_once __DIR__ . '/PricebookPrice.php';
        $pricebookPrice = new PricebookPrice($this->conn);
        foreach ($results as &$row) {
            $pricing = $pricebookPrice->getProductPricing($row['id']);
            if (!empty($pricing['lowest_price'])) {
                $row['lowest_price'] = $pricing['lowest_price'];
            } else {
                $row['lowest_price'] = $row['price'];
            }
            $row['standard_price'] = (!empty($pricing['standard_price'])) ? $pricing['standard_price'] : $row['price'];
        }

        return $results;
    }

    // 4. Read one product by slug (populates the product object with effective pricing)
    public function readOne() {
        $query = "SELECT p.id, p.name, p.slug, p.sku, p.description, p.price, p.category_id, p.stock, p.video, p.color, p.size, p.alloy, p.gems, p.is_master, p.master_product_id, p.is_disabled, p.variation_name, p.variation_value, i.image
                  FROM " . $this->table_name . " p
                  LEFT JOIN product_images i ON p.id = i.product_id AND i.is_default = 1
                  WHERE p.slug = :slug
                  LIMIT 0,1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':slug', $this->slug);
        if ($stmt->execute()) {
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            if ($row) {
                $this->id = $row['id'];
                $this->name = $row['name'];
                $this->slug = $row['slug'];
                $this->sku = $row['sku'];
                $this->description = $row['description'];
                // Retrieve pricing using PricebookPrice
                include_once __DIR__ . '/PricebookPrice.php';
                $pricebookPrice = new PricebookPrice($this->conn);
                $pricing = $pricebookPrice->getProductPricing($row['id']);
                if (!empty($pricing['lowest_price'])) {
                    $this->lowest_price = $pricing['lowest_price'];
                } else {
                    $this->lowest_price = $row['price'];
                }
                $this->standard_price = (!empty($pricing['standard_price'])) ? $pricing['standard_price'] : $row['price'];
                $this->price = $this->lowest_price; // Optionally assign lowest price to price property.
                $this->category_id = $row['category_id'];
                $this->stock = $row['stock'];
                $this->video = $row['video'];
                $this->color = json_decode($row['color'], true);
                $this->size = json_decode($row['size'], true);
                $this->alloy = json_decode($row['alloy'], true);
                $this->gems = json_decode($row['gems'], true);
                $this->is_master = $row['is_master'];
                $this->master_product_id = $row['master_product_id'];
                $this->is_disabled = $row['is_disabled'];
                $this->variation_name = $row['variation_name'];
                $this->variation_value = $row['variation_value'];
                $this->image = $row['image'];
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    // 5. Read one product by ID (populates the product object with effective pricing)
    public function readOneById() {
        $query = "SELECT p.id, p.name, p.slug, p.sku, p.description, p.price, p.category_id, p.stock, p.video, p.color, p.size, p.alloy, p.gems, i.image
                  FROM " . $this->table_name . " p
                  LEFT JOIN product_images i ON p.id = i.product_id AND i.is_default = 1
                  WHERE p.id = :id
                  LIMIT 0,1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
        if ($stmt->execute()) {
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            if ($row) {
                $this->name = $row['name'];
                $this->slug = $row['slug'];
                $this->sku = $row['sku'];
                $this->description = $row['description'];
                include_once __DIR__ . '/PricebookPrice.php';
                $pricebookPrice = new PricebookPrice($this->conn);
                $pricing = $pricebookPrice->getProductPricing($row['id']);
                if (!empty($pricing['lowest_price'])) {
                    $this->lowest_price = $pricing['lowest_price'];
                } else {
                    $this->lowest_price = $row['price'];
                }
                $this->standard_price = (!empty($pricing['standard_price'])) ? $pricing['standard_price'] : $row['price'];
                $this->price = $this->lowest_price; // Optionally assign lowest price to price property.
                $this->category_id = $row['category_id'];
                $this->stock = $row['stock'];
                $this->video = $row['video'];
                $this->color = json_decode($row['color'], true);
                $this->size = json_decode($row['size'], true);
                $this->alloy = json_decode($row['alloy'], true);
                $this->gems = json_decode($row['gems'], true);
                $this->image = $row['image'];
                return true;
            }
        }
        return false;
    }

    // 6. Update a product
    public function update() {
        $query = "UPDATE products SET 
                    name = :name,
                    slug = :slug,
                    description = :description,
                    price = :price,
                    category_id = :category_id,
                    stock = :stock,
                    video = :video,
                    color = :color,
                    size = :size,
                    alloy = :alloy,
                    gems = :gems,
                    sku = :sku,
                    is_master = :is_master,
                    master_product_id = :master_product_id,
                    is_disabled = :is_disabled
                  WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        // Encode alloy, gems, color, and size as JSON before updating
        if (is_array($this->alloy)) {
            $this->alloy = json_encode($this->alloy);
        } else {
            $this->alloy = json_encode([$this->alloy]);
        }
        if (is_array($this->gems)) {
            $this->gems = json_encode($this->gems);
        } else {
            $this->gems = json_encode([$this->gems]);
        }
        if (is_array($this->color)) {
            $this->color = json_encode($this->color);
        } else {
            $this->color = json_encode([$this->color]);
        }
        if (is_array($this->size)) {
            $this->size = json_encode($this->size);
        } else {
            $this->size = json_encode([$this->size]);
        }

        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':category_id', $this->category_id);
        $stmt->bindParam(':stock', $this->stock);
        $stmt->bindParam(':video', $this->video);
        $stmt->bindParam(':color', $this->color);
        $stmt->bindParam(':size', $this->size);
        $stmt->bindParam(':alloy', $this->alloy);
        $stmt->bindParam(':gems', $this->gems);
        $stmt->bindParam(':sku', $this->sku);
        $stmt->bindParam(':is_master', $this->is_master);
        $stmt->bindParam(':master_product_id', $this->master_product_id);
        $stmt->bindParam(':is_disabled', $this->is_disabled);
        $stmt->bindParam(':id', $this->id);
        return $stmt->execute();
    }

    // 7. Delete a product
    public function delete() {
        $query = "DELETE FROM " . $this->table_name . " WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $this->id = htmlspecialchars($this->sanitize($this->id));
        $stmt->bindParam(':id', $this->id);
        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    // 8. Disable a product
    public function disable() {
        $query = "UPDATE " . $this->table_name . " SET is_disabled = 1 WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
        return $stmt->execute();
    }

    // 9. Enable a product
    public function enable() {
        $query = "UPDATE " . $this->table_name . " SET is_disabled = 0 WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
        return $stmt->execute();
    }

    // 10. Search products by name
    public function searchByName($name) {
        $query = "SELECT id, name FROM products WHERE name LIKE :name";
        $stmt = $this->conn->prepare($query);
        $stmt->bindValue(':name', '%' . $name . '%', PDO::PARAM_STR);
        $stmt->execute();
        return $stmt;
    }

    // 11. Search function to get products based on various filters
    public function search($search, $categoryFilter, $priceMin, $priceMax, $stockStatus, 
                        $color, $size, $alloy, $gems, $sku, $isMaster, $isDisabled, 
                        $variationName, $variationValue, $limit, $offset) {
        // The subquery calculates the effective (lowest) price from the pricebook system for each product.
        $query = "SELECT p.*, (
                        SELECT MIN(pp.price)
                        FROM pricebook_prices pp
                        JOIN pricebooks pb ON pp.pricebook_id = pb.id
                        WHERE pp.product_id = p.id
                        AND pb.is_enabled = 1
                        AND pp.price IS NOT NULL
                        AND pp.price > 0
                ) AS effective_price
                FROM products p
                WHERE 1=1";
        
        // Append conditions based on filters
        if ($search) {
            $query .= " AND p.name LIKE :search";
        }
        if ($categoryFilter) {
            $query .= " AND p.category_id = :category";
        }
        // Use effective_price for filtering if either priceMin or priceMax is provided.
        if ($priceMin || $priceMax) {
            $query .= " AND effective_price BETWEEN :priceMin AND :priceMax";
        }
        if ($stockStatus == 'in_stock') {
            $query .= " AND p.stock > 0";
        } else {
            $query .= " AND p.stock = 0";
        }
        if ($color) {
            $query .= " AND p.color LIKE :color";
        }
        if ($size) {
            $query .= " AND p.size LIKE :size";
        }
        if ($alloy) {
            $query .= " AND p.alloy LIKE :alloy";
        }
        if ($gems) {
            $query .= " AND p.gems LIKE :gems";
        }
        if ($sku) {
            $query .= " AND p.sku LIKE :sku";
        }
        if ($isMaster !== '') {
            $query .= " AND p.is_master = :isMaster";
        }
        if ($isDisabled !== '') {
            $query .= " AND p.is_disabled = :isDisabled";
        }
        if ($variationName) {
            $query .= " AND p.variation_name LIKE :variationName";
        }
        if ($variationValue) {
            $query .= " AND p.variation_value LIKE :variationValue";
        }
        
        $query .= " LIMIT :offset, :limit";
        
        $stmt = $this->conn->prepare($query);
        
        // Bind parameters
        if ($search) {
            $stmt->bindValue(':search', '%' . $search . '%');
        }
        if ($categoryFilter) {
            $stmt->bindValue(':category', $categoryFilter);
        }
        if ($priceMin || $priceMax) {
            $stmt->bindValue(':priceMin', $priceMin);
            $stmt->bindValue(':priceMax', $priceMax);
        }
        if ($color) {
            $stmt->bindValue(':color', '%' . $color . '%');
        }
        if ($size) {
            $stmt->bindValue(':size', '%' . $size . '%');
        }
        if ($alloy) {
            $stmt->bindValue(':alloy', '%' . $alloy . '%');
        }
        if ($gems) {
            $stmt->bindValue(':gems', '%' . $gems . '%');
        }
        if ($sku) {
            $stmt->bindValue(':sku', '%' . $sku . '%');
        }
        if ($isMaster !== '') {
            $stmt->bindValue(':isMaster', $isMaster);
        }
        if ($isDisabled !== '') {
            $stmt->bindValue(':isDisabled', $isDisabled);
        }
        if ($variationName) {
            $stmt->bindParam(':variationName', $variationName);
        }
        if ($variationValue) {
            $stmt->bindParam(':variationValue', $variationValue);
        }
        
        $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
        $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
        
        $stmt->execute();
        return $stmt;
    }


    // 12. Count all products with filters
    public function countAll($search = '', $categoryFilter = null, $priceMin = null, $priceMax = null, $stockStatus = 'in_stock', $color = '', $size = '', $alloy = '', $gems = '', $sku = '', $isMaster = '', $isDisabled = '', $variationName = '', $variationValue = '') {
        $query = "SELECT COUNT(*) FROM products WHERE 1=1";
        if ($search) {
            $query .= " AND name LIKE :search";
        }
        if ($categoryFilter !== null && $categoryFilter !== '') {
            $query .= " AND category_id = :category";
        }
        if ($priceMin !== null || $priceMax !== null) {
            $query .= " AND price BETWEEN :priceMin AND :priceMax";
        }
        if ($stockStatus == 'in_stock') {
            $query .= " AND stock > 0";
        } else {
            $query .= " AND stock = 0";
        }
        if ($color) {
            $query .= " AND color LIKE :color";
        }
        if ($size) {
            $query .= " AND size LIKE :size";
        }
        if ($alloy) {
            $query .= " AND alloy LIKE :alloy";
        }
        if ($gems) {
            $query .= " AND gems LIKE :gems";
        }
        if ($sku) {
            $query .= " AND sku LIKE :sku";
        }
        if ($isMaster !== '') {
            $query .= " AND is_master = :isMaster";
        }
        if ($isDisabled !== '') {
            $query .= " AND is_disabled = :isDisabled";
        }
        if ($variationName) {
            $query .= " AND variation_name LIKE :variationName";
        }
        if ($variationValue) {
            $query .= " AND variation_value LIKE :variationValue";
        }
        
        $stmt = $this->conn->prepare($query);
        if ($search) {
            $stmt->bindValue(':search', '%' . $search . '%');
        }
        if ($categoryFilter !== null && $categoryFilter !== '') {
            $stmt->bindValue(':category', $categoryFilter);
        }
        if ($priceMin !== null) {
            $stmt->bindValue(':priceMin', $priceMin);
        }
        if ($priceMax !== null) {
            $stmt->bindValue(':priceMax', $priceMax);
        }
        if ($color) {
            $stmt->bindValue(':color', '%' . $color . '%');
        }
        if ($size) {
            $stmt->bindValue(':size', '%' . $size . '%');
        }
        if ($alloy) {
            $stmt->bindValue(':alloy', '%' . $alloy . '%');
        }
        if ($gems) {
            $stmt->bindValue(':gems', '%' . $gems . '%');
        }
        if ($sku) {
            $stmt->bindValue(':sku', '%' . $sku . '%');
        }
        if ($isMaster !== '') {
            $stmt->bindValue(':isMaster', $isMaster);
        }
        if ($isDisabled !== '') {
            $stmt->bindValue(':isDisabled', $isDisabled);
        }
        if ($variationName) {
            $stmt->bindValue(':variationName', '%' . $variationName . '%');
        }
        if ($variationValue) {
            $stmt->bindValue(':variationValue', '%' . $variationValue . '%');
        }
        
        $stmt->execute();
        return $stmt->fetchColumn();
    }

    // 13. Remove connection (for variants)
    public function removeConnection($connectedProductId) {
        $query = "UPDATE products SET master_product_id = NULL WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $connectedProductId);
        return $stmt->execute();
    }

    // 14. Remove master connection
    public function removeMasterConnection($masterProductId) {
        $query = "UPDATE products SET master_product_id = NULL WHERE id = :product_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':product_id', $this->id);
        return $stmt->execute();
    }

    // 15. Get variants for a product
    public function getVariants() {
        $query = "SELECT * FROM products WHERE master_product_id = :master_product_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':master_product_id', $this->id);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // 16. Get master products (non-variants)
    public function getMasters() {
        $query = "SELECT * FROM products WHERE master_product_id IS NULL AND id != :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // 17. Get all products by category
    public function readAllByCategory($category_id, $limit = 12, $offset = 0, $sort_by = null) {
        $order_by = 'p.name'; // default sort
        $order_dir = 'ASC';   // default direction
        if ($sort_by === 'price_asc') {
            $order_by = 'p.price';
            $order_dir = 'ASC';
        } elseif ($sort_by === 'price_desc') {
            $order_by = 'p.price';
            $order_dir = 'DESC';
        }
        $query = "SELECT p.id, p.name, p.slug, p.sku, p.description, p.price, p.category_id, p.stock, p.created_at, p.updated_at, p.video, p.color, p.size, p.alloy, p.gems, p.is_master, p.is_disabled, i.image
                  FROM products p
                  LEFT JOIN product_images i ON p.id = i.product_id AND i.is_default = 1
                  WHERE p.category_id = :category_id
                  ORDER BY $order_by $order_dir
                  LIMIT :limit OFFSET :offset";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':category_id', $category_id, PDO::PARAM_INT);
        $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
        $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt;
    }

    // 18. Get all products by category slug with sorting
    public function readAllByCategorySlug($slug, $limit, $offset, $sort_by) {
        // Determine the ORDER BY clause. When sorting by price, sort on the subquery value "effective_price"
        if ($sort_by === 'price_asc') {
            $order_by = "effective_price ASC";
        } elseif ($sort_by === 'price_desc') {
            $order_by = "effective_price DESC";
        } else {
            $order_by = "p.id DESC";
        }
        
        // The subquery retrieves the lowest price from the enabled pricebooks for each product.
        $query = "SELECT p.*, i.image,
                  (
                      SELECT MIN(pp.price)
                      FROM pricebook_prices pp
                      JOIN pricebooks pb ON pp.pricebook_id = pb.id
                      WHERE pp.product_id = p.id
                        AND pb.is_enabled = 1
                        AND pp.price IS NOT NULL
                        AND pp.price > 0
                  ) AS effective_price
                  FROM " . $this->table_name . " p 
                  JOIN categories c ON p.category_id = c.id 
                  LEFT JOIN product_images i ON p.id = i.product_id AND i.is_default = 1
                  WHERE c.slug = :slug 
                  ORDER BY $order_by
                  LIMIT :limit OFFSET :offset";
        
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':slug', $slug);
        $stmt->bindParam(':limit', $limit, PDO::PARAM_INT);
        $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
        
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        // Decode the JSON fields so that alloy, gems, color, and size are returned as arrays
        foreach ($results as &$row) {
            $row['alloy'] = ($row['alloy'] !== null) ? json_decode($row['alloy'], true) : [];
            $row['gems']  = ($row['gems'] !== null)  ? json_decode($row['gems'], true)  : [];
            $row['color'] = ($row['color'] !== null) ? json_decode($row['color'], true) : [];
            $row['size']  = ($row['size'] !== null)  ? json_decode($row['size'], true)  : [];
        }
        
        return $results;
    }

    // 19. Sanitize input
    private function sanitize($input) {
        $input = $input ?? '';
        return strip_tags($input);
    }

    // 20. Static method to load allowed options from a JSON configuration file
    public static function getAllowedOptions() {
        $configFile = __DIR__ . '/../config/product_options.json';
        if (file_exists($configFile)) {
            $jsonData = file_get_contents($configFile);
            return json_decode($jsonData, true);
        }
        return [];
    }
}
?>
