<?php
session_start();

if (!isset($_SESSION['cart'])) {
  $_SESSION['cart'] = array();
}

$action = $_POST['action'];
$productId = $_POST['productId'];

switch ($action) {
  case 'add':
    if (!isset($_SESSION['cart'][$productId])) {
      $_SESSION['cart'][$productId] = 1; 
    } else {
      $_SESSION['cart'][$productId]++; 
    }
    break;
  case 'delete':
    if (isset($_SESSION['cart'][$productId])) {
      unset($_SESSION['cart'][$productId]);
    }
    break;
  case 'update':
    $quantity = intval($_POST['quantity']);
    if ($quantity > 0) {
      $_SESSION['cart'][$productId] = $quantity;
    } else {
      unset($_SESSION['cart'][$productId]); 
    }
    break;
}

// Send cart data back to the client
$cartData = '';
if (!empty($_SESSION['cart'])) {
  foreach ($_SESSION['cart'] as $productId => $quantity) {
    // Fetch product details from your database here (replace with your actual logic)
    $productPrice = 19.99; 
    $cartData .= '<tr>';
    $cartData .= '<td>Product ' . $productId . '</td>';
    $cartData .= '<td>$' . number_format($productPrice, 2) . '</td>';
    $cartData .= '<td>';
    $cartData .= '<input type="number" min="1" value="' . $quantity . '" 
                  class="quantityInput" data-product-id="' . $productId . '">';
    $cartData .= '</td>';
    $cartData .= '<td>$' . number_format($productPrice * $quantity, 2) . '</td>';
    $cartData .= '<td><button class="deleteFromCartBtn" data-product-id="' . $productId . '">Remove</button></td>';
    $cartData .= '</tr>';
  }
} else {
  $cartData .= '<tr><td colspan="5">Your cart is empty.</td></tr>';
}

echo $cartData;
?>