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

<div class="container my-5">
    <h2 class="text-center mb-5">Admin Dashboard</h2>

    <div class="row">
        <div class="col-md-4 mb-4">
            <a href="products.php" class="dashboard-card">
                <div class="card-icon">📦</div>
                <div class="card-content">
                    <h3>Manage Products</h3>
                    <p>Edit, update, and manage all your products.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="categories.php" class="dashboard-card">
                <div class="card-icon">📂</div>
                <div class="card-content">
                    <h3>Manage Categories</h3>
                    <p>Organize products into categories.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="orders.php" class="dashboard-card">
                <div class="card-icon">🛒</div>
                <div class="card-content">
                    <h3>Manage Orders</h3>
                    <p>View and process customer orders.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="users.php" class="dashboard-card">
                <div class="card-icon">👤</div>
                <div class="card-content">
                    <h3>Manage Users</h3>
                    <p>Manage user accounts and roles.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="pages.php" class="dashboard-card">
                <div class="card-icon">📝</div>
                <div class="card-content">
                    <h3>Manage Pages</h3>
                    <p>Edit site content pages.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="banner_slots.php" class="dashboard-card">
                <div class="card-icon">📢</div>
                <div class="card-content">
                    <h3>Manage Banner Slots</h3>
                    <p>Create and update banners.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="settings.php" class="dashboard-card">
                <div class="card-icon">⚙️</div>
                <div class="card-content">
                    <h3>Site Settings</h3>
                    <p>Adjust general website settings.</p>
                </div>
            </a>
        </div>
    </div>
</div>

<?php include '../includes/internal/footer.php'; ?>
