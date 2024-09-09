<?php
include_once 'classes/Database.php';
include_once 'classes/Content.php';

$database = new Database();
$db = $database->getConnection();

$content = new Content($db);

if (isset($_GET['slug'])) {
    $slug = $_GET['slug'];
    $pageContent = $content->readOne($slug);

    if ($pageContent) {
        $title = htmlspecialchars($pageContent['title']);
        $body = htmlspecialchars($pageContent['content']);
    } else {
        echo "Content not found.";
        exit;
    }
} else {
    echo "No content slug provided.";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $title; ?></title>
</head>
<body>
    <h1><?php echo $title; ?></h1>
    <div><?php echo nl2br($body); ?></div>
</body>
</html>
