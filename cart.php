<?php
session_start();
include_once 'classes/Database.php';
include_once 'classes/Product.php';

// Initialize database connection
$database = new Database();
$db = $database->getConnection();
$product = new Product($db);

// Initialize the cart if it doesn't exist
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

// Add to cart (Handle AJAX request)
if (isset($_POST['add_to_cart'])) {
    $product_id = $_POST['product_id'];
    $quantity = intval($_POST['quantity']) > 0 ? $_POST['quantity'] : 1;

    // Fetch product details using Product class
    $product->id = $product_id;
    $product->slug = '';  // Reset slug to avoid conflict
    if ($product->readOneById()) {  // Create a method to fetch by ID

        $item = [
            'id' => $product->id,
            'name' => $product->name,
            'price' => $product->price,
            'image' => $product->image ?? 'assets/images/default.jpg',
            'quantity' => $quantity
        ];

        // Check if product already exists in cart
        $exists = false;
        foreach ($_SESSION['cart'] as &$cart_item) {
            if ($cart_item['id'] == $product->id) {
                $cart_item['quantity'] += $quantity;
                $exists = true;
                break;
            }
        }

        // If not, add as new item
        if (!$exists) {
            $_SESSION['cart'][] = $item;
        }

        // Return updated mini-cart
        include 'minicart.php';
        exit();
    } else {
        echo json_encode(['error' => 'Product not found']);
        exit();
    }
}

// Update cart quantities
if (isset($_POST['update_cart'])) {
    foreach ($_POST['quantity'] as $key => $qty) {
        $_SESSION['cart'][$key]['quantity'] = $qty;
    }
    include 'shoppingcart-content.php';
    exit();
}

// Remove item from cart
if (isset($_POST['remove_item'])) {
    $product_id = $_POST['product_id'];
    foreach ($_SESSION['cart'] as $key => $item) {
        if ($item['id'] == $product_id) {
            unset($_SESSION['cart'][$key]);
        }
    }
    $_SESSION['cart'] = array_values($_SESSION['cart']);  // Reindex array
    include 'minicart.php';
    exit();
}
?>
