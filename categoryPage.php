<?php
// Start the session
session_start();
// Include database and class files
include_once 'classes/Database.php';
include_once 'classes/Product.php';

// Initialize database connection
$database = new Database();
$db = $database->getConnection();

// Initialize Category and Product objects
include './includes/helper.php';
$product = new Product($db);

// Get category ID from query string
$category_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

// Pagination logic
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$limit = isset($_GET['items_per_page']) ? (int)$_GET['items_per_page'] : 12;
$offset = ($page - 1) * $limit;
$sort_by = isset($_GET['sort_by']) ? $_GET['sort_by'] : null;

// Fetch featured products (for example, products with stock > 0)

// Fetch category details
// $category->id = $category_id;
// $category->readOne();

$category_slug = isset($_GET['slug']) ? $_GET['slug'] : '';
$category->slug = $category_slug;
$category->readOneBySlug();  // New method to fetch by slug
// Fetch products in this category
$stmt = $product->readAllByCategorySlug($category_slug, $limit, $offset, $sort_by);
$products = array();
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    if ($row['stock'] > 0 && !$row['is_disabled']) { // Optional: filter out disabled or out-of-stock products
        $products[] = $row;
    }
}
$total_products = $product->countAll('',$category->id);

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
