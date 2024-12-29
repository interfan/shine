<?php
session_start();
require 'vendor/autoload.php';
include './includes/helper.php';
$db = getDatabaseConnection();
$category = getCategoryInstance($db);
$categories_array = getAllCategories($db);
$account = getAccountInstance($db);

$message = "";

// Handle reset password
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $token = $_POST['token'];
    $new_password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    if ($new_password === $confirm_password) {
        $email = $account->verifyResetToken($token);

        if ($email) {
            $account->password = $new_password;
            $account->updatePasswordByEmail($email);
            $account->deleteResetToken($email);
            $message = "Password updated successfully. You can now <a href='login.php'>login</a>.";
        } else {
            $message = "Invalid or expired token.";
        }
    } else {
        $message = "Passwords do not match.";
    }
}

$pageTitle = 'Set New Password';
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
                            Set New Password
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="content-area col-lg-6 col-md-8 col-sm-12 mx-auto">
                <div class="site-main">
                    <h3 class="custom_blog_title">Enter New Password</h3>

                    <?php if (!empty($message)) : ?>
                        <div class="alert alert-info"><?php echo $message; ?></div>
                    <?php endif; ?>

                    <form method="POST" action="resetPassword.php">
                        <input type="hidden" name="token" value="<?php echo $_GET['token'] ?? ''; ?>">
                        <p class="form-row">
                            <label>New Password</label>
                            <input type="password" name="password" required>
                        </p>
                        <p class="form-row">
                            <label>Confirm Password</label>
                            <input type="password" name="confirm_password" required>
                        </p>
                        <p class="form-row">
                            <button type="submit" class="button-submit">Reset Password</button>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include './includes/footer.php'; ?>