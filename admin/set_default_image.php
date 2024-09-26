<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/ProductImages.php';

$database = new Database();
$db = $database->getConnection();
$productImages = new ProductImages($db);

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = $_GET['id'];

    // Set the specified image as default
    if ($productImages->setDefault($id)) {
        // Optionally, redirect to the product edit page
        $stmt = $db->prepare("SELECT product_id FROM product_images WHERE id = :id");
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $image = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($image) {
            header("Location: edit_product.php?id=" . $image['product_id']);
        } else {
            echo "Unable to set image as default.";
        }
    } else {
        echo "Unable to set image as default.";
    }
} else {
    echo "Invalid image ID.";
}
?>
