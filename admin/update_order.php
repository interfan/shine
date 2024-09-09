<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Order.php';

$database = new Database();
$db = $database->getConnection();

$order = new Order($db);
$order->id = $_GET['id'];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $order->status = $_POST['status'];

    if ($order->update()) {
        header("Location: orders.php");
    } else {
        echo "Unable to update order.";
    }
}

$order->readOne();

include '../includes/internal/header.php';
?>

<h2>Update Order Status</h2>
<form action="update_order.php?id=<?php echo $order->id; ?>" method="post">
    <label for="status">Status:</label>
    <select name="status" id="status">
        <option value="pending" <?php if ($order->status == 'pending') echo 'selected'; ?>>Pending</option>
        <option value="processing" <?php if ($order->status == 'processing') echo 'selected'; ?>>Processing</option>
        <option value="completed" <?php if ($order->status == 'completed') echo 'selected'; ?>>Completed</option>
        <option value="cancelled" <?php if ($order->status == 'cancelled') echo 'selected'; ?>>Cancelled</option>
    </select>

    <button type="submit">Update Order</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
