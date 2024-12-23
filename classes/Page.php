<?php
class Page {
    private $conn;
    private $table_name = "pages";

    // Page properties
    public $id;
    public $title;
    public $slug;
    public $content;
    public $is_disabled;
    public $created_at;
    public $updated_at;

    // Constructor to initialize the database connection
    public function __construct($db) {
        $this->conn = $db;
    }

    // Read a single page by ID
    public function readOneById() {
        $query = "SELECT * FROM " . $this->table_name . " WHERE id = :id LIMIT 1";
        $stmt = $this->conn->prepare($query);

        // Bind ID
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            if ($row) {
                $this->title = $row['title'];
                $this->slug = $row['slug'];
                $this->content = $row['content'];
                $this->is_disabled = $row['is_disabled'];
                $this->created_at = $row['created_at'];
                $this->updated_at = $row['updated_at'];
                return true;
            }
        }
        return false;
    }

    // Create a new page
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " 
                  SET title = :title, slug = :slug, content = :content, is_disabled = :is_disabled";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->slug = htmlspecialchars(strip_tags($this->slug));
        $this->content = $this->content;
        $this->is_disabled = $this->is_disabled ?? 0; // Default to 0 if not set

        // Bind parameters
        $stmt->bindParam(':title', $this->title);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':content', $this->content);
        $stmt->bindParam(':is_disabled', $this->is_disabled, PDO::PARAM_INT);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Read all pages
    public function readAll() {
        $query = "SELECT id, title, slug, content, is_disabled, created_at, updated_at FROM " . $this->table_name;
        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    // Read a single page by its slug
    public function readOne($slug) {
        $query = "SELECT id, title, slug, content, is_disabled, created_at, updated_at FROM " . $this->table_name . " WHERE slug = :slug LIMIT 0,1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':slug', $slug);
        $stmt->execute();
    
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            return $row;
        }
        return false;
    }
    

    // Update a page
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET title = :title, slug = :slug, content = :content, is_disabled = :is_disabled 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->slug = htmlspecialchars(strip_tags($this->slug));
        $this->content = htmlspecialchars(strip_tags($this->content));
        $this->is_disabled = $this->is_disabled ?? 0; // Default to 0 if not set

        // Bind parameters
        $stmt->bindParam(':id', $this->id);
        $stmt->bindParam(':title', $this->title);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':content', $this->content);
        $stmt->bindParam(':is_disabled', $this->is_disabled, PDO::PARAM_INT);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Delete a page
    public function delete() {
        $query = "DELETE FROM " . $this->table_name . " WHERE id = :id";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Enable a page
    public function enable() {
        $this->is_disabled = 0;
        return $this->update();
    }

    // Disable a page
    public function disable() {
        $this->is_disabled = 1;
        return $this->update();
    }
}
?>
