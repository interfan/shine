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

$product->slug = $_GET['slug'];

// Check if readOne() was successful
if (!$product->readOne()) {
    die("Unable to retrieve product details.");
}

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
    $product->sku = $_POST['sku']; // Set SKU
    // Set is_master from checkbox (1 if checked, 0 if not)
    $product->is_master = isset($_POST['is_master']) ? 1 : 0;
    
    // Set master product ID from the form (null if not provided)
    $product->master_product_id = $_POST['master_product_id'] ?? null;


    $product->is_disabled = isset($_POST['is_disabled']) ? 1 : 0; // Handle new field

    if ($product->update()) {
        // Handle image updates
        if (!empty($_FILES['images']['name'][0])) {
            $productDir = '../assets/products/' . htmlspecialchars($product->name);
            if (!file_exists($productDir)) {
                mkdir($productDir, 0777, true);
            }

            foreach ($_FILES['images']['name'] as $key => $imageName) {
                if ($_FILES['images']['error'][$key] == UPLOAD_ERR_OK) {
                    $tempImagePath = $_FILES['images']['tmp_name'][$key];
                    $imagePath = $productDir . '/' . basename($imageName);

                    if (file_exists($imagePath)) {
                        $pathInfo = pathinfo($imagePath);
                        $newImageName = $pathInfo['filename'] . '_' . time() . '.' . $pathInfo['extension'];
                        $imagePath = $productDir . '/' . $newImageName;
                    }

                    if (move_uploaded_file($tempImagePath, $imagePath)) {
                        $productImages->product_id = $product->id;
                        $productImages->image = basename($imagePath);
                        $productImages->is_default = 0;
                        if (!$productImages->addImage()) {
                            $errorMessage = "Unable to add image.";
                        }
                    } else {
                        $errorMessage = "Failed to upload image.";
                    }
                }
            }
        }

        // Handle product variations
        if (isset($_POST['variations'])) {
            foreach ($_POST['variations'] as $variation) {
                if (isset($variation['name']) && isset($variation['value'])) {
                    if (!$product->addVariation($variation['name'], $variation['value'])) {
                        $errorMessage = "Unable to add product variation.";
                    }
                }
            }
        }

        $successMessage = 'Product updated successfully.';
    } else {
        $errorMessage = 'Unable to update product.';
    }
}

if (isset($_GET['remove_image'])) {
    $image_id = $_GET['remove_image'];
    if ($productImages->removeImage($image_id)) {
        $successMessage = 'Image removed successfully.';
    } else {
        $errorMessage = 'Unable to remove image.';
    }
}

if (isset($_GET['remove_master_connection'])) {
    $master_product_id = $_GET['remove_master_connection'];
    if ($product->removeMasterConnection($master_product_id)) {
        $successMessage = 'Master product connection removed successfully.';
    } else {
        $errorMessage = 'Unable to remove master product connection.';
    }
}

if (isset($_GET['remove_connection'])) {
    $connected_product_id = $_GET['remove_connection'];
    if ($product->removeConnection($connected_product_id)) {
        $successMessage = 'Connection removed successfully.';
    } else {
        $errorMessage = 'Unable to remove connection.';
    }
}

if (isset($_GET['set_default'])) {
    $image_id = $_GET['set_default'];
    if ($productImages->setDefault($image_id)) {
        $successMessage = 'Default image set successfully.';
    } else {
        $errorMessage = 'Unable to set default image.';
    }
}

include '../includes/internal/header.php';
?>

<h2>Edit Product</h2>

<?php if ($successMessage): ?>
    <p style="color: green;"><?php echo htmlspecialchars($successMessage ?? ''); ?></p>
<?php endif; ?>

<?php if ($errorMessage): ?>
    <p style="color: red;"><?php echo htmlspecialchars($errorMessage ?? ''); ?></p>
<?php endif; ?>

<form action="edit_product.php?id=<?php echo htmlspecialchars($product->id ?? ''); ?>" method="post" enctype="multipart/form-data">
    <label for="name">Product Name:</label>
    <input type="text" name="name" id="name" value="<?php echo htmlspecialchars($product->name ?? ''); ?>" required>

    <label for="is_disabled">Disable Product:</label>
    <input type="checkbox" name="is_disabled" id="is_disabled" value="1" <?php echo $product->is_disabled ? 'checked' : ''; ?>>

    <label for="slug">Slug:</label>
    <input type="text" name="slug" id="slug" value="<?php echo htmlspecialchars($product->slug ?? ''); ?>" required>

    <label for="description">Description:</label>
    <textarea name="description" id="description" rows="4" required><?php echo htmlspecialchars($product->description ?? ''); ?></textarea>

    <label for="price">Price:</label>
    <input type="number" step="0.01" name="price" id="price" value="<?php echo htmlspecialchars($product->price ?? ''); ?>" required>

    <label for="category_id">Category:</label>
    <select name="category_id" id="category_id" required>
        <?php while ($row = $categories->fetch(PDO::FETCH_ASSOC)) { ?>
            <option value="<?php echo htmlspecialchars($row['id']); ?>" <?php echo ($row['id'] == $product->category_id) ? 'selected' : ''; ?>>
                <?php echo htmlspecialchars($row['name'] ?? ''); ?>
            </option>
        <?php } ?>
    </select>

    <label for="stock">Stock:</label>
    <input type="number" name="stock" id="stock" value="<?php echo htmlspecialchars($product->stock ?? ''); ?>" required>

    <label for="video">Video URL:</label>
    <input type="text" name="video" id="video" value="<?php echo htmlspecialchars($product->video ?? ''); ?>">

    <label for="color">Color:</label>
    <input type="text" name="color" id="color" value="<?php echo htmlspecialchars($product->color ?? ''); ?>">

    <label for="size">Size:</label>
    <input type="text" name="size" id="size" value="<?php echo htmlspecialchars($product->size ?? ''); ?>">

    <label for="alloy">Alloy:</label>
    <input type="text" name="alloy" id="alloy" value="<?php echo htmlspecialchars($product->alloy ?? ''); ?>">

    <label for="gems">Gems:</label>
    <input type="text" name="gems" id="gems" value="<?php echo htmlspecialchars($product->gems ?? ''); ?>">

    <label for="sku">SKU:</label>
    <input type="text" name="sku" id="sku" value="<?php echo htmlspecialchars($product->sku ?? ''); ?>">

    <label for="is_master">Is Master Product:</label>
    <input type="checkbox" name="is_master" id="is_master" value="1" <?php echo $product->is_master ? 'checked' : ''; ?>>

    <?php if(!$product->master_product_id) { ?>
        <!-- Search for master product -->
        <label for="master_search">Search for Master Product:</label>
        <input type="text" id="master_search" name="master_search">

        <div id="master_results"></div>
    <?php } ?>

    <label for="master_product_id">Master Product ID:</label>
    <input type="text" name="master_product_id" id="master_product_id" value="<?php echo htmlspecialchars($product->master_product_id ?? ''); ?>">

    <label for="images">Product Images:</label>
    <input type="file" name="images[]" id="images" multiple>

    <?php if($product->is_master) { ?>
        <h3>Connected Products (Variants)</h3>
        <div id="connected_products">
            <?php
            $connectedProducts = $product->getVariants();
            if ($connectedProducts) {
                foreach ($connectedProducts as $connectedProduct) {
                    echo '<div>';
                    echo '<p>' . htmlspecialchars($connectedProduct['name'] ?? '') . '</p>';
                    echo '<a href="edit_product.php?id=' . htmlspecialchars($product->id ?? '') . '&remove_connection=' . htmlspecialchars($connectedProduct['id']) . '">Remove Connection</a>';
                    echo '</div>';
                }
            } else {
                echo '<div> None </div> <br>';
            }
            ?>
        </div>
    <?php } ?>

    <?php if(!$product->is_master) { ?>
        <h3>Master Products</h3>
        <div id="master_products">
            <?php
            $masterProductId = $product->master_product_id;
            if ($masterProductId) {
                // Fetch master product details
                $masterProduct = new Product($db);
                $masterProduct->id = $masterProductId;
                $masterProduct->readOne();
                echo '<div>';
                echo '<p>' . htmlspecialchars($masterProduct->name ?? '') . '</p>';
                echo '<a href="edit_product.php?id=' . htmlspecialchars($product->id ?? '') . '&remove_master_connection=' . htmlspecialchars($masterProduct->id ?? '') . '">Remove Connection</a>';
                echo '</div>';
            } else {
                echo '<div>None</div>';
            }
            ?>
        </div>
    <?php } ?>
    
    <button type="submit">Update Product</button>
</form>

<h3>Existing Images</h3>
<?php
$images = $productImages->readByProduct($product->id);
while ($image = $images->fetch(PDO::FETCH_ASSOC)) {
    echo '<div>';
    echo '<img src="../assets/products/' . htmlspecialchars($product->name ?? '') . '/' . htmlspecialchars($image['image'] ?? '') . '" width="100">';
    if ($image['is_default']) {
        echo '<a href="edit_product.php?id=' . htmlspecialchars($product->id ?? '') . '&remove_image=' . htmlspecialchars($image['id'] ?? '') . '">Remove</a>';
        echo ' | ';
        echo '<strong>Default</strong>';
    } else {
        echo '<a href="edit_product.php?id=' . htmlspecialchars($product->id ?? '') . '&remove_image=' . htmlspecialchars($image['id'] ?? '') . '">Remove</a>';
        echo ' | ';
        echo '<a href="edit_product.php?id=' . htmlspecialchars($product->id ?? '') . '&set_default=' . htmlspecialchars($image['id'] ?? '') . '">Set as Default</a>';
    }
    echo '</div>';
}
?>

<script>
    // JavaScript for searching master products
    document.getElementById('master_search').addEventListener('input', function() {
        var query = this.value;
        if (query.length < 3) return; // Don't search for very short queries
        
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'search_master.php?q=' + encodeURIComponent(query), true);
        xhr.onload = function() {
            if (xhr.status === 200) {
                var results = JSON.parse(xhr.responseText);
                var resultsDiv = document.getElementById('master_results');
                resultsDiv.innerHTML = '';
                
                if (results.length > 0) {
                    results.forEach(function(product) {
                        var resultItem = document.createElement('div');
                        resultItem.innerHTML = '<a href="#" data-product-id="' + product.id + '">' + product.name + '</a>';
                        resultItem.addEventListener('click', function(e) {
                            e.preventDefault();
                            document.getElementById('master_product_id').value = product.id;
                            document.getElementById('master_search').value = product.name;
                            resultsDiv.innerHTML = ''; // Clear results
                        });
                        resultsDiv.appendChild(resultItem);
                    });
                } else {
                    resultsDiv.innerHTML = '<p>No products found.</p>';
                }
            }
        };
        xhr.send();
    });
</script>

<?php include '../includes/internal/footer.php'; ?>
