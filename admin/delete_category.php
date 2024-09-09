<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Category.php';

$database = new Database();
$db = $database->getConnection();

$category = new Category($db);
$category->id = $_GET['id'];

if ($category->delete()) {
    header("Location: categories.php");
} else {
    echo "Unable to delete category.";
}
?>
