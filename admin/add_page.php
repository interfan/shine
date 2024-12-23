<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Page.php';

$database = new Database();
$db = $database->getConnection();

$page = new Page($db);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $page->title = $_POST['title'];
    $page->slug = $_POST['slug'];
    $page->content = $_POST['content'];

    if ($page->create()) {
        header("Location: pages.php");
    } else {
        echo "Unable to create page.";
    }
}

include '../includes/internal/header.php';
?>

<h2>Add New Page</h2>
<form action="add_page.php" method="post">
    <label for="title">Title:</label>
    <input type="text" name="title" id="title" required>

    <label for="slug">Slug:</label>
    <input type="text" name="slug" id="slug" required>

    <label for="content">Content:</label>
    <textarea name="content" id="content"></textarea>

    <button type="submit">Add Page</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
