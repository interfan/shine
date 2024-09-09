<?php
class Order {
    private $conn;
    private $table_name = "orders";

    public $id;
    public $user_id;
    public $status;
    public $total;
    public $created_at;
    public $updated_at;

    public function __construct($db) {
        $this->conn = $db;
    }

    /**
     * Create a new order.
     *
     * @return bool True on success, false on failure.
     */
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " 
                  SET user_id = :user_id, status = :status, total = :total, created_at = NOW(), updated_at = NOW()";

        $stmt = $this->conn->prepare($query);

        // Sanitize inputs
        $this->user_id = htmlspecialchars(strip_tags($this->user_id));
        $this->status = htmlspecialchars(strip_tags($this->status));
        $this->total = htmlspecialchars(strip_tags($this->total));

        // Bind parameters
        $stmt->bindParam(':user_id', $this->user_id);
        $stmt->bindParam(':status', $this->status);
        $stmt->bindParam(':total', $this->total);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    /**
     * Read orders for a specific user.
     *
     * @param int $user_id The user ID.
     * @return PDOStatement The result set.
     */
    public function readByUser($user_id) {
        $query = "SELECT id, user_id, status, total, created_at, updated_at 
                  FROM " . $this->table_name . " 
                  WHERE user_id = :user_id 
                  ORDER BY created_at DESC";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':user_id', $user_id);
        $stmt->execute();

        return $stmt;
    }

    /**
     * Read a single order by ID.
     *
     * @param int $id The order ID.
     * @return bool True on success, false on failure.
     */
    public function readOne() {
        $query = "SELECT id, user_id, status, total, created_at, updated_at 
                  FROM " . $this->table_name . " 
                  WHERE id = :id 
                  LIMIT 0,1";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            // Set properties
            $this->user_id = $row['user_id'];
            $this->status = $row['status'];
            $this->total = $row['total'];
            $this->created_at = $row['created_at'];
            $this->updated_at = $row['updated_at'];
            return true;
        }

        return false;
    }

    /**
     * Update the order status.
     *
     * @return bool True on success, false on failure.
     */
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET status = :status, updated_at = NOW() 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize inputs
        $this->status = htmlspecialchars(strip_tags($this->status));

        // Bind parameters
        $stmt->bindParam(':id', $this->id);
        $stmt->bindParam(':status', $this->status);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    /**
     * Delete an order.
     *
     * @return bool True on success, false on failure.
     */
    public function delete() {
        $query = "DELETE FROM " . $this->table_name . " 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    /**
     * Get the total amount of all orders.
     *
     * @return float The total amount.
     */
    public function getTotalAmount() {
        $query = "SELECT SUM(total) AS total_amount 
                  FROM " . $this->table_name;

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        return $row['total_amount'] ? $row['total_amount'] : 0.0;
    }

    public function readAll() {
        $query = "SELECT * FROM " . $this->table_name . " ORDER BY id";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }
}
?>
