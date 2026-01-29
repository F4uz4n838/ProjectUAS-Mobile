<?php
$conn = mysqli_connect(
    "localhost",
    "root",
    "",
    "moodify_db"
);

if (!$conn) {
    echo json_encode([
        "status" => "db_error",
        "error" => mysqli_connect_error()
    ]);
    exit;
}
