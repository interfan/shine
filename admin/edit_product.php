<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Product.php';
include_once '../classes/Category.php';

$database = new Database();
$db = $database->getConnection();

$product = new Product($db);
$category = new Category($db);

$product->id = $_GET['id'];
$product->readOne();
$categories = $category->readAll();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $product->name = $_POST['name'];
    $product->slug = $_POST['slug'];
    $product->description = $_POST['description'];
    $product->price = $_POST['price'];

    if (!empty($_FILES['image']['name'])) {
        $product->image = $_FILES['image']['name'];
        move_uploaded_file($_FILES['image']['tmp_name'], '../assets/images/' . $product->image);
    }

    $product->category_id = $_POST['category_id'];

    if ($product->update()) {
        header("Location: products.php");
    } else {
        echo "Unable to update product.";
    }
}

include '../includes/internal/header.php';
?>

<h2>Edit Product</h2>
<form action="edit_product.php?id=<?php echo $product->id; ?>" method="post" enctype="multipart/form-data">
    <label for="name">Product Name:</label>
    <input type="text" name="name" id="name" value="<?php echo $product->name; ?>">

    <label for="slug">Slug:</label>
    <input type="text" name="slug" id="slug" value="<?php echo $product->slug; ?>">

    <label for="description">Description:</label>
    <textarea name="description" id="description"><?php echo $product->description; ?></textarea>

    <label for="price">Price:</label>
    <input type="text" name="price" id="price" value="<?php echo $product->price; ?>">

    <label for="category_id">Category:</label>
    <select name="category_id" id="category_id">
        <?php while ($row = $categories->fetch(PDO::FETCH_ASSOC)) { ?>
            <option value="<?php echo $row['id']; ?>" <?php if ($row['id'] == $product->category_id) echo 'selected'; ?>>
                <?php echo $row['name']; ?>
            </option>
        <?php } ?>
    </select>

    <label for="image">Image:</label>
    <input type="file" name="image" id="image">
    <img src="../assets/images/<?php echo $product->image; ?>" alt="<?php echo $product->name; ?>">

    <button type="submit">Update Product</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
