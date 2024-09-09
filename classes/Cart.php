<?php
class Cart {
    public function addProduct($product_id, $quantity, $variation = null, $swatch = null) {
        if (!isset($_SESSION['cart'])) {
            $_SESSION['cart'] = [];
        }
        
        $product = [
            'product_id' => $product_id,
            'quantity' => $quantity,
            'variation' => $variation,
            'swatch' => $swatch
        ];

        $_SESSION['cart'][] = $product;
    }

    public function getCart() {
        return isset($_SESSION['cart']) ? $_SESSION['cart'] : [];
    }

    public function getTotal($conn) {
        $total = 0;
        foreach ($this->getCart() as $cartItem) {
            $product_id = $cartItem['product_id'];
            $quantity = $cartItem['quantity'];

            $query = "SELECT price FROM products WHERE id = ?";
            $stmt = $conn->prepare($query);
            $stmt->bindParam(1, $product_id);
            $stmt->execute();
            $row = $stmt->fetch(PDO::FETCH_ASSOC);

            $total += $row['price'] * $quantity;
        }
        return $total;
    }
}
?>
