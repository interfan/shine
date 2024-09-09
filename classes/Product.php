<?php
class Product {
    private $conn;
    private $table_name = "products";

    // Product properties
    public $id;
    public $name;
    public $slug;
    public $description;
    public $price;
    public $category_id;
    public $stock;
    public $image;
    public $created_at;
    public $updated_at;

    // Constructor to initialize the database connection
    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new product
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " 
                  (name, slug, description, price, category_id, stock, image, created_at, updated_at) 
                  VALUES (:name, :slug, :description, :price, :category_id, :stock, :image, NOW(), NOW())";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->name = htmlspecialchars($this->sanitize($this->name));
        $this->slug = htmlspecialchars($this->sanitize($this->slug));
        $this->description = htmlspecialchars($this->sanitize($this->description));
        $this->price = htmlspecialchars($this->sanitize($this->price));
        $this->category_id = htmlspecialchars($this->sanitize($this->category_id));
        $this->stock = htmlspecialchars($this->sanitize($this->stock));
        $this->image = htmlspecialchars($this->sanitize($this->image));

        // Bind parameters
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':category_id', $this->category_id);
        $stmt->bindParam(':stock', $this->stock);
        $stmt->bindParam(':image', $this->image);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Read all products
    public function readAll() {
        $query = "SELECT id, name, slug, description, price, category_id, stock, image, created_at, updated_at 
                  FROM " . $this->table_name . " ORDER BY name";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    // Read a single product by ID
    public function readOne() {
        $query = "SELECT id, name, slug, description, price, category_id, stock, image, created_at, updated_at 
                  FROM " . $this->table_name . " WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->id = htmlspecialchars($this->sanitize($this->id));

        // Bind parameter
        $stmt->bindParam(':id', $this->id);

        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        // Set object properties
        $this->name = $row['name'];
        $this->slug = $row['slug'];
        $this->description = $row['description'];
        $this->price = $row['price'];
        $this->category_id = $row['category_id'];
        $this->stock = $row['stock'];
        $this->image = $row['image'];
        $this->created_at = $row['created_at'];
        $this->updated_at = $row['updated_at'];
    }

    // Update a product
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET name = :name, slug = :slug, description = :description, price = :price, 
                      category_id = :category_id, stock = :stock, image = :image, updated_at = NOW() 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->name = htmlspecialchars($this->sanitize($this->name));
        $this->slug = htmlspecialchars($this->sanitize($this->slug));
        $this->description = htmlspecialchars($this->sanitize($this->description));
        $this->price = htmlspecialchars($this->sanitize($this->price));
        $this->category_id = htmlspecialchars($this->sanitize($this->category_id));
        $this->stock = htmlspecialchars($this->sanitize($this->stock));
        $this->image = htmlspecialchars($this->sanitize($this->image));
        $this->id = htmlspecialchars($this->sanitize($this->id));

        // Bind parameters
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':category_id', $this->category_id);
        $stmt->bindParam(':stock', $this->stock);
        $stmt->bindParam(':image', $this->image);
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Delete a product
    public function delete() {
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

    public function sanitize($input) {
        // Ensure that $input is a string before passing it to $this->sanitize
        $input = $input ?? ''; // Convert null to an empty string
        return strip_tags($input);
    }
}
?>
