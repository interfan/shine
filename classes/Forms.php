<?php
class Forms {
    private $fields = [];
    private $method = 'POST';
    private $action = '';
    private $errors = [];
    private $values = [];
    private $csrf_token;
    private $submitButton = [];

    public function __construct($action = '', $method = 'POST') {
        $this->action = $action;
        $this->method = strtoupper($method);
        $this->csrf_token = bin2hex(random_bytes(32));
        $_SESSION['csrf_token'] = $this->csrf_token;
    }

    // Add form fields dynamically
    public function addField($name, $type, $label = '', $required = false, $options = [], $value = '') {
        $this->fields[$name] = [
            'type' => $type,
            'label' => $label,
            'required' => $required,
            'options' => $options,
            'value' => $value
        ];
    }

    // Add submit button dynamically
    public function addSubmitButton($name = 'submit', $label = 'Submit', $class = 'button-submit') {
        $this->submitButton = [
            'name' => $name,
            'label' => $label,
            'class' => $class
        ];
    }

    // Generate form HTML with form-row class
    public function renderForm() {
        echo "<form action='{$this->action}' method='{$this->method}' class='login'>";
        
        foreach ($this->fields as $name => $field) {
            $value = htmlspecialchars($field['value'] ?? '');
            $required = $field['required'] ? 'required' : '';
            $checked = !empty($value) && $field['type'] === 'checkbox' ? 'checked' : '';
            
            echo "<p class='form-row'>";
            if ($field['label']) {
                echo "<label for='{$name}'>{$field['label']}</label>";
            }

            switch ($field['type']) {
                case 'text':
                case 'email':
                case 'number':
                case 'password':
                case 'date':
                    echo "<input type='{$field['type']}' name='{$name}' value='{$value}' {$required}>";
                    break;

                case 'textarea':
                    echo "<textarea name='{$name}' {$required}>{$value}</textarea>";
                    break;

                case 'select':
                    echo "<select name='{$name}'>";
                    foreach ($field['options'] as $key => $option) {
                        $selected = ($value == $key) ? 'selected' : '';
                        echo "<option value='{$key}' {$selected}>{$option}</option>";
                    }
                    echo "</select>";
                    break;

                case 'checkbox':
                    echo "<input type='checkbox' name='{$name}' id='cb_{$name}' {$checked}>";
                    echo "<label for='cb_{$name}' class='label-text'>{$field['label']}</label>";
                    break;
            }

            if (isset($this->errors[$name])) {
                echo "<div class='error'>{$this->errors[$name]}</div>";
            }

            echo "</p>";
        }

        // CSRF Protection
        echo "<input type='hidden' name='csrf_token' value='{$this->csrf_token}'>";

        // Render Submit Button
        if (!empty($this->submitButton)) {
            echo "<p class='form-row'>";
            echo "<button type='submit' name='{$this->submitButton['name']}' class='{$this->submitButton['class']}'>";
            echo "{$this->submitButton['label']}</button>";
            echo "</p>";
        }

        echo "</form>";
    }

    // Validate form submission
    public function validate($post_data) {
        foreach ($this->fields as $name => $field) {
            $value = $post_data[$name] ?? '';
            $this->values[$name] = $this->sanitize($value);

            if ($field['required'] && empty($value)) {
                $this->errors[$name] = "{$field['label']} is required.";
            }

            if ($field['type'] === 'email' && !filter_var($value, FILTER_VALIDATE_EMAIL)) {
                $this->errors[$name] = "Invalid email format.";
            }

            if ($field['type'] === 'number' && !is_numeric($value)) {
                $this->errors[$name] = "{$field['label']} must be a number.";
            }
        }

        // CSRF Validation
        if (!isset($post_data['csrf_token']) || $post_data['csrf_token'] !== $_SESSION['csrf_token']) {
            $this->errors['csrf_token'] = "Invalid CSRF token.";
        }

        return empty($this->errors);
    }

    // Sanitize inputs
    private function sanitize($input) {
        return htmlspecialchars(strip_tags(trim($input)));
    }

    // Return form errors
    public function getErrors() {
        return $this->errors;
    }

    // Get sanitized values
    public function getValues() {
        return $this->values;
    }
}
?>
