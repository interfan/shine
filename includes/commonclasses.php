<?php
// Include database and class files
include_once 'classes/Database.php';
include_once 'classes/Category.php';
include_once 'classes/Product.php';
include_once 'classes/Page.php';
include_once 'classes/Order.php';
include_once 'classes/User.php';

// Initialize database connection
$database = new Database();
$db = $database->getConnection();

// Initialize Category and Product objects
$category = new Category($db);
$product = new Product($db);
$page = new Page($db);
$order = new Order($db);
$user = new User($db);
?>