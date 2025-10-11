<?php

include('connect.php');

// Read and decode raw JSON input
$data = json_decode(file_get_contents("php://input"));

if (!$data) {
    echo json_encode([
        "success" => false,
        "message" => "Invalid JSON input"
    ]);
    exit;
}

// Extract values
$seller_id = $data->seller_id;
$total = $data->total_amount;
$items = $data->items;

$response = [];

// Insert order
$orderQuery = "INSERT INTO v_orders(seller_id, total_amount) VALUES('$seller_id', '$total')";

if (mysqli_query($con, $orderQuery)) {
    $order_id = mysqli_insert_id($con);

    $allInserted = true;

    foreach ($items as $item) {
        $item_id = $item->item_id;
        $qty = $item->quantity;
        $price = $item->price;

        $itemQuery = "INSERT INTO v_order_items (order_id, item_id, quantity, price) 
                      VALUES ('$order_id', '$item_id', '$qty', '$price')";

        if (!mysqli_query($con, $itemQuery)) {
            $allInserted = false;
            break;
        }
    }

    if ($allInserted) {
        $response["success"] = true;
        $response["order_id"] = $order_id;
    } else {
        $response["success"] = false;
        $response["message"] = "Failed to insert some order items.";
    }

} else {
    $response["success"] = false;
    $response["message"] = "Failed to insert order.";
}

// Set JSON header
header('Content-Type: application/json');
echo json_encode($response);
?>
