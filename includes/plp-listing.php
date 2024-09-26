<div class="content-area shop-grid-content no-banner col-lg-9 col-md-9 col-sm-12 col-xs-12">
    <div class="site-main">
        <h3 class="custom_blog_title">
            Grid Products
        </h3>
        <?php include './includes/sorting.php'; ?>
        <ul class="row list-products auto-clear equal-container product-grid">
        <?php if (!empty($products)): ?>
            <ul class="row list-products auto-clear equal-container product-grid">
                <?php foreach ($products as $product): ?>
                    <?php include './includes/plp-tile.php'; ?>
                <?php endforeach; ?>
            </ul>
        <?php else: ?>
            <p>No products found in this category.</p>
        <?php endif; ?>
        </ul>
        <?php include './includes/pagination.php'; ?>
        </div>
    </div>
</div>