<?php

/**
 * Format a number as currency.
 *
 * @param float $amount The amount to format.
 * @param string $currency The currency symbol.
 * @return string The formatted currency string.
 */
function formatCurrency($amount, $currency = '$') {
    return $currency . number_format($amount, 2);
}

/**
 * Sanitize user input to prevent XSS attacks.
 *
 * @param string $data The input data to sanitize.
 * @return string The sanitized data.
 */
function sanitizeInput($data) {
    return htmlspecialchars(trim($data), ENT_QUOTES, 'UTF-8');
}

/**
 * Redirect to a different page.
 *
 * @param string $url The URL to redirect to.
 * @return void
 */
function redirect($url) {
    header("Location: $url");
    exit();
}

/**
 * Check if the user is logged in.
 *
 * @return bool True if the user is logged in, false otherwise.
 */
function isLoggedIn() {
    return isset($_SESSION['user_id']);
}

/**
 * Check if the user is an admin.
 *
 * @return bool True if the user is an admin, false otherwise.
 */
function isAdmin() {
    return isset($_SESSION['admin_id']);
}

/**
 * Generate a CSRF token.
 *
 * @return string The generated token.
 */
function generateCsrfToken() {
    if (empty($_SESSION['csrf_token'])) {
        $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
    }
    return $_SESSION['csrf_token'];
}

/**
 * Verify a CSRF token.
 *
 * @param string $token The token to verify.
 * @return bool True if the token is valid, false otherwise.
 */
function verifyCsrfToken($token) {
    return isset($_SESSION['csrf_token']) && hash_equals($_SESSION['csrf_token'], $token);
}

/**
 * Get the current URL.
 *
 * @return string The current URL.
 */
function getCurrentUrl() {
    $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';
    return $protocol . "://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
}

/**
 * Format a date.
 *
 * @param string $date The date string.
 * @param string $format The date format.
 * @return string The formatted date string.
 */
function formatDate($date, $format = 'F j, Y') {
    return date($format, strtotime($date));
}

?>
