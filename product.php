<?php
// Include database and class files
include_once 'classes/Database.php';
include_once 'classes/Product.php';
include_once 'classes/Category.php';

// Initialize database connection
$database = new Database();
$db = $database->getConnection();

// Initialize Product object
$product = new Product($db);

// Get product ID from query string
$product_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

// Fetch product details
$product->id = $product_id;
$product->readOne();

// Set page title
$pageTitle = $product->name . ' - E-Commerce Site';

include 'header.php'; // Include header

?>

<main>
    <section class="product-detail">
        <h1><?php echo htmlspecialchars($product->name); ?></h1>
        
        <div class="product-image">
            <img src="<?php echo htmlspecialchars($product->image); ?>" alt="<?php echo htmlspecialchars($product->name); ?>">
        </div>

        <div class="product-info">
            <p><strong>Price:</strong> $<?php echo number_format($product->price, 2); ?></p>
            <p><strong>Description:</strong> <?php echo nl2br(htmlspecialchars($product->description)); ?></p>
            
            <form action="cart.php" method="post">
                <input type="hidden" name="product_id" value="<?php echo $product->id; ?>">
                <input type="number" name="quantity" min="1" value="1" required>
                <button type="submit">Add to Cart</button>
            </form>
        </div>
    </section>
</main>

<?php include 'footer.php'; // Include footer ?>
