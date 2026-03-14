<?php
include('connect.php');

$user_id        = $_POST['user_id'] ?? '';
$product_ids    = $_POST['product_ids'] ?? '';
$quantities     = $_POST['quantities'] ?? '';
$address        = $_POST['address'] ?? '';
$phone          = $_POST['phone'] ?? '';
$payment_method = $_POST['payment_method'] ?? '';
$shipping_type  = $_POST['shipping_type'] ?? 'standard';

if (
    $user_id == "" || 
    $product_ids == "" || 
    $quantities == "" ||
    $address == "" ||
    $phone == "" ||
    $payment_method == ""
) {
    echo json_encode(['status'=>'error','message'=>'Missing required fields']);
    exit;
}

$allowedShipping = ['standard','express'];
if (!in_array($shipping_type, $allowedShipping)) {
    echo json_encode(['status'=>'error','message'=>'Invalid shipping type']);
    exit;
}

$productArray = explode(',', $product_ids);
$quantityArray = json_decode($quantities, true);

if ($quantityArray === null) {
    echo json_encode(['status'=>'error','message'=>'Invalid quantities format']);
    exit;
}

$subtotal = 0;

foreach ($productArray as $pid) {

    $pid = trim($pid);

    $prod_query = "SELECT price FROM v_products WHERE id='$pid'";
    $prod_result = mysqli_query($con, $prod_query);

    if (mysqli_num_rows($prod_result) == 0) {
        echo json_encode(['status'=>'error','message'=>"Invalid product ID: $pid"]);
        exit;
    }

    $product = mysqli_fetch_assoc($prod_result);
    $price = $product['price'];
    $qty = isset($quantityArray[$pid]) ? intval($quantityArray[$pid]) : 1;

    $subtotal += ($price * $qty);
}

// Add express charge per order
if ($shipping_type == "express") {
    $total_amount = $subtotal + 1200;
} else {
    $total_amount = $subtotal;
}

// Insert order
$order_query = "
INSERT INTO v_miles_orders 
(user_id, address, phone, payment_method, shipping_type, total_amount)
VALUES
('$user_id', '$address', '$phone', '$payment_method', '$shipping_type', '$total_amount')
";

mysqli_query($con, $order_query);
$order_id = mysqli_insert_id($con);

// Insert order items
foreach ($productArray as $pid) {
    $pid = trim($pid);
    $qty = isset($quantityArray[$pid]) ? intval($quantityArray[$pid]) : 1;

    mysqli_query($con,"
    INSERT INTO v_miles_order_items (order_id, product_id, quantity)
    VALUES ('$order_id','$pid','$qty')
    ");
}

echo json_encode([
    'status'=>'success',
    'order_id'=>$order_id,
    'subtotal'=>$subtotal,
    'shipping_type'=>$shipping_type,
    'total_amount'=>$total_amount
]);
?>
