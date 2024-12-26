<?php
include_once 'classes/Database.php';
include_once 'classes/Page.php';
include_once 'classes/Category.php';

$database = new Database();
$db = $database->getConnection();

$content = new Page($db);

$category = new Category($db);
$stmt = $category->readAll();
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $categories_array[] = $row;
}

if (isset($_GET['slug'])) {
    $slug = $_GET['slug'];
    $pageContent = $content->readOne($slug);
    if ($pageContent) {
        $title = htmlspecialchars($pageContent['title'] ?? '');
        $body = $pageContent['content'];
    } else {
        echo "Content not found.";
        exit;
    }
} else {
    echo "No content slug provided.";
    exit;
}

include './includes/header.php'; // Include header

?>

<div class="main-content main-content-product left-sidebar">
    <div class="container">
        <?php include './includes/breadcrumbs.php'; // Include footer ?>
        <div class="row">
            <h1><?php echo $title; ?></h1>
            <div><?php echo html_entity_decode(html_entity_decode($body)); ?></div>
        </div>
    </div>
</div>

<?php include './includes/footer.php'; // Include footer ?>
