<?php

include('connect.php');

$order_id = $_GET['order_id'];

if ($order_id == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Order ID is required.'
    ]);
    exit;
}

$query = "SELECT order_status FROM v_miles_orders WHERE id = '$order_id'";
$result = mysqli_query($con, $query);
$row = mysqli_fetch_assoc($result);

if ($row) {
    echo json_encode($row['order_status']);
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Order not found.'
    ]);
}
?>
