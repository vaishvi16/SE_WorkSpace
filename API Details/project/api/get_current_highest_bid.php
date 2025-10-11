<?php
include('connect.php');

$product_id = $_GET['product_id'];

if ($product_id == "") {
    echo "Please provide product_id";
} else {
    $query = "SELECT user_id, bid_amount FROM v_bids 
              WHERE product_id = '$product_id' 
              ORDER BY bid_amount DESC 
              LIMIT 1";

    $result = mysqli_query($con, $query);
    $row = mysqli_fetch_assoc($result);

    echo json_encode($row);
}
?>
