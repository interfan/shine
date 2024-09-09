<?php
// Include database and class files
include_once 'classes/Database.php';
include_once 'classes/Category.php';
include_once 'classes/Product.php';

// Initialize database connection
$database = new Database();
$db = $database->getConnection();

// Initialize Category and Product objects
$category = new Category($db);
$product = new Product($db);

// Get category ID from query string
$category_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

// Fetch category details
$category->id = $category_id;
$category->readOne();

// Fetch products in this category
$product->category_id = $category_id;
$stmt = $product->readAllByCategory();
$products = array();
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    if ($row['stock'] > 0) { // Optional: filter out of stock products
        $products[] = $row;
    }
}

// Set page title
$pageTitle = htmlspecialchars($category->name) . ' - E-Commerce Site';

include 'header.php'; // Include header

?>

<main>
    <section class="category">
        <h1><?php echo htmlspecialchars($category->name); ?></h1>
        <p><?php echo nl2br(htmlspecialchars($category->description)); ?></p>
        
        <section class="products">
            <h2>Products</h2>
            <ul>
                <?php if (!empty($products)): ?>
                    <?php foreach ($products as $product): ?>
                        <li>
                            <a href="product.php?id=<?php echo $product['id']; ?>">
                                <img src="<?php echo htmlspecialchars($product['image']); ?>" alt="<?php echo htmlspecialchars($product['name']); ?>">
                                <h3><?php echo htmlspecialchars($product['name']); ?></h3>
                                <p>$<?php echo number_format($product['price'], 2); ?></p>
                            </a>
                        </li>
                    <?php endforeach; ?>
                <?php else: ?>
                    <p>No products found in this category.</p>
                <?php endif; ?>
            </ul>
        </section>
    </section>
</main>

<?php include 'footer.php'; // Include footer ?>
