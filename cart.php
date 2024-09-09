<?php
session_start();

// Include database and class files
include_once 'classes/Database.php';
include_once 'classes/Product.php';

// Initialize database connection
$database = new Database();
$db = $database->getConnection();

// Initialize Product object
$product = new Product($db);

// Handle form submissions
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['update_cart'])) {
        foreach ($_POST['quantity'] as $product_id => $quantity) {
            $_SESSION['cart'][$product_id] = intval($quantity);
        }
    } elseif (isset($_POST['remove_item'])) {
        $product_id = intval($_POST['product_id']);
        unset($_SESSION['cart'][$product_id]);
    } elseif (isset($_POST['empty_cart'])) {
        unset($_SESSION['cart']);
    }
}

// Fetch cart items
$cart_items = [];
if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
    foreach ($_SESSION['cart'] as $product_id => $quantity) {
        $product->id = $product_id;
        $stmt = $product->readOne();
        $item = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($item) {
            $item['quantity'] = $quantity;
            $cart_items[] = $item;
        }
    }
}

// Calculate total price
$total_price = 0;
foreach ($cart_items as $item) {
    $total_price += $item['price'] * $item['quantity'];
}

$pageTitle = 'Shopping Cart - E-Commerce Site';

include 'header.php'; // Include header

?>

<main>
    <section class="cart">
        <h1>Shopping Cart</h1>
        
        <?php if (!empty($cart_items)): ?>
            <form action="cart.php" method="post">
                <table>
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($cart_items as $item): ?>
                            <tr>
                                <td>
                                    <a href="product.php?id=<?php echo $item['id']; ?>">
                                        <?php echo htmlspecialchars($item['name']); ?>
                                    </a>
                                </td>
                                <td>$<?php echo number_format($item['price'], 2); ?></td>
                                <td>
                                    <input type="number" name="quantity[<?php echo $item['id']; ?>]" value="<?php echo $item['quantity']; ?>" min="1">
                                </td>
                                <td>$<?php echo number_format($item['price'] * $item['quantity'], 2); ?></td>
                                <td>
                                    <form action="cart.php" method="post" style="display:inline;">
                                        <input type="hidden" name="product_id" value="<?php echo $item['id']; ?>">
                                        <button type="submit" name="remove_item">Remove</button>
                                    </form>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <button type="submit" name="update_cart">Update Cart</button>
            </form>
            <form action="cart.php" method="post" style="margin-top: 20px;">
                <button type="submit" name="empty_cart">Empty Cart</button>
            </form>
            <h2>Total Price: $<?php echo number_format($total_price, 2); ?></h2>
            <a href="checkout.php" class="button">Proceed to Checkout</a>
        <?php else: ?>
            <p>Your cart is empty.</p>
        <?php endif; ?>
    </section>
</main>

<?php include 'footer.php'; // Include footer ?>
