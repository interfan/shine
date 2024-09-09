<?php
session_start();

// Include database and class files
include_once 'classes/Database.php';
include_once 'classes/User.php';
include_once 'classes/Order.php';

// Initialize database connection
$database = new Database();
$db = $database->getConnection();

// Initialize User and Order objects
$user = new User($db);
$order = new Order($db);

// Fetch user details if logged in
if (isset($_SESSION['user_id'])) {
    $user->id = $_SESSION['user_id'];
    $user->readOne();
    
    // Fetch user orders
    $order->user_id = $_SESSION['user_id'];
    $stmt = $order->readAllByUser();
    $orders = [];
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $orders[] = $row;
    }
} else {
    header('Location: login.php');
    exit;
}

$pageTitle = 'My Account - E-Commerce Site';

include 'header.php'; // Include header

?>

<main>
    <section class="account">
        <h1>My Account</h1>
        
        <div class="account-info">
            <h2>Personal Information</h2>
            <p><strong>Name:</strong> <?php echo htmlspecialchars($user->name); ?></p>
            <p><strong>Email:</strong> <?php echo htmlspecialchars($user->email); ?></p>
            <p><strong>Address:</strong> <?php echo nl2br(htmlspecialchars($user->address)); ?></p>

            <a href="edit_account.php" class="button">Edit Account Information</a>
        </div>
        
        <div class="order-history">
            <h2>Order History</h2>
            <?php if (!empty($orders)): ?>
                <table>
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Date</th>
                            <th>Total Amount</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($orders as $order): ?>
                            <tr>
                                <td><?php echo htmlspecialchars($order['id']); ?></td>
                                <td><?php echo htmlspecialchars($order['created_at']); ?></td>
                                <td>$<?php echo number_format($order['total_amount'], 2); ?></td>
                                <td><?php echo htmlspecialchars($order['status']); ?></td>
                                <td>
                                    <a href="order_details.php?id=<?php echo htmlspecialchars($order['id']); ?>" class="button">View Details</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            <?php else: ?>
                <p>You have no orders.</p>
            <?php endif; ?>
        </div>
    </section>
</main>

<?php include 'footer.php'; // Include footer ?>
