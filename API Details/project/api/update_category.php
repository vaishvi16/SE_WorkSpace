<?php
include('connect.php');

// Required: category ID to update
$id = $_POST['id'];
$name = $_POST['name'];
$seller_id = $_POST['seller_id'];
$parent_id = isset($_POST['parent_id']) && $_POST['parent_id'] !== "" ? $_POST['parent_id'] : "NULL";

// Validate required fields
if ($id == "" || $name == "" || $seller_id == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Please provide category ID, name, and seller ID.'
    ]);
    exit;
}

// Update query
$query = "UPDATE v_category SET name = '$name', parent_id = $parent_id, seller_id = '$seller_id' WHERE id = '$id'";
$result = mysqli_query($con, $query);

// Return response
if ($result) {
    echo json_encode([
        'status' => 'success',
        'message' => 'Category updated successfully.'
    ]);
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to update category.',
        'error' => mysqli_error($con)
    ]);
}
?>
