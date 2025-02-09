<?php
// Start session and include the Wishlist class.
session_start();
include_once __DIR__ . '/classes/Wishlist.php';  // Adjust the path as needed

$wishlist = new Wishlist();

// Get the action and product ID from POST (or GET)
$action = isset($_POST['action']) ? $_POST['action'] : '';
$productId = isset($_POST['productId']) ? $_POST['productId'] : '';

header('Content-Type: application/json');

if ($action === 'add') {
    // Optionally, you can pass additional product data
    $data = isset($_POST['data']) ? $_POST['data'] : array();
    $wishlist->addItem($productId, $data);
    echo json_encode(['status' => 'success', 'items' => $wishlist->getItems()]);
    exit;
} elseif ($action === 'remove') {
    $wishlist->removeItem($productId);
    echo json_encode(['status' => 'success', 'items' => $wishlist->getItems()]);
    exit;
} elseif ($action === 'clear') {
    $wishlist->clear();
    echo json_encode(['status' => 'success', 'items' => $wishlist->getItems()]);
    exit;
} else {
    echo json_encode(['status' => 'error', 'message' => 'Invalid action']);
    exit;
}
?>
