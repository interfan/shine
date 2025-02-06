<?php
session_start();

$minicartData = '';

if (!empty($_SESSION['cart']['items'])) {
    $totalQuantity = 0;

    $minicartData .= '<ul class="minicart-list">';

    foreach ($_SESSION['cart']['items'] as $cartItem) {
        $productId = $cartItem['id'];
        $productName = htmlspecialchars($cartItem['name']);
        $productPrice = number_format($cartItem['price'], 2);
        $productImage = htmlspecialchars($cartItem['image'] ?? 'assets/images/default.jpg');
        $quantity = intval($cartItem['quantity']);
        $totalQuantity += $quantity;

        $minicartData .= '
            <li class="minicart-item">
                <img src="' . $productImage . '" alt="' . $productName . '" class="minicart-image">
                <div class="minicart-details">
                    <span class="minicart-name">' . $productName . '</span>
                    <span class="minicart-price">$' . $productPrice . '</span>
                    <span class="minicart-quantity">Qty: ' . $quantity . '</span>
                </div>
            </li>';
    }

    $minicartData .= '</ul>';
    $minicartData .= '<p class="minicart-total">Total Items: <strong>' . $totalQuantity . '</strong></p>';

    // Store total quantity in session
    $_SESSION['cart']['totalQuantity'] = $totalQuantity;
} else {
    $minicartData .= '<p>Your cart is empty.</p>';
}

// Output the minicart
echo $minicartData;
?>
