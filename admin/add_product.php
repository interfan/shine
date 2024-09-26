<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Product.php';
include_once '../classes/ProductImages.php';
include_once '../classes/Category.php';

$database = new Database();
$db = $database->getConnection();

$product = new Product($db);
$productImages = new ProductImages($db);
$category = new Category($db);

$categories = $category->readAll();

$successMessage = '';
$errorMessage = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Set product properties
    $product->name = $_POST['name'];
    $product->slug = $_POST['slug'];
    $product->description = $_POST['description'];
    $product->price = $_POST['price'];
    $product->category_id = $_POST['category_id'];
    $product->stock = $_POST['stock'];
    $product->video = $_POST['video'];
    $product->color = $_POST['color'];
    $product->size = $_POST['size'];
    $product->alloy = $_POST['alloy'];
    $product->gems = $_POST['gems'];
    $product->is_master = isset($_POST['is_master']) ? 1 : 0; // Check if product is master

    if ($product->create()) {
        // Handle image uploads
        if (!empty($_FILES['images']['name'][0])) {
            $productDir = '../assets/products/' . htmlspecialchars($product->name);
            if (!file_exists($productDir)) {
                mkdir($productDir, 0777, true);
            }

            foreach ($_FILES['images']['name'] as $key => $imageName) {
                if ($_FILES['images']['error'][$key] == UPLOAD_ERR_OK) {
                    $tempImagePath = $_FILES['images']['tmp_name'][$key];
                    $imagePath = $productDir . '/' . basename($imageName);

                    // Check if the file already exists
                    if (file_exists($imagePath)) {
                        // Optionally handle duplicate names (e.g., append a timestamp)
                        $pathInfo = pathinfo($imagePath);
                        $newImageName = $pathInfo['filename'] . '_' . time() . '.' . $pathInfo['extension'];
                        $imagePath = $productDir . '/' . $newImageName;
                    }

                    if (move_uploaded_file($tempImagePath, $imagePath)) {
                        $productImages->product_id = $product->id;
                        $productImages->image = basename($imagePath); // Save the new image name
                        $productImages->is_default = 0; // Do not set any image as default automatically
                        if (!$productImages->addImage()) {
                            $errorMessage = "Unable to add image.";
                        }
                    } else {
                        $errorMessage = "Failed to upload image.";
                    }
                }
            }
        }

        $successMessage = 'Product added successfully.';
    } else {
        $errorMessage = 'Unable to add product.';
    }
}

include '../includes/internal/header.php';
?>

<h2>Add Product</h2>

<?php if ($successMessage): ?>
    <p style="color: green;"><?php echo htmlspecialchars($successMessage); ?></p>
<?php endif; ?>

<?php if ($errorMessage): ?>
    <p style="color: red;"><?php echo htmlspecialchars($errorMessage); ?></p>
<?php endif; ?>

<form action="add_product.php" method="post" enctype="multipart/form-data">
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
        <?php while ($row = $categories->fetch(PDO::FETCH_ASSOC)) { ?>
            <option value="<?php echo htmlspecialchars($row['id']); ?>">
                <?php echo htmlspecialchars($row['name']); ?>
            </option>
        <?php } ?>
    </select>

    <label for="stock">Stock:</label>
    <input type="number" name="stock" id="stock" required>

    <label for="video">Video URL:</label>
    <input type="text" name="video" id="video">

    <label for="color">Color:</label>
    <input type="text" name="color" id="color">

    <label for="size">Size:</label>
    <input type="text" name="size" id="size">

    <label for="alloy">Alloy:</label>
    <input type="text" name="alloy" id="alloy">

    <label for="gems">Gems:</label>
    <input type="text" name="gems" id="gems">

    <label for="is_master">Is Master Product:</label>
    <input type="checkbox" name="is_master" id="is_master">

    <label for="images">Product Images:</label>
    <input type="file" name="images[]" id="images" multiple>

    <button type="submit">Add Product</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
