<?php
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
?>