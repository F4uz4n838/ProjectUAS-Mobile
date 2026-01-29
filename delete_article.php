<?php
include 'conn.php';

$id = $_POST['id'];

$query = mysqli_query($conn, "DELETE FROM articles WHERE id='$id'");

if($query){
  echo json_encode(["status" => "success"]);
}else{
  echo json_encode(["status" => "failed"]);
}
?>
