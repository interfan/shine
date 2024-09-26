<?php
include_once '../classes/Database.php';
include_once '../classes/Product.php';

$database = new Database();
$db = $database->getConnection();
$product = new Product($db);

$query = $_GET['q'] ?? '';

if (!empty($query)) {
    $results = $product->searchByName($query);
    $products = [];

    while ($row = $results->fetch(PDO::FETCH_ASSOC)) {
        $products[] = $row;
    }

    echo json_encode($products);
} else {
    echo json_encode([]);
}
?>
