<?php
// GOOGLE CLIENT SETUP
$google_client = new Google_Client();
$google_client->setClientId('GOOGLE_CLIENT_ID');
$google_client->setClientSecret('GOOGLE_CLIENT_SECRET');
$google_client->setRedirectUri('http://yourwebsite.com/login.php');
$google_client->addScope('email');
$google_client->addScope('profile');
$google_login_url = $google_client->createAuthUrl();
?>