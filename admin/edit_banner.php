<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/BannerSlot.php';

// Create database connection
$database = new Database();
$db = $database->getConnection();

// Instantiate BannerSlot object
$bannerSlot = new BannerSlot($db);

// Check if an ID is set for editing an existing banner slot
if (isset($_GET['id'])) {
    $bannerSlot->id = $_GET['id'];
    if (!$bannerSlot->readOne()) {
        // Redirect if the banner slot with the given ID is not found
        header("Location: banner_slots.php");
        exit();
    }
} else {
    // Redirect if no ID is provided
    header("Location: banner_slots.php");
    exit();
}

// Handle form submission for updating banner slot
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $bannerSlot->title = $_POST['title'];
    $bannerSlot->description = $_POST['description'];
    $bannerSlot->short_description = $_POST['short_description'];
    $bannerSlot->price = $_POST['price'];
    $bannerSlot->shop_now_button = $_POST['shop_now_button'];
    $bannerSlot->banner_position = $_POST['banner_position'];
    $bannerSlot->view_more = $_POST['view_more'];
    $bannerSlot->is_enabled = isset($_POST['is_enabled']) ? 1 : 0;
    $bannerSlot->product_id = isset($_POST['product_id']) ? $_POST['product_id'] : null;
    $bannerSlot->category_id = isset($_POST['category_id']) ? $_POST['category_id'] : null;

    // Handle file upload
    if (isset($_FILES['image']) && $_FILES['image']['error'] == UPLOAD_ERR_OK) {
        // Sanitize banner title for folder name
        $bannerTitle = preg_replace('/[^a-zA-Z0-9_-]/', '_', $bannerSlot->title);

        // Create a directory for this specific banner using the banner's title
        $target_dir = "../assets/banners/" . $bannerTitle . "/";

        // Check if the directory exists, if not, create it
        if (!is_dir($target_dir)) {
            mkdir($target_dir, 0755, true);
        }

        // Define the target file path
        $target_file = $target_dir . basename($_FILES["image"]["name"]);

        // Move the uploaded file to the new folder
        if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
            // Store the relative path of the image in the bannerSlot object
            $bannerSlot->image = $bannerTitle . "/" . basename($_FILES["image"]["name"]);
        } else {
            echo "Error uploading the image.";
        }
    } else {
        // Use the existing image if no new image is uploaded
        $bannerSlot->image = $_POST['existing_image'];
    }

    if ($bannerSlot->update()) {
        header("Location: banner_slots.php");
        exit();
    } else {
        echo "Unable to update banner slot.";
    }
}

include '../includes/internal/header.php';
?>

<h2>Edit Banner Slot</h2>
<form action="edit_banner.php?id=<?php echo htmlspecialchars($bannerSlot->id); ?>" method="post" enctype="multipart/form-data">
    <label for="title">Title:</label>
    <input type="text" name="title" id="title" value="<?php echo htmlspecialchars($bannerSlot->title); ?>" required>

    <label for="description">Description:</label>
    <textarea name="description" id="description" ><?php echo htmlspecialchars($bannerSlot->description); ?></textarea>

    <label for="short_description">Short Description:</label>
    <input type="text" name="short_description" id="short_description" value="<?php echo htmlspecialchars($bannerSlot->short_description); ?>" >

    <label for="price">Price:</label>
    <input type="text" name="price" id="price" value="<?php echo htmlspecialchars($bannerSlot->price); ?>" >

    <label for="shop_now_button">Shop Now Button Text:</label>
    <input type="text" name="shop_now_button" id="shop_now_button" value="<?php echo htmlspecialchars($bannerSlot->shop_now_button); ?>">

    <label for="banner_position">Banner Position:</label>
    <input type="text" name="banner_position" id="banner_position" value="<?php echo htmlspecialchars($bannerSlot->banner_position); ?>" >

    <label for="image">Image:</label>
    <input type="file" name="image" id="image">
    <?php if (isset($bannerSlot->image)): ?>
        <img src="../assets/banners/<?php echo htmlspecialchars($bannerSlot->image); ?>" alt="Banner Image" style="max-width: 100px; max-height: 100px;">
        <input type="hidden" name="existing_image" value="<?php echo htmlspecialchars($bannerSlot->image); ?>">
    <?php endif; ?>

    <label for="view_more">View More URL:</label>
    <input type="text" name="view_more" id="view_more" value="<?php echo htmlspecialchars($bannerSlot->view_more); ?>">

    <label for="is_enabled">Enabled:</label>
    <input type="checkbox" name="is_enabled" id="is_enabled" <?php echo isset($bannerSlot->is_enabled) && $bannerSlot->is_enabled ? 'checked' : ''; ?>>

    <label for="product_id">Product ID (optional):</label>
    <input type="number" name="product_id" id="product_id" value="<?php echo htmlspecialchars($bannerSlot->product_id); ?>">

    <label for="category_id">Category ID (optional):</label>
    <input type="number" name="category_id" id="category_id" value="<?php echo htmlspecialchars($bannerSlot->category_id); ?>">

    <button type="submit">Update Banner Slot</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
