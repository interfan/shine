<?php
session_start();
include './includes/helper.php';
$db = getDatabaseConnection();

$category = getCategoryInstance($db);

$categories_array = getAllCategories($db);

$pageTitle = 'Shopping Cart - E-Commerce Site';

include './includes/header.php';  // Header
?>

<div class="site-content">
    <main class="site-main main-container no-sidebar">
        <div class="container">
            <div class="breadcrumb-trail breadcrumbs">
                <ul class="trail-items breadcrumb">
                    <li class="trail-item trail-begin">
                        <a href="index.php"><span>Home</span></a>
                    </li>
                    <li class="trail-item trail-end active">
                        <span>Shopping Cart</span>
                    </li>
                </ul>
            </div>

            <div class="row">
                <div class="main-content-cart main-content col-sm-12">
                    <h3 class="custom_blog_title">Shopping Cart</h3>
                    <div class="page-main-content">
                        <div class="shoppingcart-content">
                            <!-- Dynamic Cart Table -->
                            <?php include 'shoppingcart-content.php'; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>

<?php include './includes/footer.php';  // Footer ?>
