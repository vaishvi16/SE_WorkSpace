<?php
include('connect.php');

$user_id = $_GET['user_id'] ?? '';

if ($user_id == '') {
    echo json_encode([
        'status' => 'error',
        'message' => 'User ID is required'
    ]);
    exit;
}

// ---------- Validate user ----------
$user_check = mysqli_query($con, "SELECT id FROM v_users WHERE id = '$user_id'");
if (mysqli_num_rows($user_check) == 0) {
    echo json_encode([
        'status' => 'error',
        'message' => 'User does not exist'
    ]);
    exit;
}

// ---------- Fetch orders ----------
$order_query = "
SELECT * 
FROM v_miles_orders 
WHERE user_id = '$user_id'
ORDER BY order_time DESC
";

$order_result = mysqli_query($con, $order_query);

$orders = [];

while ($order = mysqli_fetch_assoc($order_result)) {

    $order_id = $order['id'];

    // ---------- Fetch order items ----------
    $items_query = "
    SELECT 
        oi.product_id,
        oi.quantity,
        p.name,
        p.price,
        p.image
    FROM v_miles_order_items oi
    JOIN v_products p ON p.id = oi.product_id
    WHERE oi.order_id = '$order_id'
    ";

    $items_result = mysqli_query($con, $items_query);

    $items = [];
    while ($item = mysqli_fetch_assoc($items_result)) {
        $items[] = $item;
    }

    $order['items'] = $items;
    $orders[] = $order;
}

// ---------- Response ----------
echo json_encode([
    'status' => 'success',
    'orders' => $orders
]);
?>
