<li class="product-item col-lg-4 col-md-6 col-sm-6 col-xs-6 col-ts-12 style-1">
    <div class="product-inner equal-element">
        <div class="product-top">
            <div class="flash">
                <?php if ($product['is_master']): ?>
                    <span class="onnew">
                        <span class="text">new</span>
                    </span>
                <?php endif; ?>
            </div>
        </div>
        <div class="product-thumb">
            <div class="thumb-inner">
                <a href="product.php?id=<?php echo $product['id']; ?>">
                    <!-- Display the product image -->
                    <img src="assets/products/<?php echo $product['name'];?>/<?php echo htmlspecialchars($product['image'] ?? '', ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($product['name'] ?? '', ENT_QUOTES, 'UTF-8'); ?>">
                </a>
                <div class="thumb-group">
                    <div class="yith-wcwl-add-to-wishlist">
                        <div class="yith-wcwl-add-button">
                            <a href="wishlist.php?add=<?php echo $product['id']; ?>">Add to Wishlist</a>
                        </div>
                    </div>
                    <a href="quickview.php?id=<?php echo $product['id']; ?>" class="button quick-wiew-button">Quick View</a>
                    <div class="loop-form-add-to-cart">
                        <form method="post" action="cart.php">
                            <input type="hidden" name="product_id" value="<?php echo $product['id']; ?>">
                            <button type="submit" class="single_add_to_cart_button button">Add to cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-info">
            <h5 class="product-name product_title">
                <a href="product.php?id=<?php echo $product['id']; ?>"><?php echo htmlspecialchars($product['name']); ?></a>
            </h5>
            <div class="group-info">
                <div class="stars-rating">
                    <div class="star-rating">
                        <span class="star-<?php echo min(5, max(1, $product['rating'] ?? 0)); ?>"></span> <!-- Example of dynamic rating -->
                    </div>
                    <div class="count-star">
                        (<?php echo $product['rating'] ?? '0'; ?>)
                    </div>
                </div>
                <div class="price">
                    <?php if (isset($product['discounted_price']) && $product['discounted_price']): ?>
                        <del>$<?php echo number_format($product['price'], 2); ?></del>
                        <ins>$<?php echo number_format($product['discounted_price'], 2); ?></ins>
                    <?php else: ?>
                        <ins>$<?php echo number_format($product['price'], 2); ?></ins>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</li>