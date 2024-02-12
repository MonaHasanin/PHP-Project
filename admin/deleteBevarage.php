<?php
include "./dbconnection.php";
$id = $_GET['id'];

 
$sql = "DELETE FROM beverages  where  bev_id =$id";
$conn->exec($sql);

echo "Record Deleted successfully";
 header("Refresh:2; URL=./beverages.php");  
?>
