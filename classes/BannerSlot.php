<?php
class BannerSlot {
    private $conn;
    private $table_name = "banner_slots";

    // BannerSlot properties
    public $id;
    public $title;
    public $description;
    public $short_description;
    public $price;
    public $shop_now_button;
    public $banner_position;
    public $image;
    public $view_more;
    public $created_at;
    public $updated_at;
    public $is_enabled;
    public $product_id;
    public $category_id;

    // Constructor to initialize the database connection
    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new banner slot
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " 
                  SET title = :title, description = :description, short_description = :short_description, 
                      price = :price, shop_now_button = :shop_now_button, banner_position = :banner_position,
                      image = :image, view_more = :view_more, is_enabled = :is_enabled, product_id = :product_id, category_id = :category_id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->description = htmlspecialchars(strip_tags($this->description));
        $this->short_description = htmlspecialchars(strip_tags($this->short_description));
        $this->price = htmlspecialchars(strip_tags($this->price));
        $this->shop_now_button = htmlspecialchars(strip_tags($this->shop_now_button));
        $this->banner_position = htmlspecialchars(strip_tags($this->banner_position));
        $this->image = htmlspecialchars(strip_tags($this->image));
        $this->view_more = htmlspecialchars(strip_tags($this->view_more));
        $this->is_enabled = $this->is_enabled ? 1 : 0;
        $this->product_id = $this->product_id ?? null; // Default to null if not set
        $this->category_id = $this->category_id ?? null; // Default to null if not set

        // Bind parameters
        $stmt->bindParam(':title', $this->title);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':short_description', $this->short_description);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':shop_now_button', $this->shop_now_button);
        $stmt->bindParam(':banner_position', $this->banner_position);
        $stmt->bindParam(':image', $this->image);
        $stmt->bindParam(':view_more', $this->view_more);
        $stmt->bindParam(':is_enabled', $this->is_enabled, PDO::PARAM_BOOL);
        $stmt->bindParam(':product_id', $this->product_id, PDO::PARAM_INT);
        $stmt->bindParam(':category_id', $this->category_id, PDO::PARAM_INT);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Read all banner slots
    // BannerSlot.php
    public function readAll($from_record_num, $records_per_page) {
        $query = "SELECT * FROM banner_slots ORDER BY created_at DESC LIMIT ?, ?";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(1, $from_record_num, PDO::PARAM_INT);
        $stmt->bindParam(2, $records_per_page, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt;
    }

    public function countAll() {
        $query = "SELECT COUNT(*) as total_rows FROM banner_slots";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        return $row['total_rows'];
    }


    // Read a single banner slot by ID
    public function readOne() {
        $query = "SELECT id, title, description, short_description, price, shop_now_button, banner_position, image, view_more, is_enabled, product_id, category_id, created_at, updated_at 
                  FROM " . $this->table_name . " WHERE id = :id LIMIT 1";
        $stmt = $this->conn->prepare($query);

        // Bind ID
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            if ($row) {
                $this->title = $row['title'];
                $this->description = $row['description'];
                $this->short_description = $row['short_description'];
                $this->price = $row['price'];
                $this->shop_now_button = $row['shop_now_button'];
                $this->banner_position = $row['banner_position'];
                $this->image = $row['image'];
                $this->view_more = $row['view_more'];
                $this->is_enabled = $row['is_enabled'];
                $this->product_id = $row['product_id'];
                $this->category_id = $row['category_id'];
                $this->created_at = $row['created_at'];
                $this->updated_at = $row['updated_at'];
                return true;
            }
        }
        return false;
    }

    // Update a banner slot
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET title = :title, description = :description, short_description = :short_description, 
                      price = :price, shop_now_button = :shop_now_button, banner_position = :banner_position,
                      image = :image, view_more = :view_more, is_enabled = :is_enabled, product_id = :product_id, category_id = :category_id 
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->description = htmlspecialchars(strip_tags($this->description));
        $this->short_description = htmlspecialchars(strip_tags($this->short_description));
        $this->price = htmlspecialchars(strip_tags($this->price));
        $this->shop_now_button = htmlspecialchars(strip_tags($this->shop_now_button));
        $this->banner_position = htmlspecialchars(strip_tags($this->banner_position));
        $this->image = htmlspecialchars(strip_tags($this->image));
        $this->view_more = htmlspecialchars(strip_tags($this->view_more));
        $this->is_enabled = $this->is_enabled ? 1 : 0;
        $this->id = htmlspecialchars(strip_tags($this->id));
        $this->product_id = $this->product_id ?? null;
        $this->category_id = $this->category_id ?? null;

        // Bind parameters
        $stmt->bindParam(':id', $this->id);
        $stmt->bindParam(':title', $this->title);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':short_description', $this->short_description);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':shop_now_button', $this->shop_now_button);
        $stmt->bindParam(':banner_position', $this->banner_position);
        $stmt->bindParam(':image', $this->image);
        $stmt->bindParam(':view_more', $this->view_more);
        $stmt->bindParam(':is_enabled', $this->is_enabled, PDO::PARAM_BOOL);
        $stmt->bindParam(':product_id', $this->product_id, PDO::PARAM_INT);
        $stmt->bindParam(':category_id', $this->category_id, PDO::PARAM_INT);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Enable a banner slot
    public function enable() {
        $query = "UPDATE " . $this->table_name . " SET is_enabled = 1 WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Disable a banner slot
    public function disable() {
        $query = "UPDATE " . $this->table_name . " SET is_enabled = 0 WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Delete a banner slot
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
