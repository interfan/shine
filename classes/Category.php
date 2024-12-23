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
    public $is_disabled; // New property

    // Constructor to initialize the database connection
    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new category
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " (name, description, parent_id, slug, is_disabled) 
                  VALUES (:name, :description, :parent_id, :slug, :is_disabled)";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->name = htmlspecialchars($this->sanitize($this->name));
        $this->description = htmlspecialchars($this->sanitize($this->description));
        $this->parent_id = $this->parent_id ?? null; // Default to null if not set
        $this->slug = htmlspecialchars($this->sanitize($this->slug));
        $this->is_disabled = $this->is_disabled ?? 0; // Default to 0 if not set

        // Bind parameters
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':parent_id', $this->parent_id, PDO::PARAM_INT);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':is_disabled', $this->is_disabled, PDO::PARAM_INT);

        return $stmt->execute();
    }

    // Read all categories with their parent-child relationships
    public function readAll() {
        $query = "SELECT id, name, description, parent_id, slug, created_at, is_disabled 
                  FROM " . $this->table_name . " 
                  ORDER BY parent_id, name";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    // Read a single category by ID
    public function readOne() {
        $query = "SELECT id, name, description, parent_id, slug, created_at, is_disabled 
                  FROM " . $this->table_name . " 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->id = htmlspecialchars($this->sanitize($this->id));

        // Bind parameter
        $stmt->bindParam(':id', $this->id);

        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($row) {
            // Set object properties
            $this->name = $row['name'];
            $this->description = $row['description'];
            $this->parent_id = $row['parent_id'];
            $this->slug = $row['slug'];
            $this->created_at = $row['created_at'];
            $this->is_disabled = $row['is_disabled']; // Set new property
        }
    }

    // Read a single category by slug
    public function readOneBySlug() {
        $query = "SELECT * FROM " . $this->table_name . " WHERE slug = :slug LIMIT 0,1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            $this->id = $row['id'];
            $this->name = $row['name'];
            $this->description = $row['description'];
        }
    }
    

    // Update a category
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET name = :name, description = :description, parent_id = :parent_id, 
                      slug = :slug, is_disabled = :is_disabled 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->name = htmlspecialchars($this->sanitize($this->name));
        $this->description = htmlspecialchars($this->sanitize($this->description));
        $this->parent_id = $this->parent_id ?? null;
        $this->slug = htmlspecialchars($this->sanitize($this->slug));
        $this->id = htmlspecialchars($this->sanitize($this->id));
        $this->is_disabled = $this->is_disabled ?? 0;

        // Bind parameters
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':parent_id', $this->parent_id, PDO::PARAM_INT);
        $stmt->bindParam(':slug', $this->slug);
        $stmt->bindParam(':id', $this->id);
        $stmt->bindParam(':is_disabled', $this->is_disabled, PDO::PARAM_INT);

        return $stmt->execute();
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

        return $stmt->execute();
    }

    // Read subcategories of a given category
    public function readSubcategories() {
        $query = "SELECT id, name, description, slug, created_at, is_disabled 
                  FROM " . $this->table_name . " 
                  WHERE parent_id = :parent_id 
                  ORDER BY name";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':parent_id', $this->id);
        $stmt->execute();
        $result[0] = $stmt;
        $result[1] = $stmt->fetchColumn();
        return $result;
    }

    // Disable a category
    public function disable() {
        $this->is_disabled = 1; // Set to 1 to disable

        $query = "UPDATE " . $this->table_name . " 
                  SET is_disabled = :is_disabled 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->id = htmlspecialchars($this->sanitize($this->id));
        $this->is_disabled = htmlspecialchars($this->sanitize($this->is_disabled));

        // Bind parameters
        $stmt->bindParam(':id', $this->id);
        $stmt->bindParam(':is_disabled', $this->is_disabled, PDO::PARAM_INT);

        return $stmt->execute();
    }

    // Enable a category
    public function enable() {
        $this->is_disabled = 0; // Set to 0 to enable

        $query = "UPDATE " . $this->table_name . " 
                  SET is_disabled = :is_disabled 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->id = htmlspecialchars($this->sanitize($this->id));
        $this->is_disabled = htmlspecialchars($this->sanitize($this->is_disabled));

        // Bind parameters
        $stmt->bindParam(':id', $this->id);
        $stmt->bindParam(':is_disabled', $this->is_disabled, PDO::PARAM_INT);

        return $stmt->execute();
    }

    public function readAllWithPagination($limit, $offset) {
        $query = "SELECT * FROM categories ORDER BY created_at DESC LIMIT :limit OFFSET :offset";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':limit', $limit, PDO::PARAM_INT);
        $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt;
    }

    public function countAll() {
        $query = "SELECT COUNT(*) as total FROM categories";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        return $row['total'];
    }
    

    // Sanitize input
    private function sanitize($input) {
        // Ensure that $input is a string before passing it to $this->sanitize
        $input = $input ?? ''; // Convert null to an empty string
        return strip_tags($input);
    }
}
?>
