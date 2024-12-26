<?php

include_once 'classes/Category.php';
$category = new Category($db);
$stmt = $category->readAll();
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $categories_array[] = $row;
}

?>