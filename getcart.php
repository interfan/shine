<?php
session_start();
include 'addtocart.php'; // Include addtocart.php for cart data generation

// Call the cart data generation part from addtocart.php
echo $cartData; 
?>