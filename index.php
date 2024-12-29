<?php
session_start();
include './includes/helper.php';
$db = getDatabaseConnection();
$category = getCategoryInstance($db);
$categories_array = getAllCategories($db);
$product = getProductInstance($db);

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