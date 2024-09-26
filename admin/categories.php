<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Category.php';

$database = new Database();
$db = $database->getConnection();

$category = new Category($db);

// Pagination setup
$limit = 10; // Number of categories per page
$page = isset($_GET['page']) ? $_GET['page'] : 1;
$offset = ($page - 1) * $limit;

// Fetch total number of categories
$totalCategories = $category->countAll();
$totalPages = ceil($totalCategories / $limit);

// Fetch categories for the current page
$categories = $category->readAllWithPagination($limit, $offset);

include '../includes/internal/header.php';
?>

<h2>Manage Categories</h2>
<a href="add_category.php" class="btn btn-primary mb-3">Add New Category</a>

<table class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Slug</th>
            <th>Date Created</th>
            <th>Parent Category</th>
            <th>Is Disabled</th> <!-- New column -->
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = $categories->fetch(PDO::FETCH_ASSOC)) { ?>
            <tr>
                <td><?php echo htmlspecialchars($row['name']); ?></td>
                <td><?php echo htmlspecialchars(strlen($row['description']) > 50 ? substr($row['description'], 0, 50) . '...' : $row['description']); ?></td>
                <td><?php echo htmlspecialchars($row['slug']); ?></td>
                <td><?php echo htmlspecialchars(date('Y-m-d H:i:s', strtotime($row['created_at']))); ?></td>
                
                <?php
                // Fetch parent category name
                if (!empty($row['parent_id'])) {
                    $parentCategory = new Category($db);
                    $parentCategory->id = $row['parent_id'];
                    $parentCategory->readOne();
                    $parentName = htmlspecialchars($parentCategory->name);
                } else {
                    $parentName = 'None';
                }
                ?>
                <td><?php echo $parentName; ?></td>

                <!-- Is Disabled column -->
                <td><?php echo $row['is_disabled'] ? 'Yes' : 'No'; ?></td>

                <td>
                    <a href="edit_category.php?id=<?php echo $row['id']; ?>" class="btn btn-warning btn-sm">Edit</a>
                    <a href="delete_category.php?id=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>

<!-- Pagination -->
<nav aria-label="Page navigation"  class="text-center">
    <ul class="pagination justify-content-center">
        <?php if ($page > 1): ?>
            <li class="page-item">
                <a class="page-link" href="?page=<?php echo $page - 1; ?>">Previous</a>
            </li>
        <?php endif; ?>

        <?php for ($i = 1; $i <= $totalPages; $i++): ?>
            <li class="page-item <?php echo $i == $page ? 'active' : ''; ?>">
                <a class="page-link" href="?page=<?php echo $i; ?>"><?php echo $i; ?></a>
            </li>
        <?php endfor; ?>

        <?php if ($page < $totalPages): ?>
            <li class="page-item">
                <a class="page-link" href="?page=<?php echo $page + 1; ?>">Next</a>
            </li>
        <?php endif; ?>
    </ul>
</nav>

<?php include '../includes/internal/footer.php'; ?>
