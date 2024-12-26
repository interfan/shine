<?php
// Start the session
session_start();
include_once 'classes/Database.php';
include_once 'classes/Product.php';

// Initialize database connection
$database = new Database();
$db = $database->getConnection();

// Initialize Category and Product objects
$product = new Product($db);

include './includes/helper.php';

// Fetch featured products (for example, products with stock > 0)
$stmt = $product->readAll();
$featured_products = array();
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    if ($row['stock'] > 0) {
        $featured_products[] = $row;
    }
}
include 'includes/header.php';
?>
<div>
    <div class="fullwidth-template">
        <?php include 'includes/770-380-homepage.php'; ?>
    </div>
</div>
<?php
include 'includes/footer.php';
?>