<?php
include_once 'classes/Database.php';
include_once 'classes/Category.php';
include_once 'classes/Product.php';
include_once 'classes/Page.php';
include_once 'classes/Account.php';
include_once 'classes/Forms.php';

// Get Database Connection (Singleton)
function getDatabaseConnection() {
    static $db = null;
    if ($db === null) {
        $database = new Database();
        $db = $database->getConnection();
    }
    return $db;
}

// Get All Categories
function getAllCategories($db = null) {
    $db = $db ?? getDatabaseConnection();
    $category = new Category($db);
    $stmt = $category->readAll();
    
    $categories_array = [];
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $categories_array[] = $row;
    }

    return $categories_array;
}

// Get Product Instance
function getProductInstance($db = null) {
    $db = $db ?? getDatabaseConnection();
    return new Product($db);
}

// Get Page Instance
function getPageInstance($db = null) {
    $db = $db ?? getDatabaseConnection();
    return new Page($db);
}

// Get Account Instance
function getAccountInstance($db = null) {
    $db = $db ?? getDatabaseConnection();
    return new Account($db);
}

// Get Category Instance
function getCategoryInstance($db = null) {
    $db = $db ?? getDatabaseConnection();
    return new Category($db);
}// Form instance for dynamic login/register forms
function getFormInstance($action = '', $method = 'POST', $isPlaceholder = false) {
    return new Forms($action, $method, $isPlaceholder);
}
?>
