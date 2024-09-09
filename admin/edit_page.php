<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Page.php';

$database = new Database();
$db = $database->getConnection();

$page = new Page($db);

if (isset($_GET['id'])) {
    $page->id = $_GET['id'];
    $page->readOneById();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $page->title = $_POST['title'];
    $page->slug = $_POST['slug'];
    $page->content = $_POST['content'];

    if ($page->update()) {
        header("Location: pages.php");
    } else {
        echo "Unable to update page.";
    }
}

include '../includes/internal/header.php';
?>

<h2>Edit Page</h2>
<form action="edit_page.php?id=<?php echo $page->id; ?>" method="post">
    <label for="title">Title:</label>
    <input type="text" name="title" id="title" value="<?php echo $page->title; ?>" required>

    <label for="slug">Slug:</label>
    <input type="text" name="slug" id="slug" value="<?php echo $page->slug; ?>" required>

    <label for="content">Content:</label>
    <textarea name="content" id="content" required><?php echo $page->content; ?></textarea>

    <button type="submit">Update Page</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
