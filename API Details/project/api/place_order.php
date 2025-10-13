<?php
include('connect.php');

$product_id = $_POST['product_id'];
$user_id = $_POST['user_id'];

if ($product_id == "" || $user_id == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Please provide product_id and user_id'
    ]);
    exit;
}

// Get category ID from product
$product_query = "SELECT cat_id FROM v_products WHERE id = '$product_id'";
$product_result = mysqli_query($con, $product_query);
$product = mysqli_fetch_assoc($product_result);

if (!$product) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Product not found'
    ]);
    exit;
}

$cat_id = $product['cat_id'];

$query = "INSERT INTO v_miles_orders(product_id, user_id, cat_id) 
          VALUES('$product_id', '$user_id', '$cat_id')";
$result = mysqli_query($con, $query);

if ($result) {
    echo json_encode([
        'status' => 'success',
        'message' => 'Order placed successfully'
    ]);
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to place order',
        'error' => mysqli_error($con)
    ]);
}
?>
