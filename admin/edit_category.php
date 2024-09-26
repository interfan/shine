<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Category.php';

$database = new Database();
$db = $database->getConnection();

$category = new Category($db);
$category->id = $_GET['id'];
$category->readOne();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $category->name = $_POST['name'];
    $category->slug = $_POST['slug'];
    $category->is_disabled = isset($_POST['is_disabled']) ? 1 : 0; // Set is_disabled based on checkbox

    if ($category->update()) {
        header("Location: categories.php");
    } else {
        echo "Unable to update category.";
    }
}

include '../includes/internal/header.php';
?>

<h2>Edit Category</h2>
<form action="edit_category.php?id=<?php echo $category->id; ?>" method="post">
    <label for="name">Category Name:</label>
    <input type="text" name="name" id="name" value="<?php echo htmlspecialchars($category->name); ?>">

    <label for="slug">Slug:</label>
    <input type="text" name="slug" id="slug" value="<?php echo htmlspecialchars($category->slug); ?>">

    <label for="is_disabled">
        <input type="checkbox" name="is_disabled" id="is_disabled" value="1" <?php echo $category->is_disabled ? 'checked' : ''; ?>>
        Disabled
    </label>

    <button type="submit">Update Category</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
