<?php
class Account {
    private $conn;
    private $table_name = "accounts";

    public $id;
    public $name;
    public $last_name;
    public $email;
    public $password;
    public $phone;
    public $birthdate;
    public $newsletter_subscription;

    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new account (registration)
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " 
        (name, last_name, email, password, phone, birthdate, newsletter_subscription) 
        VALUES (:name, :last_name, :email, :password, :phone, :birthdate, :newsletter_subscription)";
        
        $stmt = $this->conn->prepare($query);

        // Hash the password
        $this->password = password_hash($this->password, PASSWORD_BCRYPT);

        // Bind parameters
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':last_name', $this->last_name);
        $stmt->bindParam(':email', $this->email);
        $stmt->bindParam(':password', $this->password);
        $stmt->bindParam(':phone', $this->phone);
        $stmt->bindParam(':birthdate', $this->birthdate);
        $stmt->bindParam(':newsletter_subscription', $this->newsletter_subscription, PDO::PARAM_BOOL);

        if ($stmt->execute()) {
            $this->id = $this->conn->lastInsertId();
            return true;
        }
        return false;
    }

    // Read account by email
    public function readByEmail() {
        $query = "SELECT * FROM " . $this->table_name . " WHERE email = :email LIMIT 1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':email', $this->email);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Login (validate credentials)
    public function login() {
        $account = $this->readByEmail();
        if ($account && password_verify($this->password, $account['password'])) {
            $this->id = $account['id'];
            $this->name = $account['name'];
            return true;
        }
        return false;
    }

    public function updatePassword() {
        $query = "UPDATE " . $this->table_name . " SET password = :password WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $hashed_password = password_hash($this->password, PASSWORD_BCRYPT);
        $stmt->bindParam(':password', $hashed_password);
        $stmt->bindParam(':id', $this->id);
        return $stmt->execute();
    }
    
    public function delete() {
        $query = "DELETE FROM " . $this->table_name . " WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
        return $stmt->execute();
    }

    // Create or Update Address
    public function saveAddress($type, $country, $state, $city, $zip_code, $address1, $address2 = null) {
        $query = "REPLACE INTO addresses (account_id, country, state, city, zip_code, address1, address2, type) 
                  VALUES (:account_id, :country, :state, :city, :zip_code, :address1, :address2, :type)";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(':account_id', $this->id);
        $stmt->bindParam(':country', $country);
        $stmt->bindParam(':state', $state);
        $stmt->bindParam(':city', $city);
        $stmt->bindParam(':zip_code', $zip_code);
        $stmt->bindParam(':address1', $address1);
        $stmt->bindParam(':address2', $address2);
        $stmt->bindParam(':type', $type);

        return $stmt->execute();
    }

    public function getAccountInfo() {
        $query = "SELECT name, last_name, email, phone, birthdate, newsletter_subscription FROM " . $this->table_name . " WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
    
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET name = :name, last_name = :last_name, email = :email, phone = :phone, birthdate = :birthdate, newsletter_subscription = :newsletter 
                  WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':last_name', $this->last_name);
        $stmt->bindParam(':email', $this->email);
        $stmt->bindParam(':phone', $this->phone);
        $stmt->bindParam(':birthdate', $this->birthdate);
        $stmt->bindParam(':newsletter', $this->newsletter_subscription);
        $stmt->bindParam(':id', $this->id);
        return $stmt->execute();
    }

    public function emailExists($email) {
        $query = "SELECT id FROM " . $this->table_name . " WHERE email = :email LIMIT 1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':email', $email);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
    
    public function saveResetToken($email, $token) {
        $query = "INSERT INTO password_resets (email, token) VALUES (:email, :token) 
                  ON DUPLICATE KEY UPDATE token = :token, created_at = CURRENT_TIMESTAMP";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':token', $token);
        return $stmt->execute();
    }
    
    public function verifyResetToken($token) {
        $query = "SELECT email FROM password_resets WHERE token = :token AND created_at > NOW() - INTERVAL 1 HOUR";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':token', $token);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result ? $result['email'] : false;
    }
    
    public function updatePasswordByEmail($email) {
        $query = "UPDATE " . $this->table_name . " SET password = :password WHERE email = :email";
        $stmt = $this->conn->prepare($query);
        $hashed_password = password_hash($this->password, PASSWORD_BCRYPT);
        $stmt->bindParam(':password', $hashed_password);
        $stmt->bindParam(':email', $email);
        return $stmt->execute();
    }
    
    public function deleteResetToken($email) {
        $query = "DELETE FROM password_resets WHERE email = :email";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':email', $email);
        return $stmt->execute();
    }
}
?>
