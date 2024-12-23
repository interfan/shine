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

// Handle additional filter parameters
$search = isset($_POST['search']) ? htmlspecialchars($_POST['search']) : '';
$categoryFilter = isset($_POST['category']) ? htmlspecialchars($_POST['category']) : '';
$priceMin = isset($_POST['price_min']) ? (float)$_POST['price_min'] : 0;
$priceMax = isset($_POST['price_max']) ? (float)$_POST['price_max'] : PHP_INT_MAX;
$stockStatus = isset($_POST['stock_status']) ? htmlspecialchars($_POST['stock_status']) : 'in_stock';
$color = isset($_POST['color']) ? htmlspecialchars($_POST['color']) : '';
$size = isset($_POST['size']) ? htmlspecialchars($_POST['size']) : '';
$alloy = isset($_POST['alloy']) ? htmlspecialchars($_POST['alloy']) : '';
$gems = isset($_POST['gems']) ? htmlspecialchars($_POST['gems']) : '';
$sku = isset($_POST['sku']) ? htmlspecialchars($_POST['sku']) : '';
$isMaster = isset($_POST['is_master']) ? htmlspecialchars($_POST['is_master']) : '';
$isDisabled = isset($_POST['is_disabled']) ? htmlspecialchars($_POST['is_disabled']) : '';
$variationName = isset($_POST['variationName']) ? htmlspecialchars($_POST['variationName']) : '';
$variationValue = isset($_POST['variationValue']) ? htmlspecialchars($_POST['variationValue']) : '';

// Handle pagination parameters
$itemsPerPage = 10;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $itemsPerPage;

// Fetch categories for filter options
$categories = $category->readAll();
$categoryOptions = '<option value="">All Categories</option>';
while ($cat = $categories->fetch(PDO::FETCH_ASSOC)) {
    $selected = $categoryFilter === $cat['id'] ? ' selected' : '';
    $categoryOptions .= '<option value="' . htmlspecialchars($cat['id'] ?? '') . '"' . $selected . '>' . htmlspecialchars($cat['name'] ?? '') . '</option>';
}

// Fetch products with filters and pagination
$products = $product->search($search, $categoryFilter, $priceMin, $priceMax, $stockStatus, $color, $size, $alloy, $gems, $sku, $isMaster, $isDisabled, $variationName, $variationValue, $itemsPerPage, $offset);
$totalProducts = $product->countAll($search, $categoryFilter, $priceMin, $priceMax, $stockStatus, $color, $size, $alloy, $gems, $sku, $isMaster, $isDisabled, $variationName, $variationValue);
$totalPages = ceil($totalProducts / $itemsPerPage); 

include '../includes/internal/header.php';
?>

<h2>Manage Products</h2>

<!-- Search and Filter Form -->
<form action="products.php" method="post" class="mb-3">
    <div class="form-row filter-products">
        <div class="form-group col-md-2">
            <input type="text" name="search" class="form-control" placeholder="Search by Name" value="<?php echo $search; ?>">
        </div>
        <div class="form-group col-md-2">
            <select name="category" class="form-control">
                <?php echo $categoryOptions; ?>
            </select>
        </div>
        <div class="form-group col-md-1">
            <input type="number" name="price_min" class="form-control" placeholder="Min Price" value="<?php echo $priceMin; ?>">
        </div>
        <div class="form-group col-md-1">
            <input type="number" name="price_max" class="form-control" placeholder="Max Price" value="<?php echo $priceMax; ?>">
        </div>
        <div class="form-group col-md-1">
            <select name="stock_status" class="form-control">
                <option value="">Stock</option>
                <option value="in_stock" <?php echo $stockStatus === 'in_stock' ? 'selected' : ''; ?>>In Stock</option>
                <option value="out_of_stock" <?php echo $stockStatus === 'out_of_stock' ? 'selected' : ''; ?>>Out of Stock</option>
            </select>
        </div>
        <div class="form-group col-md-1">
            <input type="text" name="color" class="form-control" placeholder="Color" value="<?php echo $color; ?>">
        </div>
        <div class="form-group col-md-1">
            <input type="text" name="size" class="form-control" placeholder="Size" value="<?php echo $size; ?>">
        </div>
        <div class="form-group col-md-1">
            <input type="text" name="alloy" class="form-control" placeholder="Alloy" value="<?php echo $alloy; ?>">
        </div>
        <div class="form-group col-md-1">
            <input type="text" name="gems" class="form-control" placeholder="Gems" value="<?php echo $gems; ?>">
        </div>
        <div class="form-group col-md-1">
            <input type="text" name="sku" class="form-control" placeholder="SKU" value="<?php echo $sku; ?>">
        </div>
        <div class="form-group col-md-1">
            <select name="is_master" class="form-control">
                <option value="">IsMaster</option>
                <option value="1" <?php echo $isMaster === '1' ? 'selected' : ''; ?>>Yes</option>
                <option value="0" <?php echo $isMaster === '0' ? 'selected' : ''; ?>>No</option>
            </select>
        </div>
        <div class="form-group col-md-1">
            <select name="is_disabled" class="form-control">
                <option value="">IsDisabled</option>
                <option value="1" <?php echo $isDisabled === '1' ? 'selected' : ''; ?>>Yes</option>
                <option value="0" <?php echo $isDisabled === '0' ? 'selected' : ''; ?>>No</option>
            </select>
        </div>
        <div class="form-group col-md-1">
            <button type="submit" class="filter btn btn-primary btn-block">Search</button>
        </div>
    </div>
</form>

<a href="add_product.php" class="btn btn-primary">Add New Product</a>

<table class="table table-striped">
    <thead>
        <tr>
            <th>Name</th>
            <th>Slug</th>
            <th>Description</th>
            <th>Category</th>
            <th>Price</th>
            <th>Stock</th>
            <th>SKU</th>
            <th>Is Master</th>
            <th>Images</th>
            <th>Date Created</th>
            <th>Date Updated</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = $products->fetch(PDO::FETCH_ASSOC)) { ?>
            <tr>
                <td><?php echo htmlspecialchars($row['name']); ?></td>
                <td><?php echo htmlspecialchars($row['slug']); ?></td>
                <td><?php echo htmlspecialchars(strlen($row['description']) > 50 ? substr($row['description'], 0, 50) . '...' : $row['description']); ?></td>
                
                <?php
                // Fetch category name
                if (!empty($row['category_id'])) {
                    $category->id = $row['category_id'];
                    $category->readOne();
                    $categoryName = htmlspecialchars($category->name);
                } else {
                    $categoryName = 'None';
                }
                ?>
                <td><?php echo $categoryName; ?></td>

                <td><?php echo htmlspecialchars(number_format($row['price'], 2)); ?></td>
                <td><?php echo htmlspecialchars($row['stock']); ?></td>
                <td><?php echo htmlspecialchars($row['sku']); ?></td>
                <td><?php echo htmlspecialchars($row['is_master'] ? 'Yes' : 'No'); ?></td>
                
                <?php
                // Fetch product images
                $images = $productImages->getImages($row['id']);
                $sliderImages = '';
                
                if ($images && $images->rowCount() > 0) {
                    while ($image = $images->fetch(PDO::FETCH_ASSOC)) {
                        $sliderImages .= '<div><a data-fancybox="gallery-' . $row['id'] . '" href="http://shine/assets/products/' . htmlspecialchars($row['name']) . '/' . htmlspecialchars($image['image']) . '"><img src="http://shine/assets/products/' . htmlspecialchars($row['name']) . '/' . htmlspecialchars($image['image']) . '" alt="Product Image"></a></div>';
                    }
                }
                ?>
                <td>
                    <div class="slider">
                        <?php echo $sliderImages; ?>
                    </div>
                </td>
                
                <td><?php echo htmlspecialchars(date('Y-m-d H:i:s', strtotime($row['created_at']))); ?></td>
                <td><?php echo htmlspecialchars(date('Y-m-d H:i:s', strtotime($row['updated_at']))); ?></td>
                <td>
                    <a href="edit_product.php?id=<?php echo $row['id']; ?>" class="btn btn-warning btn-sm">Edit</a>
                    <a href="delete_product.php?id=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>

<!-- Pagination -->
<nav aria-label="Page navigation" class="text-center">
  <ul class="pagination justify-content-center">
    <?php if ($page > 1) { ?>
        <li class="page-item"><a class="page-link" href="products.php?page=<?php echo $page - 1; ?>">Previous</a></li>
    <?php } ?>
    <?php for ($i = 1; $i <= $totalPages; $i++) { ?>
        <li class="page-item<?php echo $i == $page ? ' active' : ''; ?>"><a class="page-link" href="products.php?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
    <?php } ?>
    <?php if ($page < $totalPages) { ?>
        <li class="page-item"><a class="page-link" href="products.php?page=<?php echo $page + 1; ?>">Next</a></li>
    <?php } ?>
  </ul>
</nav>
<?php include '../includes/internal/footer.php'; ?>
