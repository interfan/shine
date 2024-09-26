<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Page.php';

$database = new Database();
$db = $database->getConnection();

$page = new Page($db);
$pages = $page->readAll();

include '../includes/internal/header.php';
?>

<h2 class="page-title">Manage Pages</h2>
<a href="add_page.php" class="btn btn-primary mb-3">Add New Page</a>

<table class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>Title</th>
            <th>Slug</th>
            <th>Created At</th>
            <th>Updated At</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = $pages->fetch(PDO::FETCH_ASSOC)) { ?>
            <tr>
                <td><?php echo htmlspecialchars($row['title']); ?></td>
                <td><?php echo htmlspecialchars($row['slug']); ?></td>
                <td><?php echo htmlspecialchars(date('Y-m-d H:i:s', strtotime($row['created_at']))); ?></td>
                <td><?php echo htmlspecialchars(date('Y-m-d H:i:s', strtotime($row['updated_at']))); ?></td>
                <td>
                    <a href="edit_page.php?id=<?php echo $row['id']; ?>" class="btn btn-warning btn-sm">Edit</a>
                    <a href="delete_page.php?id=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>

<?php include '../includes/internal/footer.php'; ?>
