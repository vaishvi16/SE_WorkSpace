<?php

include('connect.php');

$seller_id = $_POST['seller_id'];
$name = $_POST['item_name'];
$price = $_POST['item_price'];


// Simple input validation
if ($seller_id == "" || $name == "" || $price == "" ) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Please fill all the fields.'
    ]);
    exit;
}

// Insert query
$query = "INSERT INTO v_items(seller_id, item_name, item_price) VALUES('$seller_id', '$name', '$price')";
$result = mysqli_query($con, $query);

?>
