<?php
class PricebookPrice {
    private $conn;
    private $table_name = "pricebook_prices";

    public $id;
    public $product_id;
    public $pricebook_id;
    public $price;       // Price value (decimal); if NULL or empty, the pricebook does not take effect
    public $is_default;  // 1 = default price entry, 0 = otherwise

    // Constructor to initialize the database connection
    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new price entry for a product
    public function create() {
        $query = "INSERT INTO " . $this->table_name . "
                  (product_id, pricebook_id, price, is_default)
                  VALUES (:product_id, :pricebook_id, :price, :is_default)";
        $stmt = $this->conn->prepare($query);

        $this->product_id = htmlspecialchars(strip_tags($this->product_id));
        $this->pricebook_id = htmlspecialchars(strip_tags($this->pricebook_id));
        $this->price = ($this->price === '' ? null : htmlspecialchars(strip_tags($this->price)));
        $this->is_default = htmlspecialchars(strip_tags($this->is_default));

        $stmt->bindParam(':product_id', $this->product_id);
        $stmt->bindParam(':pricebook_id', $this->pricebook_id);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':is_default', $this->is_default);

        if ($stmt->execute()) {
            $this->id = $this->conn->lastInsertId();
            return true;
        }
        return false;
    }

    // Update an existing price entry
    public function update() {
        $query = "UPDATE " . $this->table_name . "
                  SET price = :price, is_default = :is_default
                  WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $this->price = ($this->price === '' ? null : htmlspecialchars(strip_tags($this->price)));
        $this->is_default = htmlspecialchars(strip_tags($this->is_default));
        $this->id = htmlspecialchars(strip_tags($this->id));

        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':is_default', $this->is_default);
        $stmt->bindParam(':id', $this->id);
        return $stmt->execute();
    }

    // Delete a price entry
    public function delete() {
        $query = "DELETE FROM " . $this->table_name . " WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $this->id = htmlspecialchars(strip_tags($this->id));
        $stmt->bindParam(':id', $this->id);
        return $stmt->execute();
    }

    // Get price entry for a given product and pricebook
    public function getPrice($product_id, $pricebook_id) {
        $query = "SELECT * FROM " . $this->table_name . " 
                  WHERE product_id = :product_id AND pricebook_id = :pricebook_id LIMIT 0,1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':product_id', $product_id);
        $stmt->bindParam(':pricebook_id', $pricebook_id);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    /**
     * Get product pricing details.
     * Returns an associative array with keys:
     * - lowest_price: The lowest price among enabled pricebooks with a non-empty price.
     * - standard_price: The price from the standard pricebook (if available).
     */
    public function getProductPricing($product_id) {
        $query = "SELECT MIN(pp.price) AS lowest_price,
                         MAX(CASE WHEN pb.is_standard = 1 THEN pp.price ELSE NULL END) AS standard_price
                  FROM " . $this->table_name . " pp
                  JOIN pricebooks pb ON pp.pricebook_id = pb.id
                  WHERE pp.product_id = :product_id 
                    AND pb.is_enabled = 1
                    AND pp.price IS NOT NULL
                    AND pp.price > 0"; // Adjust condition if needed
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':product_id', $product_id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
?>
