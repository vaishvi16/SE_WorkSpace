<?php

include('connect.php');

$product_id = $_POST['product_id'];
$user_id = $_POST['user_id'];
$bid_amount = $_POST['bid_amount'];

if ($product_id == "" || $user_id == "" || $bid_amount == "") {
    echo "Please provide all fields";
} else {
    $res1 = mysqli_query($con, "SELECT MIN(bid_time) AS start_time FROM v_bids WHERE product_id = '$product_id'");
    $row1 = mysqli_fetch_assoc($res1);
    $start_time = strtotime($row1['start_time']);
    $current_time = time();

    if (($current_time - $start_time) > 90) {
        echo "Bidding time is over";
        exit;
    }

    $res2 = mysqli_query($con, "SELECT MAX(bid_amount) AS highest FROM v_bids WHERE product_id = '$product_id'");
    $row2 = mysqli_fetch_assoc($res2);
    $highest = $row2['highest'];

    if ($bid_amount <= $highest) {
        echo "Bid must be higher than current highest bid";
    } else {
        $query = "INSERT INTO v_bids(product_id, user_id, bid_amount, bid_time) 
                  VALUES('$product_id', '$user_id', '$bid_amount', NOW())";
        mysqli_query($con, $query);
        echo "Bid placed";
    }
}
?>
