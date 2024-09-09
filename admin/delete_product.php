<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Product.php';

$database = new Database();
$db = $database->getConnection();

$product = new Product($db);
$product->id = $_GET['id'];

if ($product->delete()) {
    header("Location: products.php");
} else {
    echo "Unable to delete product.";
}
?>
