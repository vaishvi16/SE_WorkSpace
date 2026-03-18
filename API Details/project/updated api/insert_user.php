<?php

include('connect.php');

$name = $_POST['name'];
$mail = $_POST['mail'];
$password = $_POST['password'];
$auth_provider = $_POST['auth_provider'] ?? 'manual'; 

// Simple input validation
if ($name == "" || $mail == "" || $password == "" || $auth_provider == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Please fill all the fields.'
    ]);
    exit;
}

$allowed_providers = ['manual', 'google', 'facebook', 'instagram'];

if (!in_array($auth_provider, $allowed_providers)) {
    $auth_provider = 'manual'; // fallback
}

// Hash the password
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Insert query
$query = "INSERT INTO v_users(name, mail, password, auth_provider) VALUES('$name', '$mail', '$hashedPassword', '$auth_provider')";
$result = mysqli_query($con, $query);

// Check for success or failure
if ($result) {
    echo json_encode([
        'status' => 'success',
        'message' => 'User added successfully.',
        'auth_provider_used' => $auth_provider 
    ]);
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to insert data.',
        'error' => mysqli_error($con) 
    ]);
}
?>