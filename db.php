<?php 
$host = 'localhost';
$user = 'root';
$pass = '';
$database = 'ib';
$conn = new mysqli($host, $user, $pass, $database);

if ($conn->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}
?>