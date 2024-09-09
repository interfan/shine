<?php
class Page {
    private $conn;
    private $table_name = "pages";

    public $id;
    public $title;
    public $slug;
    public $content;
    public $created_at;
    public $updated_at;

    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new page
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " 
                  SET title = :title, slug = :slug, content = :content";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->slug = htmlspecialchars(strip_tags($this->slug));
        $this->content = htmlspecialchars(strip_tags($this->content));

        // Bind parameters
        $stmt->bindParam(':title', $this->title);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':content', $this->content);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Read all pages
    public function readAll() {
        $query = "SELECT id, title, slug, content, created_at, updated_at FROM " . $this->table_name;
        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    // Read a single page by its slug
    public function readOne($slug) {
        $query = "SELECT id, title, slug, content, created_at, updated_at FROM " . $this->table_name . " WHERE slug = :slug LIMIT 0,1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':slug', $slug);
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            $this->id = $row['id'];
            $this->title = $row['title'];
            $this->slug = $row['slug'];
            $this->content = $row['content'];
            $this->created_at = $row['created_at'];
            $this->updated_at = $row['updated_at'];
            return true;
        }

        return false;
    }

    // Update a page
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET title = :title, slug = :slug, content = :content 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->slug = htmlspecialchars(strip_tags($this->slug));
        $this->content = htmlspecialchars(strip_tags($this->content));

        // Bind parameters
        $stmt->bindParam(':id', $this->id);
        $stmt->bindParam(':title', $this->title);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':content', $this->content);

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
}
?>
