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
    <input type="text" name="name" id="name" value="<?php echo $category->name; ?>">

    <label for="slug">Slug:</label>
    <input type="text" name="slug" id="slug" value="<?php echo $category->slug; ?>">

    <button type="submit">Update Category</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
