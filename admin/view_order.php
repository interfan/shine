<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Order.php';

$database = new Database();
$db = $database->getConnection();

$order = new Order($db);
$order->id = $_GET['id'];
$order->readOne();

include '../includes/internal/header.php';
?>

<h2>Order Details</h2>
<p><strong>Order ID:</strong> <?php echo $order->id; ?></p>
<p><strong>User ID:</strong> <?php echo $order->user_id; ?></p>
<p><strong>Total:</strong> <?php echo $order->total; ?></p>
<p><strong>Status:</strong> <?php echo $order->status; ?></p>

<h3>Order Items</h3>
<ul>
    <?php foreach ($order->items as $item) { ?>
        <li><?php echo $item['product_name']; ?> x <?php echo $item['quantity']; ?> - <?php echo $item['price']; ?></li>
    <?php } ?>
</ul>

<?php include '../includes/internal/footer.php'; ?>
