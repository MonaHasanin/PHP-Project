<?php
$server = 'localhost';
$username = 'root';
$password = '';
$db = 'food-test';

try {
    $conn = new PDO(
        "mysql:host=$server;dbname=food-test",
        $username,
        $password
    );

    
    $conn->setAttribute(
        PDO::ATTR_ERRMODE, 
        PDO::ERRMODE_EXCEPTION
    );
echo "Connected sucessfully";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>