<?php
session_start();
require 'vendor/autoload.php';
include './includes/helper.php';
$db = getDatabaseConnection();
$category = getCategoryInstance($db);
$categories_array = getAllCategories($db);
$account = getAccountInstance($db);

$message = "";

// Handle password reset request
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    
    if ($account->emailExists($email)) {
        $token = bin2hex(random_bytes(50));
        $account->saveResetToken($email, $token);

        // Send reset email (Replace with actual email sending logic)
        $resetLink = "http://yourwebsite.com/resetPassword.php?token=$token";
        mail($email, "Password Reset Request", "Click the link to reset your password: $resetLink");

        $message = "A password reset link has been sent to your email.";
    } else {
        $message = "Email not found.";
    }
}

$pageTitle = 'Reset Password - E-Commerce Site';
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
                            Reset Password
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="content-area col-lg-6 col-md-8 col-sm-12 mx-auto">
                <div class="site-main">
                    <h3 class="custom_blog_title">Forgot Your Password?</h3>

                    <?php if (!empty($message)) : ?>
                        <div class="alert alert-info"><?php echo $message; ?></div>
                    <?php endif; ?>

                    <form method="POST" action="forgot_password.php">
                        <p class="form-row">
                            <label>Enter your email to receive a password reset link:</label>
                            <input type="email" name="email" required>
                        </p>
                        <p class="form-row">
                            <button type="submit" class="button-submit">Send Reset Link</button>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include './includes/footer.php'; ?>
