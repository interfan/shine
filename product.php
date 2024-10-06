<?php
include './includes/commonclasses.php';

// Get product ID from query string
$product_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

// Fetch product details
$product->id = $product_id;
$product->getProductWithTranslation();

// Set page title
$pageTitle = $product->name . ' - E-Commerce Site';

include 'includes/header.php'; // Include header
?>
<!-- 
<main>
    <section class="product-detail">
        <h1><?php echo htmlspecialchars($product->name ?? '', ENT_QUOTES, 'UTF-8'); ?></h1>
        
        <div class="product-image">
            <img src="<?php echo htmlspecialchars($product->image ?? '', ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($product->name ?? '', ENT_QUOTES, 'UTF-8'); ?>">
        </div>

        <div class="product-info">
            <p><strong>Price:</strong> $<?php echo number_format($product->price, 2); ?></p>
            <p><strong>Description:</strong> <?php echo nl2br(htmlspecialchars($product->description ?? '', ENT_QUOTES, 'UTF-8')); ?></p>
            
            <form action="cart.php" method="post">
                <input type="hidden" name="product_id" value="<?php echo $product->id; ?>">
                <input type="number" name="quantity" min="1" value="1" required>
                <button type="submit">Add to Cart</button>
            </form>
        </div>
    </section>
</main> -->

<div class="main-content main-content-details single no-sidebar">
    <div class="container">
        <?php include './includes/breadcrumbs.php'; // Include footer ?>
        <div class="row">
            <div class="content-area content-details full-width col-lg-9 col-md-8 col-sm-12 col-xs-12">
                <div class="site-main">
                    <?php include 'includes/pdp-details.php'; // Include footer ?>
                    <?php include 'includes/pdp-tabs.php'; // Include footer ?>
                    <div style="clear: left;"></div>
                    <?php include 'includes/pdp-related-products.php'; // Include footer ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; // Include footer ?>
