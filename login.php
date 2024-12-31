<?php
session_start();
require 'vendor/autoload.php';
include './includes/helper.php';

$db = getDatabaseConnection();
$account = getAccountInstance($db);

include './includes/googleLogin.php';
include './includes/facebookLogin.php';

// Handle Login/Register
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['login'])) {
        if ($account->login()) {
            $_SESSION['user_id'] = $account->id;
            $_SESSION['user_name'] = $account->name;
            header("Location: account.php");
            exit;
        } else {
            $login_error = "Invalid email or password.";
        }
    } elseif (isset($_POST['register'])) {
        if ($_POST['password'] === $_POST['confirm_password']) {
            $account->name = $_POST['name'];
            $account->last_name = $_POST['last_name'];
            $account->email = $_POST['email'];
            $account->password = $_POST['password'];
            $account->phone = $_POST['phone'];
            $account->birthdate = $_POST['birthdate'];
            $account->newsletter_subscription = isset($_POST['newsletter']) ? 1 : 0;

            if ($account->create()) {
                $register_success = "Account successfully created! Please log in.";
            } else {
                $register_error = "Registration failed. Email may already be registered.";
            }
        } else {
            $register_error = "Passwords do not match.";
        }
    }
}

// Dynamic Form Instances
$loginForm = getFormInstance('login.php');
$registerForm = getFormInstance('login.php');

// Create Fields for Login
$loginForm->addField('email', 'email', 'Email', true);
$loginForm->addField('password', 'password', 'Password', true);
$loginForm->addSubmitButton('login', 'Login', 'button-submit');

// Create Fields for Registration
$registerForm->addField('name', 'text', 'First Name', true);
$registerForm->addField('last_name', 'text', 'Last Name', true);
$registerForm->addField('email', 'email', 'Email', true);
$registerForm->addField('password', 'password', 'Password', true);
$registerForm->addField('confirm_password', 'password', 'Confirm Password', true);
$registerForm->addField('phone', 'text', 'Phone Number');
$registerForm->addField('birthdate', 'date', 'Birthdate');
$registerForm->addField('newsletter', 'checkbox', 'Subscribe to Newsletter');
$registerForm->addSubmitButton('register', 'Register Now', 'button-submit');

// Page Title
$pageTitle = 'My Account - E-Commerce Site';

include './includes/header.php';
?>

<div class="main-content main-content-login">
    <div class="container">
        <div class="row">
            <div class="content-area col-lg-12 col-md-12 col-sm-12">
                <div class="site-main">
                    <h3 class="custom_blog_title">Authentication</h3>

                    <div class="customer_login">
                        <div class="row">
                            <!-- Social Login -->
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="login-item">
                                    <div class="social-account login">
                                        <h6 class="title-social">Login with Social Account</h6>
                                        <a href="<?php echo $google_login_url; ?>" class="mxh-item google">
                                            <i class="icon fa fa-google"></i>
                                            <span class="text">GOOGLE</span>
                                        </a>
                                        <a href="<?php echo $facebook_login_url; ?>" class="mxh-item facebook">
                                            <i class="icon fa fa-facebook-square"></i>
                                            <span class="text">FACEBOOK</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <!-- Login Section -->
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <div class="login-item">
                                    <h5 class="title-login">Login to your Account</h5>
                                    <?php if (!empty($login_error)) : ?>
                                        <div class="alert alert-danger"><?php echo $login_error; ?></div>
                                    <?php endif; ?>
                                    <?php $loginForm->renderForm(); ?>
                                </div>
                            </div>

                            <!-- Registration Section -->
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <div class="login-item">
                                    <h5 class="title-login">Register Now</h5>
                                    <?php $registerForm->renderForm(); ?>
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
