<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Admin.php';

$database = new Database();
$db = $database->getConnection();

$admin = new Admin($db);
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $admin->username = $_POST['username'];
    $admin->password = $_POST['password'];

    if ($admin->login()) {
        header("Location: index.php");
        exit;
    } else {
        $error_message = "Invalid username or password.";
    }
}

include '../includes/internal/header.php';
?>

<h2>Admin Login</h2>

<?php if (isset($error_message)) { ?>
    <p style="color: red;"><?php echo $error_message; ?></p>
<?php } ?>

<form action="login.php" method="post">
    <label for="username">Username:</label>
    <input type="text" name="username" id="username" required>

    <label for="password">Password:</label>
    <input type="password" name="password" id="password" required>

    <button type="submit">Login</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
