<?php
class Wishlist {
    // Session key used to store wishlist items
    private $session_key = 'wishlist';

    public function __construct() {
        // Ensure session is started
        if(session_status() !== PHP_SESSION_ACTIVE) {
            session_start();
        }
        // Initialize wishlist if it doesn't exist
        if (!isset($_SESSION[$this->session_key])) {
            $_SESSION[$this->session_key] = array();
        }
    }

    // Add a product to the wishlist. Optionally, you can store extra data.
    public function addItem($productId, $data = array()) {
        // Save by product ID (overwrites any existing entry)
        $_SESSION[$this->session_key][$productId] = $data;
    }

    // Remove a product from the wishlist
    public function removeItem($productId) {
        if(isset($_SESSION[$this->session_key][$productId])) {
            unset($_SESSION[$this->session_key][$productId]);
        }
    }

    // Clear the entire wishlist
    public function clear() {
        $_SESSION[$this->session_key] = array();
    }

    // Get all wishlist items
    public function getItems() {
        return $_SESSION[$this->session_key];
    }
}
?>
