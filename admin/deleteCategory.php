<?php
include "./dbconnection.php";
$id = $_GET['id'];

 
$sql = "DELETE FROM category where cust_id=$id";
$conn->exec($sql);

echo "Record Deleted successfully";
 header("Refresh:2; URL=./categories.php");  
?>
