<?php
include('connect.php');

$product_id = $_GET['product_id'];

/* 1️⃣ Get LATEST auction (active OR ended) */
$a = mysqli_query(
  $con,
  "SELECT id, status FROM v_auctions 
   WHERE product_id='$product_id' 
   ORDER BY id DESC LIMIT 1"
);

if (mysqli_num_rows($a) == 0) {
    echo json_encode(null);
    exit;
}

$auction = mysqli_fetch_assoc($a);
$auction_id = $auction['id'];

/* 2️⃣ Get highest bid FOR THIS AUCTION */
$res = mysqli_query(
  $con,
  "SELECT user_id, bid_amount 
   FROM v_bids 
   WHERE auction_id='$auction_id'  
   ORDER BY bid_amount DESC LIMIT 1"
);

$row = mysqli_fetch_assoc($res);

// For ENDED auctions with no bids - check winning_bid
if (!$row && $auction['status'] == 'ended') {
    $win_res = mysqli_query($con, 
        "SELECT winning_bid as bid_amount, winner_user_id as user_id 
         FROM v_auctions 
         WHERE id='$auction_id'"
    );
    $row = mysqli_fetch_assoc($win_res);
}

echo json_encode($row);
?>
