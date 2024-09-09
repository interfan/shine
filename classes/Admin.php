<?php
class Admin {
    private $conn;
    public $username;
    public $password;

    private $table_name = "admin";

    public function __construct($db) {
        $this->conn = $db;
    }

    public function login() {
        $query = "SELECT * FROM " . $this->table_name . " WHERE username = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(1, $this->username);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($row && password_verify($this->password, $row['password'])) {
            $_SESSION['admin_id'] = $row['id'];
            $_SESSION['username'] = $row['username'];
            return true;
        }

        return false;
    }

    public function isLoggedIn() {
        return isset($_SESSION['admin_id']);
    }
}
?>
