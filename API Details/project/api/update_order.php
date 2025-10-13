<?php

include('connect.php');

$order_id = $_POST['order_id'];
$new_status = $_POST['order_status'];

if ($order_id == "" || $new_status == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Order ID and new status are required.'
    ]);
    exit;
}

// Only allow valid statuses
$allowed_statuses = ['pending', 'shipped', 'delivered', 'cancelled'];

if (!in_array($new_status, $allowed_statuses)) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Invalid order status. Allowed values: pending, shipped, delivered, cancelled.'
    ]);
    exit;
}

// Update the order status
$query = "UPDATE v_miles_orders SET order_status = '$new_status' WHERE id = '$order_id'";
$result = mysqli_query($con, $query);

if ($result) {
    echo json_encode('Order status updated successfully!');
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to update status.',
        'error' => mysqli_error($con)
    ]);
}
?>
