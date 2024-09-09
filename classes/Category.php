<?php
class Category {
    private $conn;
    private $table_name = "categories";

    // Category properties
    public $id;
    public $name;
    public $description;
    public $parent_id;
    public $slug;
    public $created_at;

    // Constructor to initialize the database connection
    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new category
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " (name, description, parent_id, slug) VALUES (:name, :description, :parent_id, :slug)";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->name = htmlspecialchars($this->sanitize($this->name));
        $this->description = htmlspecialchars($this->sanitize($this->description));
        $this->parent_id = $this->parent_id ?? null; // Default to null if not set
        $this->slug = htmlspecialchars($this->sanitize($this->slug));

        // Bind parameters
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':parent_id', $this->parent_id, PDO::PARAM_INT);
        $stmt->bindParam(':slug', $this->slug);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Read all categories with their parent-child relationships
    public function readAll() {
        $query = "SELECT id, name, description, parent_id, slug, created_at FROM " . $this->table_name . " ORDER BY parent_id, name";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    // Read a single category by ID
    public function readOne() {
        $query = "SELECT id, name, description, parent_id, slug, created_at FROM " . $this->table_name . " WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->id = htmlspecialchars($this->sanitize($this->id));

        // Bind parameter
        $stmt->bindParam(':id', $this->id);

        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        // Set object properties
        $this->name = $row['name'];
        $this->description = $row['description'];
        $this->parent_id = $row['parent_id'];
        $this->slug = $row['slug'];
        $this->created_at = $row['created_at'];
    }

    // Update a category
    public function update() {
        $query = "UPDATE " . $this->table_name . " SET name = :name, description = :description, parent_id = :parent_id, slug = :slug WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->name = htmlspecialchars($this->sanitize($this->name));
        $this->description = htmlspecialchars($this->sanitize($this->description));
        $this->parent_id = $this->parent_id ?? null;
        $this->slug = htmlspecialchars($this->sanitize($this->slug));
        $this->id = htmlspecialchars($this->sanitize($this->id));

        // Bind parameters
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':parent_id', $this->parent_id, PDO::PARAM_INT);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Delete a category
    public function delete() {
        // Check if the category has subcategories
        $query = "SELECT COUNT(*) FROM " . $this->table_name . " WHERE parent_id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
        $stmt->execute();
        $count = $stmt->fetchColumn();

        if ($count > 0) {
            // Category has subcategories, cannot delete
            return false;
        }

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

    // Read subcategories of a given category
    public function readSubcategories() {
        $query = "SELECT id, name, description, slug, created_at FROM " . $this->table_name . " WHERE parent_id = :parent_id ORDER BY name";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':parent_id', $this->id);
        $stmt->execute();
        $result[0] = $stmt;
        $result[1] = $stmt->fetchColumn();
        return $result;
    }

    // Sanitize input
    private function sanitize($input) {
        // Ensure that $input is a string before passing it to $this->sanitize
        $input = $input ?? ''; // Convert null to an empty string
        return strip_tags($input);
    }
}
?>
