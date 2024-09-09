<?php
session_start();

// Include database and class files
include_once 'classes/Database.php';
include_once 'classes/Product.php';
include_once 'classes/Order.php';

// Initialize database connection
$database = new Database();
$db = $database->getConnection();

// Initialize Product and Order objects
$product = new Product($db);
$order = new Order($db);

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Validate form fields
    $errors = [];
    $shipping_address = isset($_POST['shipping_address']) ? trim($_POST['shipping_address']) : '';
    $payment_method = isset($_POST['payment_method']) ? trim($_POST['payment_method']) : '';
    $name = isset($_POST['name']) ? trim($_POST['name']) : '';
    $email = isset($_POST['email']) ? trim($_POST['email']) : '';

    if (empty($shipping_address)) {
        $errors[] = 'Shipping address is required.';
    }
    if (empty($payment_method)) {
        $errors[] = 'Payment method is required.';
    }
    if (empty($name) || empty($email)) {
        $errors[] = 'Name and email are required.';
    }

    if (empty($errors)) {
        // Process order
        $order->shipping_address = $shipping_address;
        $order->payment_method = $payment_method;
        $order->customer_name = $name;
        $order->customer_email = $email;
        $order->total_amount = 0;

        // Calculate total amount
        $order_items = [];
        $total_amount = 0;
        if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
            foreach ($_SESSION['cart'] as $product_id => $quantity) {
                $product->id = $product_id;
                $stmt = $product->readOne();
                $item = $stmt->fetch(PDO::FETCH_ASSOC);
                if ($item) {
                    $item['quantity'] = $quantity;
                    $total_amount += $item['price'] * $quantity;
                    $order_items[] = $item;
                }
            }
        }

        $order->total_amount = $total_amount;
        $order->create(); // Save order to database

        // Clear the cart
        unset($_SESSION['cart']);

        // Redirect to order confirmation page
        header('Location: order_confirmation.php');
        exit;
    }
}

$pageTitle = 'Checkout - E-Commerce Site';

include 'header.php'; // Include header

?>

<main>
    <section class="checkout">
        <h1>Checkout</h1>
        
        <?php if (!empty($errors)): ?>
            <div class="errors">
                <?php foreach ($errors as $error): ?>
                    <p><?php echo htmlspecialchars($error); ?></p>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>

        <form action="checkout.php" method="post">
            <fieldset>
                <legend>Shipping Information</legend>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="shipping_address">Shipping Address:</label>
                <textarea id="shipping_address" name="shipping_address" rows="4" required></textarea>
            </fieldset>

            <fieldset>
                <legend>Payment Information</legend>
                <label for="payment_method">Payment Method:</label>
                <select id="payment_method" name="payment_method" required>
                    <option value="">Select a payment method</option>
                    <option value="credit_card">Credit Card</option>
                    <option value="paypal">PayPal</option>
                </select>
            </fieldset>

            <button type="submit">Place Order</button>
        </form>
    </section>
</main>

<?php include 'footer.php'; // Include footer ?>
