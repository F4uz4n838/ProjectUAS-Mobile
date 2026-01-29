<?php
include 'conn.php';

$id      = $_POST['id'];
$title   = $_POST['title'];
$content = $_POST['content'];
$image   = $_POST['image'];

$query = mysqli_query($conn,
"UPDATE articles SET 
title='$title',
content='$content',
image='$image'
WHERE id='$id'");

if($query){
  echo json_encode(["status" => "success"]);
}else{
  echo json_encode(["status" => "failed"]);
}
?>
