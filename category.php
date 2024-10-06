<?php
include './includes/commonclasses.php';

// Get category ID from query string
$category_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

// Pagination logic
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$limit = isset($_GET['items_per_page']) ? (int)$_GET['items_per_page'] : 12;
$offset = ($page - 1) * $limit;
$sort_by = isset($_GET['sort_by']) ? $_GET['sort_by'] : null;

// Fetch category details
$category->id = $category_id;
$category->readOne();
echo $category_id;
// Fetch products in this category
$stmt = $product->readAllByCategory($category_id, $limit, $offset, $sort_by, 'without');
$products = array();
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    if ($row['stock'] > 0 && !$row['is_disabled']) { // Optional: filter out disabled or out-of-stock products
        $products[] = $row;
    }
}
$total_products = $product->countCategoryProducts($category_id, 'without');

// Calculate total pages
$total_pages = ceil($total_products / $limit);

// Set page title
$pageTitle = $category->name . ' - E-Commerce Site';

include './includes/header.php'; // Include header
?>
<div class="main-content main-content-product left-sidebar">
    <div class="container">
        <?php include './includes/breadcrumbs.php'; // Include footer ?>
        <div class="row">
            <?php include './includes/filter.php'; // Include footer ?>
            <?php include './includes/plp-listing.php'; // Include footer ?>
        </div>
    </div>
</div>

<?php include './includes/footer.php'; // Include footer ?>
