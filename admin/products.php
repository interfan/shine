<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Product.php';
include_once '../classes/Category.php'; // Include Category class to fetch category names

$database = new Database();
$db = $database->getConnection();

$product = new Product($db);
$products = $product->readAll();

$category = new Category($db);

include '../includes/internal/header.php';
?>

<h2>Manage Products</h2>
<a href="add_product.php">Add New Product</a>
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Slug</th>
            <th>Description</th>
            <th>Category</th>
            <th>Price</th>
            <th>Stock</th>
            <th>Image</th>
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
                <td><?php echo htmlspecialchars($row['description']); ?></td>
                
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
                <td><img src="http://shine/assets/images/<?php echo htmlspecialchars($row['image']); ?>" alt="Product Image" width="100"></td>
                <td><?php echo htmlspecialchars(date('Y-m-d H:i:s', strtotime($row['created_at']))); ?></td>
                <td><?php echo htmlspecialchars(date('Y-m-d H:i:s', strtotime($row['updated_at']))); ?></td>
                <td>
                    <a href="edit_product.php?id=<?php echo $row['id']; ?>">Edit</a>
                    <a href="delete_product.php?id=<?php echo $row['id']; ?>">Delete</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>

<?php include '../includes/internal/footer.php'; ?>
