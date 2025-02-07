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

// Load allowed options from the config for multi-select fields
$allowedOptions = Product::getAllowedOptions();
$allowedAlloys = isset($allowedOptions['alloys']) ? $allowedOptions['alloys'] : [];
$allowedGems   = isset($allowedOptions['gems']) ? $allowedOptions['gems'] : [];
$allowedColors = isset($allowedOptions['colors']) ? $allowedOptions['colors'] : [];
$allowedSizes  = isset($allowedOptions['sizes']) ? $allowedOptions['sizes'] : ["XS", "S", "M", "L", "XL", "XXL"];

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
    
    // For multi-select fields, the posted values will be arrays.
    // You can assign them directly. (They will be JSON-encoded in the Product::create() method.)
    $product->color = isset($_POST['color']) ? $_POST['color'] : [];  
    $product->size = isset($_POST['size']) ? $_POST['size'] : [];
    $product->alloy = isset($_POST['alloy']) ? $_POST['alloy'] : [];
    $product->gems = isset($_POST['gems']) ? $_POST['gems'] : [];
    
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

                    // Check if the file already exists; if so, append timestamp.
                    if (file_exists($imagePath)) {
                        $pathInfo = pathinfo($imagePath);
                        $newImageName = $pathInfo['filename'] . '_' . time() . '.' . $pathInfo['extension'];
                        $imagePath = $productDir . '/' . $newImageName;
                    }

                    if (move_uploaded_file($tempImagePath, $imagePath)) {
                        $productImages->product_id = $product->id;
                        $productImages->image = basename($imagePath);
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

    <!-- Multi-select for Color -->
    <label for="color">Color:</label>
    <select name="color[]" id="color" multiple required>
        <?php foreach ($allowedColors as $colorOption): ?>
            <option value="<?php echo htmlspecialchars($colorOption); ?>">
                <?php echo htmlspecialchars($colorOption); ?>
            </option>
        <?php endforeach; ?>
    </select>

    <!-- Multi-select for Size -->
    <label for="size">Size:</label>
    <select name="size[]" id="size" multiple required>
        <?php foreach ($allowedSizes as $sizeOption): ?>
            <option value="<?php echo htmlspecialchars($sizeOption); ?>">
                <?php echo htmlspecialchars($sizeOption); ?>
            </option>
        <?php endforeach; ?>
    </select>

    <!-- Multi-select for Alloy -->
    <label for="alloy">Alloy:</label>
    <select name="alloy[]" id="alloy" multiple required>
        <?php foreach ($allowedAlloys as $alloyOption): ?>
            <option value="<?php echo htmlspecialchars($alloyOption); ?>">
                <?php echo htmlspecialchars($alloyOption); ?>
            </option>
        <?php endforeach; ?>
    </select>

    <!-- Multi-select for Gems -->
    <label for="gems">Gems:</label>
    <select name="gems[]" id="gems" multiple required>
        <?php foreach ($allowedGems as $gemsOption): ?>
            <option value="<?php echo htmlspecialchars($gemsOption); ?>">
                <?php echo htmlspecialchars($gemsOption); ?>
            </option>
        <?php endforeach; ?>
    </select>

    <label for="is_master">Is Master Product:</label>
    <input type="checkbox" name="is_master" id="is_master">

    <label for="images">Product Images:</label>
    <input type="file" name="images[]" id="images" multiple>

    <button type="submit">Add Product</button>
</form>
<script>
document.querySelector("form").addEventListener("submit", function() {
    tinymce.triggerSave(); // Ensures TinyMCE content is synced to the hidden <textarea>
});
</script>
<?php include '../includes/internal/footer.php'; ?>
