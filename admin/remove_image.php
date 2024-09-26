<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/ProductImages.php';

$database = new Database();
$db = $database->getConnection();
$productImages = new ProductImages($db);

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = $_GET['id'];

    // Remove image from the database
    if ($productImages->removeImage($id)) {
        // Optionally, also remove the image file from the server
        $stmt = $db->prepare("SELECT image, product_id FROM product_images WHERE id = :id");
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $image = $stmt->fetch(PDO::FETCH_ASSOC);
        
        if ($image) {
            $imagePath = '../assets/images/' . htmlspecialchars($image['product_id']) . '/' . htmlspecialchars($image['image']);
            if (file_exists($imagePath)) {
                unlink($imagePath);
            }
        }

        header("Location: edit_product.php?id=" . $image['product_id']);
    } else {
        echo "Unable to remove image.";
    }
} else {
    echo "Invalid image ID.";
}
?>
