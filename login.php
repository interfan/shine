<?php
session_start();
require 'vendor/autoload.php';
include './includes/helper.php';

$db = getDatabaseConnection();

$category = getCategoryInstance($db);

$categories_array = getAllCategories($db);

$account = getAccountInstance($db);

$login_error = $register_success = $register_error = "";

// GOOGLE CLIENT SETUP
$google_client = new Google_Client();
$google_client->setClientId('GOOGLE_CLIENT_ID');
$google_client->setClientSecret('GOOGLE_CLIENT_SECRET');
$google_client->setRedirectUri('http://yourwebsite.com/login.php');
$google_client->addScope('email');
$google_client->addScope('profile');
$google_login_url = $google_client->createAuthUrl();

// FACEBOOK CLIENT SETUP
use Facebook\Facebook;

$fb = new Facebook([
  'app_id' => 'FACEBOOK_APP_ID',
  'app_secret' => 'FACEBOOK_APP_SECRET',
  'default_graph_version' => 'v12.0',
]);
$fb_helper = $fb->getRedirectLoginHelper();
$permissions = ['email'];
$facebook_login_url = $fb_helper->getLoginUrl('http://yourwebsite.com/login.php', $permissions);

// Handle Form Submission (Login/Register)
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['login'])) {
        $account->email = $_POST['email'];
        $account->password = $_POST['password'];

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

// HANDLE GOOGLE OAUTH CALLBACK
if (isset($_GET['code']) && !isset($_GET['state'])) {
    $token = $google_client->fetchAccessTokenWithAuthCode($_GET['code']);
    $google_client->setAccessToken($token['access_token']);
    $oauth = new Google_Service_Oauth2($google_client);
    $userInfo = $oauth->userinfo->get();

    $account->email = $userInfo->email;
    $account->name = $userInfo->givenName;
    $account->last_name = $userInfo->familyName;

    $existingUser = $account->emailExists($userInfo->email);

    if ($existingUser) {
        $_SESSION['user_id'] = $existingUser['id'];
        $_SESSION['user_name'] = $account->name;
    } else {
        $account->password = password_hash(bin2hex(random_bytes(10)), PASSWORD_BCRYPT);
        $account->create();
        $_SESSION['user_id'] = $account->id;
        $_SESSION['user_name'] = $account->name;
    }
    header('Location: account.php');
    exit();
}

// HANDLE FACEBOOK OAUTH CALLBACK
try {
    $accessToken = $fb_helper->getAccessToken();
    if ($accessToken) {
        $response = $fb->get('/me?fields=id,name,email', $accessToken);
        $user = $response->getGraphUser();

        $account->email = $user['email'];
        $account->name = explode(" ", $user['name'])[0];
        $account->last_name = explode(" ", $user['name'])[1] ?? '';

        $existingUser = $account->emailExists($user['email']);

        if ($existingUser) {
            $_SESSION['user_id'] = $existingUser['id'];
            $_SESSION['user_name'] = $account->name;
        } else {
            $account->password = password_hash(bin2hex(random_bytes(10)), PASSWORD_BCRYPT);
            $account->create();
            $_SESSION['user_id'] = $account->id;
            $_SESSION['user_name'] = $account->name;
        }
        header('Location: account.php');
        exit();
    }
} catch (Exception $e) {
    $login_error = "Facebook login failed: " . $e->getMessage();
}

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
                                    <form method="POST" action="login.php" class="login">
                                        <p class="form-row">
                                            <label>Email</label>
                                            <input type="email" name="email" required>
                                        </p>
                                        <p class="form-row">
                                            <label>Password</label>
                                            <input type="password" name="password" required>
                                        </p>
                                        <p class="form-row">
                                            <button type="submit" name="login" class="button-submit">Login</button>
                                        </p>
                                    </form>
                                </div>
                            </div>

                            <!-- Registration Section -->
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <div class="login-item">
                                    <h5 class="title-login">Register Now</h5>
                                    <form method="POST" action="login.php" class="register">
                                        <p class="form-row">
                                            <label>First Name</label>
                                            <input type="text" name="name" required>
                                        </p>
                                        <p class="form-row">
                                            <label>Last Name</label>
                                            <input type="text" name="last_name" required>
                                        </p>
                                        <p class="form-row">
                                            <label>Email</label>
                                            <input type="email" name="email" required>
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
