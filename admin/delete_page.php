<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Page.php';

$database = new Database();
$db = $database->getConnection();

$page = new Page($db);

if (isset($_GET['id'])) {
    $page->id = $_GET['id'];

    if ($page->delete()) {
        header("Location: pages.php");
    } else {
        echo "Unable to delete page.";
    }
}
?>
