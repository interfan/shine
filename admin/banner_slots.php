<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/BannerSlot.php';

// Create database connection
$database = new Database();
$db = $database->getConnection();

// Instantiate BannerSlot object
$bannerSlot = new BannerSlot($db);

// Define records per page and current page number
$records_per_page = 10;  // You can change this value
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$from_record_num = ($page - 1) * $records_per_page;

// Fetch banner slots with pagination
$stmt = $bannerSlot->readAll($from_record_num, $records_per_page);
$num = $stmt->rowCount();

// Fetch the total number of records for pagination
$total_rows = $bannerSlot->countAll();
$total_pages = ceil($total_rows / $records_per_page);

// Include header
include '../includes/internal/header.php';
?>

<h2>Manage Banner Slots</h2>
<a href="add_banner.php" class="btn btn-primary mb-3">Add New Banner Slot</a>

<table class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Position</th>
            <th>Date Created</th>
            <th>Is Enabled</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php if ($num > 0) : ?>
            <?php while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) : ?>
                <tr>
                    <td><?php echo htmlspecialchars($row['title']); ?></td>
                    <td><?php echo htmlspecialchars(substr($row['description'], 0, 50)); ?>...</td>
                    <td><?php echo htmlspecialchars($row['banner_position']); ?></td>
                    <td><?php echo htmlspecialchars(date('Y-m-d H:i:s', strtotime($row['created_at']))); ?></td>
                    <td><?php echo $row['is_enabled'] ? 'Yes' : 'No'; ?></td>
                    <td>
                        <a href="edit_banner.php?id=<?php echo $row['id']; ?>" class="btn btn-warning btn-sm">Edit</a>
                        <a href="delete_banner.php?id=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            <?php endwhile; ?>
        <?php else : ?>
            <tr>
                <td colspan="6">No banner slots found.</td>
            </tr>
        <?php endif; ?>
    </tbody>
</table>

<!-- Pagination controls -->
<nav aria-label="Page navigation" class="text-center">
    <ul class="pagination justify-content-center">
        <?php for ($i = 1; $i <= $total_pages; $i++) : ?>
            <li class="page-item <?php echo $page == $i ? 'active' : ''; ?>">
                <a class="page-link" href="banner_slots.php?page=<?php echo $i; ?>"><?php echo $i; ?></a>
            </li>
        <?php endfor; ?>
    </ul>
</nav>

<?php
include '../includes/internal/footer.php';
