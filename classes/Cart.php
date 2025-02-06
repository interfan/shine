<?php
class Cart {
    // Add product to the cart
    public function addProduct($product_id, $quantity, $variation = null, $swatch = null) {
        // Initialize the cart if not already set
        if (!isset($_SESSION['cart'])) {
            $_SESSION['cart'] = [];
        }

        // Check if product already exists in the cart
        $exists = false;
        foreach ($_SESSION['cart'] as &$cartItem) {
            if ($cartItem['product_id'] == $product_id && $cartItem['variation'] == $variation && $cartItem['swatch'] == $swatch) {
                // If it exists, update the quantity
                $cartItem['quantity'] += $quantity;
                $exists = true;
                break;
            }
        }

        // If the product doesn't exist in the cart, add it
        if (!$exists) {
            $product = [
                'product_id' => $product_id,
                'quantity' => $quantity,
                'variation' => $variation,
                'swatch' => $swatch
            ];
            $_SESSION['cart'][] = $product;
        }
    }

    // Get the cart contents
    public function getCart() {
        return isset($_SESSION['cart']) ? $_SESSION['cart'] : [];
    }

    // Get total cart price
    public function getTotal($conn) {
        $total = 0;
        
        // Iterate over each cart item to calculate the total
        foreach ($this->getCart() as $cartItem) {
            $product_id = $cartItem['product_id'];
            $quantity = $cartItem['quantity'];

            // Fetch product price from the database
            $query = "SELECT price FROM products WHERE id = ?";
            $stmt = $conn->prepare($query);
            $stmt->bindParam(1, $product_id);
            $stmt->execute();
            $row = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($row) {
                // Calculate total price for this item and add to the overall total
                $total += $row['price'] * $quantity;
            }
        }
        
        return number_format($total, 2); // Return total formatted with 2 decimal places
    }

    // Remove product from cart by product ID
    public function removeProduct($product_id, $variation = null, $swatch = null) {
        if (isset($_SESSION['cart'])) {
            foreach ($_SESSION['cart'] as $key => $cartItem) {
                if ($cartItem['product_id'] == $product_id && $cartItem['variation'] == $variation && $cartItem['swatch'] == $swatch) {
                    unset($_SESSION['cart'][$key]); // Remove item
                    $_SESSION['cart'] = array_values($_SESSION['cart']); // Reindex array after removal
                    break;
                }
            }
        }
    }

    // Update product quantity in the cart
    public function updateProductQuantity($product_id, $quantity, $variation = null, $swatch = null) {
        if (isset($_SESSION['cart'])) {
            foreach ($_SESSION['cart'] as &$cartItem) {
                if ($cartItem['product_id'] == $product_id && $cartItem['variation'] == $variation && $cartItem['swatch'] == $swatch) {
                    $cartItem['quantity'] = $quantity; // Update quantity
                    break;
                }
            }
        }
    }

    // Get total quantity of products in the cart
    public function getTotalQuantity() {
        $totalQuantity = 0;
        foreach ($this->getCart() as $cartItem) {
            $totalQuantity += $cartItem['quantity'];
        }
        return $totalQuantity;
    }
}
?>
