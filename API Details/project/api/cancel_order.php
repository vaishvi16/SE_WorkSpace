<?php
include('connect.php');

$order_id = $_POST['order_id'];
$user_id = $_POST['user_id'];

if ($order_id == "" || $user_id == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Order ID and User ID are required.'
    ]);
    exit;
}

// Get the order and check ownership + status
$query = "SELECT * FROM v_orders WHERE id = '$order_id' AND user_id = '$user_id'";
$result = mysqli_query($con, $query);
$order = mysqli_fetch_assoc($result);

if (!$order) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Order not found or does not belong to the user.'
    ]);
    exit;
}

// Allow cancel only if status is still 'pending'
if ($order['order_status'] !== 'pending') {
    echo json_encode([
        'status' => 'error',
        'message' => 'Order cannot be cancelled. It is already ' . $order['order_status']
    ]);
    exit;
}

// Cancel the order
$update = "UPDATE v_orders SET order_status = 'cancelled' WHERE id = '$order_id'";
$updated = mysqli_query($con, $update);

if ($updated) {
    echo json_encode('Order cancelled successfully!');
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to cancel order.',
        'error' => mysqli_error($con)
    ]);
}
?>
