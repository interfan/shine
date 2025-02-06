<?php if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0): ?>
    <div class="minicart-content">
        <ul class="minicart-items">
            <?php
                $subtotal = 0;
                $totalQuantity = 0;
            ?>
            <?php foreach ($_SESSION['cart'] as $key => $item): ?>
                <li class="product-cart mini_cart_item" data-id="<?php echo $item['id']; ?>">
                    <a href="#" class="product-media">
                        <img src="<?php echo $item['image']; ?>" alt="img">
                    </a>
                    <div class="product-details">
                        <h5 class="product-name">
                            <a href="#"><?php echo $item['name']; ?></a>
                        </h5>
                        <div class="variations">
                            <span class="attribute_color"><?php echo $item['color'] ?? 'N/A'; ?></span>,
                            <span class="attribute_size"><?php echo $item['size'] ?? 'N/A'; ?></span>
                        </div>
                        <span class="product-price">
                            <span class="price">$<?php echo number_format($item['price'], 2); ?></span>
                        </span>
                        <span class="product-quantity">(x<?php echo $item['quantity']; ?>)</span>
                        <div class="product-remove">
                            <form method="POST" class="remove-item-form">
                                <input type="hidden" name="product_id" value="<?php echo $item['id']; ?>">
                                <button type="submit" name="remove_item">
                                    <i class="fa fa-trash-o"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                </li>
                <?php 
                    // Calculate subtotal and total quantity
                    $subtotal += $item['price'] * $item['quantity'];
                    $totalQuantity += $item['quantity'];
                ?>
            <?php endforeach; ?>
        </ul>
        
        <div class="minicart-summary">
            <div class="total-quantity">
                <span>Total Quantity: </span>
                <strong><?php echo $totalQuantity; ?></strong>
            </div>

            <div class="subtotal">
                <span class="total-title">Subtotal: </span>
                <span class="total-price">$<?php echo number_format($subtotal, 2); ?></span>
            </div>

            <!-- Optional: Add any discount/tax details here if needed -->
            <div class="cart-footer">
                <a href="checkout.php" class="checkout-button">Proceed to Checkout</a>
            </div>
        </div>
    </div>
<?php else: ?>
    <p>Your cart is currently empty.</p>
<?php endif; ?>
