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

<h2>Manage Pages</h2>
<a href="add_page.php">Add New Page</a>
<table>
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
                <td><?php echo $row['title']; ?></td>
                <td><?php echo $row['slug']; ?></td>
                <td><?php echo $row['created_at']; ?></td>
                <td><?php echo $row['updated_at']; ?></td>
                <td>
                    <a href="edit_page.php?id=<?php echo $row['id']; ?>">Edit</a>
                    <a href="delete_page.php?id=<?php echo $row['id']; ?>">Delete</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>

<?php include '../includes/internal/footer.php'; ?>
