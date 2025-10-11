<?php

include('connect.php');

$name = $_POST['name'];
$mail = $_POST['mail'];

// Simple input validation
if ($name == "" || $mail == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Please fill all the fields.'
    ]);
    exit;
}

// Insert query
$query = "INSERT INTO v_users(name, mail) VALUES('$name', '$mail')";
$result = mysqli_query($con, $query);

// Check for success or failure
if ($result) {
    echo json_encode([
        'status' => 'success',
        'message' => 'User added successfully.'
    ]);
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to insert data.',
        'error' => mysqli_error($con) 
    ]);
}
?>
