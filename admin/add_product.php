<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Product.php';
include_once '../classes/Category.php'; // Include Category class to fetch category options

$database = new Database();
$db = $database->getConnection();

$product = new Product($db);
$category = new Category($db);

// Fetch all categories for the dropdown
$categories = $category->readAll();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $product->name = $_POST['name'];
    $product->slug = $_POST['slug'];
    $product->description = $_POST['description'];
    $product->price = $_POST['price'];
    $product->category_id = $_POST['category_id'];
    $product->stock = $_POST['stock'];
    $product->image = $_POST['image'];

    if ($product->create()) {
        header("Location: products.php");
    } else {
        echo "Unable to create product.";
    }
}

include '../includes/internal/header.php';
?>

<h2>Add New Product</h2>
<form action="add_product.php" method="post">
    <label for="name">Product Name:</label>
    <input type="text" name="name" id="name" required>

    <label for="slug">Slug:</label>
    <input type="text" name="slug" id="slug" required>

    <label for="description">Description:</label>
    <textarea name="description" id="description" rows="4" required></textarea>

    <label for="price">Price:</label>
    <input type="number" step="0.01" name="price" id="price" required>

    <label for="category_id">Category:</label>
    <select name="category_id" id="category_id" required>
        <option value="">Select Category</option>
        <?php while ($row = $categories->fetch(PDO::FETCH_ASSOC)) { ?>
            <option value="<?php echo htmlspecialchars($row['id']); ?>">
                <?php echo htmlspecialchars($row['name']); ?>
            </option>
        <?php } ?>
    </select>

    <label for="stock">Stock:</label>
    <input type="number" name="stock" id="stock" required>

    <label for="image">Image URL:</label>
    <input type="file" name="image" id="image">

    <button type="submit">Add Product</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
