<?php
session_start();

$minicartData = '';
if (!empty($_SESSION['cart'])) {
  $minicartData .= '<ul>';
  foreach ($_SESSION['cart'] as $productId => $quantity) {
    $minicartData .= '<li>Product ' . $productId . ': ' . $quantity . '</li>';
  }
  $minicartData .= '</ul>';
} else {
  $minicartData .= '<p>Your cart is empty.</p>';
}

echo $minicartData;
?>