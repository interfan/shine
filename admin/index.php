<?php
session_start();
// Check if the user is logged in as admin
include_once '../classes/Database.php';
include_once '../classes/Admin.php';

$database = new Database();
$db = $database->getConnection();

$admin = new Admin($db);

// Ensure user is an admin
if (!$admin->isLoggedIn()) {
    header("Location: login.php");
    exit;
}

include '../includes/internal/header.php';
?>

<h2>Admin Dashboard</h2>
<ul>
    <li><a href="products.php">Manage Products</a></li>
    <li><a href="categories.php">Manage Categories</a></li>
    <li><a href="orders.php">Manage Orders</a></li>
    <li><a href="users.php">Manage Users</a></li>
    <li><a href="settings.php">Site Settings</a></li>
</ul>

<?php include '../includes/internal/footer.php'; ?>
