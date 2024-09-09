<?php
session_start();
include_once '../classes/Database.php';
include_once '../classes/Settings.php';

$database = new Database();
$db = $database->getConnection();

$settings = new Settings($db);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Sanitize and update each setting
    $settings->currency = $settings->sanitize($_POST['currency']);
    $settings->language = $settings->sanitize($_POST['language']);
    $settings->tax_rate = $settings->sanitize($_POST['tax_rate']);

    // Save the settings
    $settings->updateSettings();
}

$currentSettings = $settings->getSettings();
include '../includes/internal/header.php';
?>

<h2>Site Settings</h2>
<form action="settings.php" method="post">
    <label for="currency">Default Currency:</label>
    <input type="text" name="currency" id="currency" value="<?php echo $currentSettings['currency']; ?>">

    <label for="language">Default Language:</label>
    <input type="text" name="language" id="language" value="<?php echo $currentSettings['language']; ?>">

    <label for="tax_rate">Tax Rate (%):</label>
    <input type="number" name="tax_rate" id="tax_rate" value="<?php echo $currentSettings['tax_rate']; ?>">

    <button type="submit">Save Settings</button>
</form>

<?php include '../includes/internal/footer.php'; ?>
