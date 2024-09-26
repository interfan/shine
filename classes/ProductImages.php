<?php
class ProductImages {
    private $conn;
    private $table_name = "product_images";

    // ProductImages properties
    public $id;
    public $product_id;
    public $image;
    public $is_default;

    // Constructor to initialize the database connection
    public function __construct($db) {
        $this->conn = $db;
    }


    // Get the default image for a product
    public function getDefaultImage($product_id) {
        $query = "SELECT image FROM " . $this->table_name . " WHERE product_id = :product_id AND is_default = 1 LIMIT 1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':product_id', $product_id);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Add a new image for a product
    public function addImage() {
        $query = "INSERT INTO " . $this->table_name . " 
                  (product_id, image, is_default) 
                  VALUES (:product_id, :image, :is_default)";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->product_id = htmlspecialchars($this->sanitize($this->product_id));
        $this->image = htmlspecialchars($this->sanitize($this->image));
        $this->is_default = htmlspecialchars($this->sanitize($this->is_default));

        // Bind parameters
        $stmt->bindParam(':product_id', $this->product_id);
        $stmt->bindParam(':image', $this->image);
        $stmt->bindParam(':is_default', $this->is_default);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // Get images for a product
    public function getImages($product_id) {
        $query = "SELECT id, image, is_default 
                  FROM " . $this->table_name . " 
                  WHERE product_id = :product_id";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':product_id', $product_id);
        $stmt->execute();

        return $stmt;
    }

    // Set a specific image as default
    public function setDefault($image_id) {
        // Step 1: Unset any existing default images
        // Fetch the product ID for the given image_id
        $query = "SELECT product_id 
                  FROM " . $this->table_name . " 
                  WHERE id = :image_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':image_id', $image_id);
        $stmt->execute();
        $product_id = $stmt->fetchColumn();
    
        if ($product_id) {
            // Update all images of this product to unset the default
            $query = "UPDATE " . $this->table_name . " 
                      SET is_default = 0 
                      WHERE product_id = :product_id";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':product_id', $product_id);
            $stmt->execute();
        
            // Step 2: Set the new default image
            $query = "UPDATE " . $this->table_name . " 
                      SET is_default = 1 
                      WHERE id = :image_id";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':image_id', $image_id);
            return $stmt->execute();
        }
    
        return false; // Return false if the product_id was not found
    }
    

    // Remove an image
    public function removeImage($image_id) {
        // Get the image file path and associated product ID
        $query = "SELECT image, product_id 
                  FROM " . $this->table_name . " 
                  WHERE id = :image_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':image_id', $image_id);
        $stmt->execute();
        $imageData = $stmt->fetch(PDO::FETCH_ASSOC);
    
        if ($imageData) {
            // Get the product name using the product ID
            $product_id = $imageData['product_id'];
            $productQuery = "SELECT name 
                             FROM products 
                             WHERE id = :product_id";
            $productStmt = $this->conn->prepare($productQuery);
            $productStmt->bindParam(':product_id', $product_id);
            $productStmt->execute();
            $productData = $productStmt->fetch(PDO::FETCH_ASSOC);
    
            if ($productData) {
                $productName = htmlspecialchars($productData['name']);
                $imagePath = '../assets/images/' . $productName . '/' . htmlspecialchars($imageData['image']);
                
                if (file_exists($imagePath)) {
                    unlink($imagePath); // Delete the image file
                }
            }
        }
    
        // Delete the image record from the database
        $query = "DELETE FROM " . $this->table_name . " 
                  WHERE id = :image_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':image_id', $image_id);
        return $stmt->execute();
    }

    public function getProductNameById($product_id) {
        $query = "SELECT name 
                  FROM products 
                  WHERE id = :product_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':product_id', $product_id);
        $stmt->execute();
        $product = $stmt->fetch(PDO::FETCH_ASSOC);
        
        return $product ? htmlspecialchars($product['name']) : null;
    }

    // Read images by product ID
    public function readByProduct($product_id) {
        $query = "SELECT id, image, is_default FROM " . $this->table_name . " WHERE product_id = :product_id";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':product_id', $product_id);
        $stmt->execute();

        return $stmt;
    }
    

    // Sanitize input
    private function sanitize($input) {
        // Ensure that $input is a string before passing it to $this->sanitize
        $input = $input ?? ''; // Convert null to an empty string
        return strip_tags($input);
    }
}
?>
