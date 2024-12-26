<?php
session_start();
include_once 'classes/Database.php';
include_once 'classes/Account.php';

// Logout Logic
if (isset($_POST['logout'])) {
    session_destroy();
    header("Location: login.php");
    exit();
}

// Redirect if not logged in
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

// Initialize DB connection
$database = new Database();
$db = $database->getConnection();
$account = new Account($db);

include './includes/helper.php';

// Fetch Account Info
$account->id = $_SESSION['user_id'];
$user_data = $account->getAccountInfo();

$update_success = $update_error = $password_error = $delete_error = "";

// Handle Form Submissions (Update Info, Password Change, Delete, Logout)
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['update_info'])) {
        // Update Account Info
        $account->name = $_POST['name'];
        $account->last_name = $_POST['last_name'];
        $account->email = $_POST['email'];
        $account->phone = $_POST['phone'];
        $account->birthdate = $_POST['birthdate'];
        $account->newsletter_subscription = isset($_POST['newsletter']) ? 1 : 0;

        if ($account->update()) {
            $update_success = "Account information updated successfully.";
            $_SESSION['user_name'] = $account->name;
            $user_data = $account->getAccountInfo();
        } else {
            $update_error = "Failed to update account information.";
        }

    } elseif (isset($_POST['change_password'])) {
        // Change Password
        $new_password = $_POST['new_password'];
        $confirm_password = $_POST['confirm_password'];

        if ($new_password === $confirm_password) {
            $account->password = $new_password;
            if ($account->updatePassword()) {
                $update_success = "Password changed successfully.";
            } else {
                $password_error = "Failed to change password.";
            }
        } else {
            $password_error = "Passwords do not match.";
        }

    } elseif (isset($_POST['delete_account'])) {
        // Delete Account
        if ($account->delete()) {
            session_destroy();
            header("Location: index.php?account_deleted=true");
            exit();
        } else {
            $delete_error = "Failed to delete account. Please try again.";
        }
    }
}

$pageTitle = 'My Account - E-Commerce Site';
include './includes/header.php';
?>
<div class="main-content main-content-login">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-trail breadcrumbs">
                    <ul class="trail-items breadcrumb">
                        <li class="trail-item trail-begin">
                            <a href="index.php">Home</a>
                        </li>
                        <li class="trail-item trail-end active">
                            My Account
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="content-area col-lg-12 col-md-12 col-sm-12">
                <div class="site-main">
                    <h3 class="custom_blog_title">My Account</h3>

                    <div class="customer_login">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="login-item">
                                    <h5 class="title-login">Account Information</h5>

                                    <?php if (!empty($update_success)) : ?>
                                        <div class="alert alert-success"><?php echo $update_success; ?></div>
                                    <?php elseif (!empty($update_error)) : ?>
                                        <div class="alert alert-danger"><?php echo $update_error; ?></div>
                                    <?php endif; ?>

                                    <form method="POST" class="login" action="account.php">
                                        <p class="form-row">
                                            <label>First Name</label>
                                            <input type="text" name="name" value="<?php echo htmlspecialchars($user_data['name']); ?>" required>
                                        </p>
                                        <p class="form-row">
                                            <label>Last Name</label>
                                            <input type="text" name="last_name" value="<?php echo htmlspecialchars($user_data['last_name']); ?>" required>
                                        </p>
                                        <p class="form-row">
                                            <label>Email</label>
                                            <input type="email" name="email" value="<?php echo htmlspecialchars($user_data['email']); ?>" required>
                                        </p>
                                        <p class="form-row">
                                            <label>Phone Number</label>
                                            <input type="text" name="phone" value="<?php echo htmlspecialchars($user_data['phone']); ?>">
                                        </p>
                                        <p class="form-row">
                                            <label>Birthdate</label>
                                            <input type="date" name="birthdate" value="<?php echo htmlspecialchars($user_data['birthdate']); ?>">
                                        </p>
                                        <p class="form-row">
                                            <input type="checkbox" name="newsletter" id="cb2" <?php echo ($user_data['newsletter_subscription']) ? 'checked' : ''; ?>>
                                            <label for="cb2" class="label-text">Subscribe to Newsletter</label>
                                        </p>
                                        <p class="form-row">
                                            <button type="submit" name="update_info" class="button-submit">Update Information</button>
                                        </p>
                                    </form>
                                </div>

                                <div class="login-item mt-5">
                                    <h5 class="title-login">Change Password</h5>
                                    <?php if (!empty($password_error)) : ?>
                                        <div class="alert alert-danger"><?php echo $password_error; ?></div>
                                    <?php endif; ?>
                                    <form method="POST" class="login" action="account.php">
                                        <p class="form-row">
                                            <label>New Password</label>
                                            <input type="password" name="new_password" required>
                                        </p>
                                        <p class="form-row">
                                            <label>Confirm Password</label>
                                            <input type="password" name="confirm_password" required>
                                        </p>
                                        <p class="form-row">
                                            <button type="submit" name="change_password" class="button-submit">Change Password</button>
                                        </p>
                                    </form>
                                </div>

                                <div class="login-item mt-5">
                                    <form method="POST" class="login" action="account.php">
                                        <h5 class="title-login">Delete Account</h5>
                                        <?php if (!empty($delete_error)) : ?>
                                            <div class="alert alert-danger"><?php echo $delete_error; ?></div>
                                        <?php endif; ?>
                                        <p class="form-row">
                                            <button type="submit" name="delete_account" class="button-delete">Delete My Account</button>
                                        </p>
                                    </form>
                                </div>

                                <div class="login-item mt-5">
                                    <form method="POST" action="account.php">
                                        <h5 class="title-login">Logout</h5>
                                        <p class="form-row">
                                            <button type="submit" name="logout" class="button-submit">Logout</button>
                                        </p>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include './includes/footer.php'; ?>
