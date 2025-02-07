<?php
class Pricebook {
    private $conn;
    private $table_name = "pricebooks";

    public $id;
    public $name;
    public $description;
    public $is_enabled;  // 1 = enabled, 0 = disabled
    public $is_standard; // 1 = Standard pricebook, 0 = otherwise
    public $created_at;
    public $updated_at;

    // Constructor to initialize the database connection
    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new pricebook
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " 
            (name, description, is_enabled, is_standard, created_at, updated_at) 
            VALUES (:name, :description, :is_enabled, :is_standard, NOW(), NOW())";
        $stmt = $this->conn->prepare($query);

        $this->name = htmlspecialchars(strip_tags($this->name));
        $this->description = htmlspecialchars(strip_tags($this->description));
        $this->is_enabled = htmlspecialchars(strip_tags($this->is_enabled));
        $this->is_standard = htmlspecialchars(strip_tags($this->is_standard));

        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':is_enabled', $this->is_enabled);
        $stmt->bindParam(':is_standard', $this->is_standard);

        if ($stmt->execute()) {
            $this->id = $this->conn->lastInsertId();
            return true;
        }
        return false;
    }

    // Read all pricebooks
    public function readAll() {
        $query = "SELECT id, name, description, is_enabled, is_standard, created_at, updated_at 
                  FROM " . $this->table_name . " ORDER BY name";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }

    // Read one pricebook by ID
    public function readOneById() {
        $query = "SELECT id, name, description, is_enabled, is_standard, created_at, updated_at 
                  FROM " . $this->table_name . " WHERE id = :id LIMIT 0,1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
        if ($stmt->execute()) {
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            if ($row) {
                $this->name = $row['name'];
                $this->description = $row['description'];
                $this->is_enabled = $row['is_enabled'];
                $this->is_standard = $row['is_standard'];
                $this->created_at = $row['created_at'];
                $this->updated_at = $row['updated_at'];
                return true;
            }
        }
        return false;
    }

    // Update a pricebook
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET name = :name, description = :description, is_enabled = :is_enabled, is_standard = :is_standard, updated_at = NOW() 
                  WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $this->name = htmlspecialchars(strip_tags($this->name));
        $this->description = htmlspecialchars(strip_tags($this->description));
        $this->is_enabled = htmlspecialchars(strip_tags($this->is_enabled));
        $this->is_standard = htmlspecialchars(strip_tags($this->is_standard));

        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':is_enabled', $this->is_enabled);
        $stmt->bindParam(':is_standard', $this->is_standard);
        $stmt->bindParam(':id', $this->id);
        return $stmt->execute();
    }

    // Delete a pricebook
    public function delete() {
        $query = "DELETE FROM " . $this->table_name . " WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $this->id = htmlspecialchars(strip_tags($this->id));
        $stmt->bindParam(':id', $this->id);
        return $stmt->execute();
    }
}
?>
