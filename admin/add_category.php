<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Category.php';

$database = new Database();
$db = $database->getConnection();

$category = new Category($db);

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $category->name = $_POST['name'];
    $category->description = $_POST['description'];
    $category->slug = $_POST['slug'];
    $category->parent_id = isset($_POST['parent_id']) ? $_POST['parent_id'] : null; // Default to null if not set

    if ($category->create()) {
        header("Location: categories.php");
        exit(); // Ensure no further code is executed after redirection
    } else {
        $error = "Unable to create category.";
    }
}

// Fetch all categories for the parent category dropdown
$parentCategories = new Category($db);
$parentCategories = $parentCategories->readAll();

include '../includes/internal/header.php';
?>

<h2>Add New Category</h2>

<?php if (isset($error)) { ?>
    <p style="color: red;"><?php echo htmlspecialchars($error); ?></p>
<?php } ?>

<form action="add_category.php" method="post">
    <label for="name">Category Name:</label>
    <input type="text" name="name" id="name" required>

    <label for="description">Description:</label>
    <textarea name="description" id="description"></textarea>

    <label for="slug">Slug:</label>
    <input type="text" name="slug" id="slug" required>

    <label for="parent_id">Parent Category:</label>
    <select name="parent_id" id="parent_id">
        <option value="">None</option>
        <?php while ($parentRow = $parentCategories->fetch(PDO::FETCH_ASSOC)) { ?>
            <option value="<?php echo $parentRow['id']; ?>">
                <?php echo htmlspecialchars($parentRow['name']); ?>
            </option>
        <?php } ?>
    </select>

    <button type="submit">Add Category</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
