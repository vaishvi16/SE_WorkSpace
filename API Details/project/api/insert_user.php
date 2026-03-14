<?php

include('connect.php');

$name = $_POST['name'];
$mail = $_POST['mail'];
$password = $_POST['password']; 

// Simple input validation
if ($name == "" || $mail == "" || $password == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Please fill all the fields.'
    ]);
    exit;
}

// Hash the password
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Insert query
$query = "INSERT INTO v_users(name, mail, password) VALUES('$name', '$mail', '$hashedPassword')";
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
