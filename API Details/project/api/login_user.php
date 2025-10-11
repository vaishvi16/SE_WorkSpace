<?php

include('connect.php');

$name = $_POST['name'];
$mail = $_POST['mail'];

if ($name == "" || $mail == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Please fill all the fields.'
    ]);
    exit;
}

// Check if user exists
$query = "SELECT * FROM v_users WHERE name = '$name' AND mail = '$mail'";
$result = mysqli_query($con, $query);

if (mysqli_num_rows($result) > 0) {
    $user = mysqli_fetch_assoc($result);

    echo json_encode($user);
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Invalid name or mail.'
    ]);
}
?>
