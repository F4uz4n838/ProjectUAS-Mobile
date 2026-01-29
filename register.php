<?php
include 'conn.php';
header('Content-Type: application/json');

$username = trim($_POST['username'] ?? '');
$password = trim($_POST['password'] ?? '');

if ($username == '' || $password == '') {
    echo json_encode(["status"=>"failed"]);
    exit;
}

$cek = mysqli_query(
    $conn,
    "SELECT * FROM users WHERE username='$username'"
);

if (mysqli_num_rows($cek) > 0) {
    echo json_encode(["status"=>"failed"]);
    exit;
}

mysqli_query(
    $conn,
    "INSERT INTO users (username, password)
     VALUES ('$username', '$password')"
);

echo json_encode(["status"=>"success"]);
