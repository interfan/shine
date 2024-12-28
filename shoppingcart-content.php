<?php if(isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) { ?>
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
            <?php $total = 0; ?>
            <?php foreach ($_SESSION['cart'] as $key => $item): ?>
                <tr class="cart_item">
                    <td class="product-remove">
                        <form method="POST" action="cart.php" class="remove-item-form">
                            <input type="hidden" name="product_id" value="<?php echo $item['id']; ?>">
                            <button type="submit" name="remove_item" class="remove">×</button>
                        </form>
                    </td>
                    <td class="product-thumbnail">
                        <img src="<?php echo $item['image']; ?>" alt="">
                    </td>
                    <td class="product-name"><?php echo $item['name']; ?></td>
                    <td class="product-price">$<?php echo $item['price']; ?></td>
                    <td class="product-quantity">
                        <input type="number" name="quantity[<?php echo $key; ?>]" value="<?php echo $item['quantity']; ?>" min="1">
                    </td>
                    <td class="product-subtotal">
                        $<?php echo $item['price'] * $item['quantity']; ?>
                    </td>
                </tr>
                <?php $total += $item['price'] * $item['quantity']; ?>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="order-total">
        <span>Total Price: $<?php echo $total; ?></span>
    </div>
<?php } else { ?>
    YOUR CART IS CURRENTLY EMPTY
<?php }  ?>