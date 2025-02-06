<?php if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) { ?>
    <form method="POST" action="cart.php" class="cart-form">
        <table class="shop_table">
            <thead>
                <tr>
                    <th class="product-remove"></th>
                    <th class="product-thumbnail"></th>
                    <th class="product-name">Product</th>
                    <th class="product-price">Price</th>
                    <th class="product-quantity">Quantity</th>
                    <th class="product-subtotal">Subtotal</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $total = 0;
                    $totalQuantity = 0;
                ?>
                <?php foreach ($_SESSION['cart'] as $key => $item): ?>
                    <tr class="cart_item">
                        <td class="product-remove">
                            <form method="POST" action="cart.php" class="remove-item-form">
                                <input type="hidden" name="product_id" value="<?php echo $item['id']; ?>">
                                <button type="submit" name="remove_item" class="remove">×</button>
                            </form>
                        </td>
                        <td class="product-thumbnail">
                            <img src="<?php echo $item['image']; ?>" alt="Product Image">
                        </td>
                        <td class="product-name"><?php echo $item['name']; ?></td>
                        <td class="product-price">$<?php echo number_format($item['price'], 2); ?></td>
                        <td class="product-quantity">
                            <input type="number" name="quantity[<?php echo $key; ?>]" value="<?php echo $item['quantity']; ?>" min="1">
                        </td>
                        <td class="product-subtotal">
                            $<?php echo number_format($item['price'] * $item['quantity'], 2); ?>
                        </td>
                    </tr>
                    <?php
                        $total += $item['price'] * $item['quantity'];
                        $totalQuantity += $item['quantity'];
                    ?>
                <?php endforeach; ?>
            </tbody>
        </table>
        
        <div class="cart-summary">
            <div class="total-quantity">
                <span>Total Quantity: </span>
                <strong><?php echo $totalQuantity; ?></strong>
            </div>
            <div class="order-total">
                <span>Total Price: </span>
                <strong>$<?php echo number_format($total, 2); ?></strong>
            </div>
            
            <button type="submit" name="update_cart" class="update-cart-button">Update Cart</button>
        </div>
    </form>
<?php } else { ?>
    <p>Your cart is currently empty.</p>
<?php } ?>
