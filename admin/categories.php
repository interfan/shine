<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Category.php';

$database = new Database();
$db = $database->getConnection();

$category = new Category($db);
$categories = $category->readAll();

include '../includes/internal/header.php';
?>

<h2>Manage Categories</h2>
<a href="add_category.php">Add New Category</a>
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Slug</th>
            <th>Date Created</th>
            <th>Parent Category</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = $categories->fetch(PDO::FETCH_ASSOC)) { ?>
            <tr>
                <td><?php echo htmlspecialchars($row['name']); ?></td>
                <td><?php echo htmlspecialchars($row['description']); ?></td>
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
                
                <td>
                    <a href="edit_category.php?id=<?php echo $row['id']; ?>">Edit</a>
                    <a href="delete_category.php?id=<?php echo $row['id']; ?>">Delete</a>
                </td>
            </tr>
            
          
        <?php } ?>
    </tbody>
</table>

<?php include '../includes/internal/footer.php'; ?>
