<?php
include('connect.php');

$product_id = $_POST['product_id'];
$starting_price = $_POST['starting_price'];
$user_id = $_POST['user_id'];


if ($product_id == "" || $starting_price == "" || $user_id == "") {
    echo "Please provide product_id and starting_price and user_id";
} else {
    $query = "INSERT INTO v_bids(product_id, user_id, bid_amount, bid_time) 
              VALUES('$product_id', '$user_id', '$starting_price', NOW())";
    mysqli_query($con, $query);
    echo "Bid started";
}
?>
