<?php

include('connect.php');

// Get inputs
$seller_id = $_POST['seller_id'];
$name = $_POST['name'];
$parent_id = isset($_POST['parent_id']) && $_POST['parent_id'] !== "" ? $_POST['parent_id'] : "NULL";

// Simple input validation
if ($seller_id == "" || $name == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Please provide both category name and seller ID.'
    ]);
    exit;
}

// Insert query
$query = "INSERT INTO v_category (name, parent_id, seller_id) VALUES ('$name', $parent_id, '$seller_id')";
$result = mysqli_query($con, $query);

if ($result) {
    echo json_encode([
        'status' => 'success',
        'message' => 'Category inserted successfully.'
    ]);
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to insert category.',
        'error' => mysqli_error($con)
    ]);
}

?>
