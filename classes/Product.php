<?php
class Product
{
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
    public $alloy;
    public $gems;

    public $is_master; // New property
    public $master_product_id;
    public $is_disabled; // New property
    public $variation_name; // New property
    public $variation_value; // New property
    public $image; // Ensure this property is declared


    // Constructor to initialize the database connection
    public function __construct($db)
    {
        $this->conn = $db;
    }

    // Create a new product
    public function create()
    {
        $query = "INSERT INTO " . $this->table_name . " 
        (name, slug, sku, description, price, category_id, stock, created_at, updated_at, video, color, size, alloy, gems, is_master, variation_name, variation_value) 
        VALUES (:name, :slug, :sku, :description, :price, :category_id, :stock, NOW(), NOW(), :video, :color, :size, :alloy, :gems, :is_master, :variation_name, :variation_value)";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->name = htmlspecialchars($this->sanitize($this->name));
        $this->slug = htmlspecialchars($this->sanitize($this->slug));
        $this->sku = htmlspecialchars($this->sanitize($this->sku));
        $this->description = htmlspecialchars($this->sanitize($this->description));
        $this->price = htmlspecialchars($this->sanitize($this->price));
        $this->category_id = htmlspecialchars($this->sanitize($this->category_id));
        $this->stock = htmlspecialchars($this->sanitize($this->stock));
        $this->video = htmlspecialchars($this->sanitize($this->video));
        $this->color = htmlspecialchars($this->sanitize($this->color));
        $this->size = htmlspecialchars($this->sanitize($this->size));
        $this->alloy = htmlspecialchars($this->sanitize($this->alloy));
        $this->gems = htmlspecialchars($this->sanitize($this->gems));
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

    // Read all products
    public function readAll()
    {
        $query = "SELECT id, name, slug, sku, description, price, category_id, stock, created_at, updated_at, video, color, size, alloy, gems, is_master, is_disabled, variation_name, variation_value
                  FROM " . $this->table_name . " ORDER BY name";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    // Read one product
    public function readOne()
    {
        $query = "SELECT p.name, p.slug, p.sku, p.description, p.price, p.category_id, p.stock, p.video, p.color, p.size, p.alloy, p.gems, p.is_master, p.master_product_id, p.is_disabled, p.variation_name, p.variation_value, i.image
                FROM " . $this->table_name . " p
                LEFT JOIN product_images i ON p.id = i.product_id AND i.is_default = 1
                WHERE p.id = :id
                LIMIT 0,1";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            $row = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($row) {
                // Set product properties
                $this->name = $row['name'];
                $this->slug = $row['slug'];
                $this->sku = $row['sku'];
                $this->description = $row['description'];
                $this->price = $row['price'];
                $this->category_id = $row['category_id'];
                $this->stock = $row['stock'];
                $this->video = $row['video'];
                $this->color = $row['color'];
                $this->size = $row['size'];
                $this->alloy = $row['alloy'];
                $this->gems = $row['gems'];
                $this->is_master = $row['is_master'];
                $this->master_product_id = $row['master_product_id'];
                $this->is_disabled = $row['is_disabled']; // Set new property
                $this->variation_name = $row['variation_name']; // Set new property
                $this->variation_value = $row['variation_value']; // Set new property
                $this->image = $row['image']; // Set image property

                return true;
            } else {
                // No record found
                return false;
            }
        } else {
            // Query failed
            return false;
        }
    }

    // Method to disable a product
    public function disable()
    {
        $query = "UPDATE " . $this->table . " SET is_disabled = 1 WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(':id', $this->id);

        return $stmt->execute();
    }

    // Method to enable a product
    public function enable()
    {
        $query = "UPDATE " . $this->table . " SET is_disabled = 0 WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(':id', $this->id);

        return $stmt->execute();
    }

    // In Product.php
    // In Product.php
    public function search($search, $categoryFilter, $priceMin, $priceMax, $stock, $color, $size, $alloy, $gems, $sku, $isMaster, $isDisabled, $variationName, $variationValue, $limit, $offset)
    {
        $query = "SELECT * FROM products WHERE 1=1";

        // Add filters if variables are provided
        if ($search) {
            $query .= " AND name LIKE :search";
        }
        if ($categoryFilter) {
            $query .= " AND category_id = :category";
        }
        if ($priceMin !== null || $priceMax !== null) {
            $query .= " AND price BETWEEN :priceMin AND :priceMax";
        }
        if ($stock) {
            $query .= " AND stock = :stock"; // Fixed the typo from 'sto' to 'stock'
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

        // Add pagination
        $query .= " LIMIT :offset, :limit";

        $stmt = $this->conn->prepare($query);

        // Bind parameters if variables are provided
        if ($search) {
            $stmt->bindValue(':search', '%' . $search . '%');
        }
        if ($categoryFilter) {
            $stmt->bindValue(':category', $categoryFilter);
        }
        if ($priceMin !== null) {
            $stmt->bindValue(':priceMin', $priceMin);
        } else {
            $stmt->bindValue(':priceMin', 0); // Default to 0 if priceMin is null
        }
        if ($priceMax !== null) {
            $stmt->bindValue(':priceMax', $priceMax);
        } else {
            $stmt->bindValue(':priceMax', PHP_INT_MAX); // Default to max possible value if priceMax is null
        }
        if ($stock) {
            $stmt->bindValue(':stock', $stock);
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

        // Bind pagination values
        $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
        $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);

        // Execute the query
        $stmt->execute();

        // Return the result
        return $stmt;
    }


    public function countAll($search = '', $categoryFilter = null, $priceMin = null, $priceMax = null, $stock = null, $color = '', $size = '', $alloy = '', $gems = '', $sku = '', $isMaster = '', $isDisabled = '', $variationName = '', $variationValue = '')
    {
        // Base query
        $query = "SELECT COUNT(*) FROM products WHERE 1=1";

        // Initialize array for storing bound parameters
        $params = [];

        // Add filters if variables are provided
        if ($search) {
            $query .= " AND name LIKE :search";
            $params[':search'] = '%' . $search . '%';
        }
        if ($categoryFilter !== null && $categoryFilter !== '') {
            $query .= " AND category_id = :category";
            $params[':category'] = $categoryFilter;
        }
        if ($priceMin !== null || $priceMax !== null) {
            $query .= " AND price BETWEEN :priceMin AND :priceMax";
            $params[':priceMin'] = $priceMin !== null ? $priceMin : 0; // Use 0 as default if no min price
            $params[':priceMax'] = $priceMax !== null ? $priceMax : PHP_INT_MAX; // Use max possible value if no max price
        }
        if ($stock !== null && $stock !== '') {
            $query .= " AND stock = :stock";
            $params[':stock'] = $stock;
        }
        if ($color) {
            $query .= " AND color LIKE :color";
            $params[':color'] = '%' . $color . '%';
        }
        if ($size) {
            $query .= " AND size LIKE :size";
            $params[':size'] = '%' . $size . '%';
        }
        if ($alloy) {
            $query .= " AND alloy LIKE :alloy";
            $params[':alloy'] = '%' . $alloy . '%';
        }
        if ($gems) {
            $query .= " AND gems LIKE :gems";
            $params[':gems'] = '%' . $gems . '%';
        }
        if ($sku) {
            $query .= " AND sku LIKE :sku";
            $params[':sku'] = '%' . $sku . '%';
        }
        if ($isMaster !== '') {
            $query .= " AND is_master = :isMaster";
            $params[':isMaster'] = $isMaster;
        }
        if ($isDisabled !== '') {
            $query .= " AND is_disabled = :isDisabled";
            $params[':isDisabled'] = $isDisabled;
        }
        if ($variationName) {
            $query .= " AND variation_name LIKE :variationName";
            $params[':variationName'] = '%' . $variationName . '%';
        }
        if ($variationValue) {
            $query .= " AND variation_value LIKE :variationValue";
            $params[':variationValue'] = '%' . $variationValue . '%';
        }

        // Prepare the SQL statement
        $stmt = $this->conn->prepare($query);

        // Bind all the parameters from the $params array
        foreach ($params as $param => $value) {
            $stmt->bindValue($param, $value);
        }

        // Execute the query
        $stmt->execute();

        // Fetch and return the count
        return $stmt->fetchColumn();
    }

    // Method to count products in a category with optional master_product_id check and is_disabled = false
    public function countCategoryProducts($category_id, $check_master_product_id = null)
    {
        // Start the base query for counting
        $query = "SELECT COUNT(*) as total
              FROM products p
              WHERE p.category_id = :category_id
              AND p.is_disabled = 0";  // Ensure only enabled products are counted

        // Add condition to check for master_product_id presence
        if ($check_master_product_id === 'with') {
            $query .= " AND p.master_product_id IS NOT NULL"; // Count products with master_product_id
        } elseif ($check_master_product_id === 'without') {
            $query .= " AND p.master_product_id IS NULL"; // Count products without master_product_id
        }

        // Prepare the statement
        $stmt = $this->conn->prepare($query);

        // Bind the category ID
        $stmt->bindParam(':category_id', $category_id, PDO::PARAM_INT);

        // Execute the query
        $stmt->execute();

        // Fetch the total count
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        // Return the total count of products
        return $row['total'];
    }


    // Update a product
    public function update()
    {
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

        // Bind ID separately
        $stmt->bindParam(':id', $this->id);

        return $stmt->execute();
    }

    // Delete a product
    public function delete()
    {
        $query = "DELETE FROM " . $this->table_name . " WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->id = htmlspecialchars($this->sanitize($this->id));

        // Bind parameter
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    public function searchByName($name)
    {
        $query = "SELECT id, name FROM products WHERE name LIKE :name";
        $stmt = $this->conn->prepare($query);
        $stmt->bindValue(':name', '%' . $name . '%', PDO::PARAM_STR);
        $stmt->execute();
        return $stmt;
    }

    public function removeConnection($connectedProductId)
    {
        $query = "UPDATE products SET master_product_id = NULL WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $connectedProductId);
        return $stmt->execute();
    }

    public function removeMasterConnection($masterProductId)
    {
        $query = "UPDATE products SET master_product_id = NULL WHERE id = :product_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':product_id', $this->id);
        return $stmt->execute();
    }

    public function getVariants()
    {
        $query = "SELECT * FROM products WHERE master_product_id = :master_product_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':master_product_id', $this->id);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getMasters()
    {
        $query = "SELECT * FROM products WHERE master_product_id IS NULL AND id != :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Method to get all products by category with optional master_product_id check and is_disabled = false
    public function readAllByCategory($category_id, $limit = 12, $offset = 0, $sort_by = null, $check_master_product_id = null)
    {
        $order_by = 'p.name'; // default sort
        $order_dir = 'ASC';   // default direction

        // Handle sorting logic
        if ($sort_by === 'price_asc') {
            $order_by = 'p.price';
            $order_dir = 'ASC';
        } elseif ($sort_by === 'price_desc') {
            $order_by = 'p.price';
            $order_dir = 'DESC';
        }

        // Start the base query
        $query = "SELECT p.id, p.name, p.slug, p.sku, p.description, p.price, p.category_id, p.stock, p.created_at, p.updated_at, p.video, p.color, p.size, p.alloy, p.gems, p.is_master, p.is_disabled, i.image
              FROM products p
              LEFT JOIN product_images i ON p.id = i.product_id AND i.is_default = 1
              WHERE p.category_id = :category_id
              AND p.is_disabled = 0";  // Ensure only enabled products are selected

        // Add condition to check for master_product_id presence
        if ($check_master_product_id === 'with') {
            $query .= " AND p.master_product_id IS NOT NULL"; // Products with master_product_id
        } elseif ($check_master_product_id === 'without') {
            $query .= " AND p.master_product_id IS NULL"; // Products without master_product_id
        }

        // Add the ordering and pagination
        $query .= " ORDER BY $order_by $order_dir
                LIMIT :limit OFFSET :offset";

        // Prepare the statement
        $stmt = $this->conn->prepare($query);

        // Bind values
        $stmt->bindParam(':category_id', $category_id, PDO::PARAM_INT);
        $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
        $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);

        // Execute the query
        $stmt->execute();

        return $stmt;
    }



    // Sanitize input
    private function sanitize($input)
    {
        // Ensure that $input is a string before passing it to $this->sanitize
        $input = $input ?? ''; // Convert null to an empty string
        return strip_tags($input);
    }

    // Method to fetch product with translation and set class properties
public function getProductWithTranslation($language_code = 'en')
{
    $query = "
    SELECT 
        p.id, 
        p.sku, 
        p.price, 
        p.category_id, 
        p.stock, 
        p.created_at, 
        p.updated_at, 
        p.video, 
        p.is_master, 
        p.is_disabled, 
        p.color AS default_color, 
        p.size AS default_size, 
        p.alloy AS default_alloy, 
        p.gems AS default_gems, 
        p.name AS default_name, 
        p.description AS default_description,
        p.variation_name AS default_variation_name, 
        p.variation_value AS default_variation_value,
        
        COALESCE(pt.name, p.name) AS name, 
        COALESCE(pt.description, p.description) AS description,
        COALESCE(pt.variation_name, p.variation_name) AS variation_name,
        COALESCE(pt.variation_value, p.variation_value) AS variation_value,
        COALESCE(pt.color, p.color) AS color,
        COALESCE(pt.size, p.size) AS size,
        COALESCE(pt.alloy, p.alloy) AS alloy,
        COALESCE(pt.gems, p.gems) AS gems

    FROM 
        products p
    LEFT JOIN 
        product_translations pt ON p.id = pt.product_id AND pt.language_code = :language_code
    WHERE 
        p.id = :product_id
    ";

    // Prepare and execute the statement
    $stmt = $this->conn->prepare($query);
    $stmt->bindParam(':product_id', $this->id, PDO::PARAM_INT);  // Using class property
    $stmt->bindParam(':language_code', $language_code, PDO::PARAM_STR);
    $stmt->execute();

    // Fetch result as associative array
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($row) {
        // Set class properties based on the result
        $this->sku = $row['sku'];
        $this->price = $row['price'];
        $this->category_id = $row['category_id'];
        $this->stock = $row['stock'];
        $this->created_at = $row['created_at'];
        $this->updated_at = $row['updated_at'];
        $this->video = $row['video'];
        $this->is_master = $row['is_master'];
        $this->is_disabled = $row['is_disabled'];

        // Set translated or default values
        $this->name = $row['name'];
        $this->description = $row['description'];
        $this->variation_name = $row['variation_name'];
        $this->variation_value = $row['variation_value'];
        $this->color = $row['color'];
        $this->size = $row['size'];
        $this->alloy = $row['alloy'];
        $this->gems = $row['gems'];

        return true;  // Indicate successful fetch and property setting
    } else {
        return false;  // Indicate no result found
    }
}





    // Insert translation for a product
    public function addProductTranslation($product_id, $language_code, $name, $description, $color = null, $size = null, $alloy = null, $gems = null, $variation_name = null, $variation_value = null)
    {
        $query = "
        INSERT INTO product_translations (product_id, language_code, name, description, variation_name, variation_value, color, size, alloy, gems) 
        VALUES (:product_id, :language_code, :name, :description, :variation_name, :variation_value, :color, :size, :alloy, :gems)
    ";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':product_id', $product_id, PDO::PARAM_INT);
        $stmt->bindParam(':language_code', $language_code, PDO::PARAM_STR);
        $stmt->bindParam(':name', $name, PDO::PARAM_STR);
        $stmt->bindParam(':description', $description, PDO::PARAM_STR);
        $stmt->bindParam(':variation_name', $variation_name, PDO::PARAM_STR);
        $stmt->bindParam(':variation_value', $variation_value, PDO::PARAM_STR);
        $stmt->bindParam(':color', $color, PDO::PARAM_STR);
        $stmt->bindParam(':size', $size, PDO::PARAM_STR);
        $stmt->bindParam(':alloy', $alloy, PDO::PARAM_STR);
        $stmt->bindParam(':gems', $gems, PDO::PARAM_STR);

        return $stmt->execute();
    }
}
