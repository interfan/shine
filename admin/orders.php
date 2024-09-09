<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Order.php';

$database = new Database();
$db = $database->getConnection();

$order = new Order($db);
$orders = $order->readAll();

include '../includes/internal/header.php';
?>

<h2>Manage Orders</h2>
<table>
    <thead>
        <tr>
            <th>Order ID</th>
            <th>User ID</th>
            <th>Total</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = $orders->fetch(PDO::FETCH_ASSOC)) { ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['user_id']; ?></td>
                <td><?php echo $row['total']; ?></td>
                <td><?php echo $row['status']; ?></td>
                <td>
                    <a href="view_order.php?id=<?php echo $row['id']; ?>">View</a>
                    <a href="update_order.php?id=<?php echo $row['id']; ?>">Update</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>

<?php include '../includes/internal/footer.php'; ?>
