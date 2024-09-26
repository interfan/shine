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
    $page->is_disabled = isset($_POST['is_disabled']) ? 1 : 0; // Set is_disabled based on checkbox

    if ($page->update()) {
        header("Location: pages.php");
    } else {
        echo "Unable to update page.";
    }
}

include '../includes/internal/header.php';
?>

<h2>Edit Page</h2>
<form action="edit_page.php?id=<?php echo htmlspecialchars($page->id); ?>" method="post">
    <label for="title">Title:</label>
    <input type="text" name="title" id="title" value="<?php echo htmlspecialchars($page->title); ?>" required>

    <label for="slug">Slug:</label>
    <input type="text" name="slug" id="slug" value="<?php echo htmlspecialchars($page->slug); ?>" required>

    <label for="content">Content:</label>
    <textarea name="content" id="content" required><?php echo htmlspecialchars($page->content); ?></textarea>

    <label for="is_disabled">
        <input type="checkbox" name="is_disabled" id="is_disabled" value="1" <?php echo $page->is_disabled ? 'checked' : ''; ?>>
        Disabled
    </label>

    <button type="submit">Update Page</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
