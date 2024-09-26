<?php
class ProductVariations {
    private $conn;
    private $table_name = "product_variations";

    // Product variation properties
    public $id;
    public $product_id;
    public $color;
    public $gems;
    public $alloy;
    public $size;
    public $price;
    public $stock;
    public $created_at;
    public $updated_at;

    // Constructor to initialize the database connection
    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new product variation
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " 
                  (product_id, color, gems, alloy, size, price, stock, created_at, updated_at) 
                  VALUES (:product_id, :color, :gems, :alloy, :size, :price, :stock, NOW(), NOW())";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->product_id = htmlspecialchars($this->sanitize($this->product_id));
        $this->color = htmlspecialchars($this->sanitize($this->color));
        $this->gems = htmlspecialchars($this->sanitize($this->gems));
        $this->alloy = htmlspecialchars($this->sanitize($this->alloy));
        $this->size = htmlspecialchars($this->sanitize($this->size));
        $this->price = htmlspecialchars($this->sanitize($this->price));
        $this->stock = htmlspecialchars($this->sanitize($this->stock));

        // Bind parameters
        $stmt->bindParam(':product_id', $this->product_id);
        $stmt->bindParam(':color', $this->color);
        $stmt->bindParam(':gems', $this->gems);
        $stmt->bindParam(':alloy', $this->alloy);
        $stmt->bindParam(':size', $this->size);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':stock', $this->stock);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Read all variations for a product
    public function readByProductId() {
        $query = "SELECT id, color, gems, alloy, size, price, stock, created_at, updated_at 
                  FROM " . $this->table_name . " 
                  WHERE product_id = :product_id 
                  ORDER BY color, size";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':product_id', $this->product_id);
        $stmt->execute();

        return $stmt;
    }

    // Update a product variation
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET color = :color, gems = :gems, alloy = :alloy, size = :size, price = :price, 
                      stock = :stock, updated_at = NOW() 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->color = htmlspecialchars($this->sanitize($this->color));
        $this->gems = htmlspecialchars($this->sanitize($this->gems));
        $this->alloy = htmlspecialchars($this->sanitize($this->alloy));
        $this->size = htmlspecialchars($this->sanitize($this->size));
        $this->price = htmlspecialchars($this->sanitize($this->price));
        $this->stock = htmlspecialchars($this->sanitize($this->stock));
        $this->id = htmlspecialchars($this->sanitize($this->id));

        // Bind parameters
        $stmt->bindParam(':color', $this->color);
        $stmt->bindParam(':gems', $this->gems);
        $stmt->bindParam(':alloy', $this->alloy);
        $stmt->bindParam(':size', $this->size);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':stock', $this->stock);
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Delete a product variation
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

    // Sanitize input
    private function sanitize($input) {
        $input = $input ?? ''; // Convert null to an empty string
        return strip_tags($input);
    }
}
?>
