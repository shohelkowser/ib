<?php
require 'db.php';

if (isset($_GET['idno'])) {
    $idno = $_GET['idno'];
    $columname = $_GET['columname'];
    $val = $_GET['val'];
    $sql_data = $conn->query("UPDATE `product` SET `$columname` = '$val' WHERE `product`.`id` = '$idno'");
}
?>