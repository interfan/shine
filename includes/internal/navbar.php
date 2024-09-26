<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <div class="navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <?php if (isset($_SESSION['admin_id'])) { ?>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">
                            <i class="bi bi-house-door"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="products.php">
                            <i class="bi bi-box"></i> Manage Products
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="categories.php">
                            <i class="bi bi-tags"></i> Manage Categories
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="orders.php">
                            <i class="bi bi-cart"></i> Manage Orders
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="users.php">
                            <i class="bi bi-person"></i> Manage Users
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages.php">
                            <i class="bi bi-file-text"></i> Manage Pages
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="banner_slots.php">
                            <i class="bi bi-bullhorn"></i> Manage Banner Slots
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="settings.php">
                            <i class="bi bi-gear"></i> Settings
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">
                            <i class="bi bi-box-arrow-right"></i> Logout
                        </a>
                    </li>
                <?php } else { ?>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">
                            <i class="bi bi-box-arrow-in-right"></i> Login
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</nav>
