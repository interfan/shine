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

<!-- Custom CSS -->
<style>
    .settings-container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
        background-color: #f9f9f9;
    }
    .form-group {
        margin-bottom: 1.5rem;
    }
    .form-control {
        padding: 10px; /* Add padding to input fields */
        border-radius: 5px; /* Rounded corners */
    }
    .btn-primary {
        padding: 10px 20px; /* Add padding to button */
    }
</style>

<div class="settings-container">
    <h2>Site Settings</h2>
    <form action="settings.php" method="post">
        <div class="form-group">
            <label for="currency" class="form-label">Default Currency:</label>
            <input type="text" name="currency" id="currency" class="form-control" value="<?php echo htmlspecialchars($currentSettings['currency']); ?>">
        </div>

        <div class="form-group">
            <label for="language" class="form-label">Default Language:</label>
            <input type="text" name="language" id="language" class="form-control" value="<?php echo htmlspecialchars($currentSettings['language']); ?>">
        </div>

        <div class="form-group">
            <label for="tax_rate" class="form-label">Tax Rate (%):</label>
            <input type="number" name="tax_rate" id="tax_rate" class="form-control" value="<?php echo htmlspecialchars($currentSettings['tax_rate']); ?>">
        </div>

        <button type="submit" class="btn btn-primary">Save Settings</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<?php include '../includes/internal/footer.php'; ?>
