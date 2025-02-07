<?php
session_start();
include './includes/helper.php';
$db = getDatabaseConnection();
$category = getCategoryInstance($db);
$categories_array = getAllCategories($db);
$product = getProductInstance($db);

// Initialize the cart if it doesn't exist
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [
        'items' => [],
        'totalQuantity' => 0,
        'subtotal' => 0
    ];
}

// Function to recalculate cart totals
function recalcCartTotals() {
    // Calculate total quantity
    $_SESSION['cart']['totalQuantity'] = array_sum(array_column($_SESSION['cart']['items'], 'quantity'));
    
    // Calculate subtotal using array_reduce
    $_SESSION['cart']['subtotal'] = array_reduce($_SESSION['cart']['items'], function($carry, $item) {
        return $carry + ($item['price'] * $item['quantity']);
    }, 0);
}

// Add to cart (Handle AJAX request)
if (isset($_POST['add_to_cart'])) {
    $product_id = $_POST['product_id'];
    $quantity = intval($_POST['quantity']) > 0 ? $_POST['quantity'] : 1;

    // Fetch product details using Product class
    $product->id = $product_id;
    $product->slug = '';  // Reset slug to avoid conflict
    if ($product->readOneById()) {  // Assumes this method fetches the product by ID

        $item = [
            'id' => $product->id,
            'name' => $product->name,
            'price' => $product->price,
            'quantity' => $quantity
        ];

        // Check if product already exists in cart
        $exists = false;
        foreach ($_SESSION['cart']['items'] as &$cart_item) {
            if ($cart_item['id'] == $product->id) {
                $cart_item['quantity'] += $quantity;
                $exists = true;
                break;
            }
        }

        // If not, add as a new item
        if (!$exists) {
            $_SESSION['cart']['items'][] = $item;
        }
        
        // Recalculate totals
        recalcCartTotals();

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
        $_SESSION['cart']['items'][$key]['quantity'] = $qty;
    }
    
    // Recalculate totals
    recalcCartTotals();

    include 'shoppingcart-content.php';
    exit();
}

// Remove item from cart
if (isset($_POST['remove_item'])) {
    $product_id = $_POST['product_id'];
    foreach ($_SESSION['cart']['items'] as $key => $item) {
        if ($item['id'] == $product_id) {
            unset($_SESSION['cart']['items'][$key]);
        }
    }
    // Reindex the items array
    $_SESSION['cart']['items'] = array_values($_SESSION['cart']['items']);
    
    // Recalculate totals
    recalcCartTotals();

    include 'minicart.php';
    exit();
}
?>
