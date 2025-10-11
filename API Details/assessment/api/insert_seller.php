<?php

include('connect.php');

$name = $_POST['seller_name'];
$contact = $_POST['contact'];
$address = $_POST['address'];

// Simple input validation
if ($name == "" || $contact == "" || $address == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Please fill all the fields.'
    ]);
    exit;
}

// Insert query
$query = "INSERT INTO v_sellers(seller_name, contact, address) VALUES('$name', '$contact', '$address')";
$result = mysqli_query($con, $query);

// Check for success or failure
if ($result) {
    echo json_encode([
        'status' => 'success',
        'message' => 'Seller added successfully.'
    ]);
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to insert data.',
        'error' => mysqli_error($con) // Optional: for debugging
    ]);
}
?>
