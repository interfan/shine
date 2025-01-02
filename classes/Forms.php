<?php
class Forms {
    private $fields = [];
    private $method = 'POST';
    private $action = '';
    private $errors = [];
    private $values = [];
    private $csrf_token;
    private $submitButton = [];
    private $usePlaceholders = false;

    public function __construct($action = '', $method = 'POST', $usePlaceholders = false) {
        $this->action = $action;
        $this->method = strtoupper($method);
        $this->usePlaceholders = $usePlaceholders;
        $this->csrf_token = bin2hex(random_bytes(32));
        $_SESSION['csrf_token'] = $this->csrf_token;
    }

    // Add form fields dynamically
    public function addField($name, $type, $labelOrPlaceholder = '', $required = false, $options = [], $value = '') {
        $this->fields[$name] = [
            'type' => $type,
            'label' => $this->usePlaceholders ? '' : $labelOrPlaceholder,
            'placeholder' => $this->usePlaceholders ? $labelOrPlaceholder : '',
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

    // Generate form HTML
    public function renderForm($formClass = 'form-standard') {
        echo "<form action='{$this->action}' method='{$this->method}' class='{$formClass}'>";
        
        foreach ($this->fields as $name => $field) {
            $value = htmlspecialchars($field['value'] ?? '');
            $required = $field['required'] ? 'required' : '';
            $checked = !empty($value) && $field['type'] === 'checkbox' ? 'checked' : '';
            
            echo "<p class='form-row ". ($field['type'] !== 'checkbox' ? 'form-row-wide' : '') ."'>";
            
            // Render label if placeholders aren't used
            if (!$this->usePlaceholders && $field['label']) {
                echo "<label for='{$name}'>{$field['label']}</label>";
            }
            
            // Render input fields
            switch ($field['type']) {
                case 'text':
                case 'email':
                case 'number':
                case 'password':
                case 'date':
                    $placeholder = $field['placeholder'] ? "placeholder='{$field['placeholder']}'" : '';
                    echo "<input type='{$field['type']}' name='{$name}' value='{$value}' {$placeholder} {$required}>";
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
                    echo "<label for='cb_{$name}'>{$field['label']}</label>";
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
            echo "<input type='submit' name='{$this->submitButton['name']}' class='{$this->submitButton['class']}' value='{$this->submitButton['label']}'>";
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
                $label = $field['placeholder'] ?: $field['label'];
                $this->errors[$name] = "{$label} is required.";
            }

            if ($field['type'] === 'email' && !filter_var($value, FILTER_VALIDATE_EMAIL)) {
                $this->errors[$name] = "Invalid email format.";
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
