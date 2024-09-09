<?php
class Settings {
    private $conn;
    private $table_name = "settings";

    // Explicitly declare properties
    public $id;
    public $name;
    public $value;
    public $currency;
    public $site_name;
    public $language;
    public $tax_rate;

    public function __construct($db) {
        $this->conn = $db;
    }

    /**
     * Read all settings.
     *
     * @return PDOStatement The result set.
     */
    public function readAll() {
        $query = "SELECT id, name, value FROM " . $this->table_name;
        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    /**
     * Read a single setting by name.
     *
     * @param string $name The name of the setting.
     * @return bool True on success, false on failure.
     */
    public function readOne($name) {
        $query = "SELECT id, name, value FROM " . $this->table_name . " WHERE name = :name LIMIT 0,1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':name', $name);
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            $this->id = $row['id'];
            $this->name = $row['name'];
            $this->value = $row['value'];
            return true;
        }

        return false;
    }

    /**
     * Get all settings as an associative array.
     *
     * @return array An associative array of settings.
     */
    public function getSettings() {
        $query = "SELECT name, value FROM " . $this->table_name;
        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        $settings = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $settings[$row['name']] = $row['value'];

            // Assign values to the properties if they match
            if (property_exists($this, $row['name'])) {
                $this->{$row['name']} = $row['value'];
            }
        }

        return $settings;
    }

    public function updateSettings() {
        $query = "UPDATE " . $this->table_name . " SET value = :value WHERE name = :name";
        $stmt = $this->conn->prepare($query);
    
        try {
            $stmt->execute([':value' => $this->site_name, ':name' => 'site_name']);
            $stmt->execute([':value' => $this->currency, ':name' => 'currency']);
            $stmt->execute([':value' => $this->language, ':name' => 'language']);
            $stmt->execute([':value' => $this->tax_rate, ':name' => 'tax_rate']);
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
    }

    /**
     * Update a setting's value.
     *
     * @return bool True on success, false on failure.
     */
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET value = :value 
                  WHERE name = :name";

        $stmt = $this->conn->prepare($query);

        // $this->sanitize input
        $this->value = htmlspecialchars($this->sanitize($this->value));

        // Bind parameters
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':value', $this->value);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    /**
     * Create a new setting.
     *
     * @return bool True on success, false on failure.
     */
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " 
                  SET name = :name, value = :value";

        $stmt = $this->conn->prepare($query);

        // $this->sanitize input
        $this->name = htmlspecialchars($this->sanitize($this->name));
        $this->value = htmlspecialchars($this->sanitize($this->value));

        // Bind parameters
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':value', $this->value);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    /**
     * Delete a setting.
     *
     * @return bool True on success, false on failure.
     */
    public function delete() {
        $query = "DELETE FROM " . $this->table_name . " 
                  WHERE name = :name";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':name', $this->name);

        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    public function sanitize($input) {
        // Ensure that $input is a string before passing it to strip_tags
        $input = $input ?? ''; // Convert null to an empty string
        return strip_tags($input);
    }
}
?>
