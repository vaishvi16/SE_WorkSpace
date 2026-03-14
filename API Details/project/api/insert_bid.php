<?php
include('connect.php');

$product_id = $_POST['product_id'];
$user_id    = $_POST['user_id'];
$bid_amount = $_POST['bid_amount'];

if ($product_id=="" || $user_id=="" || $bid_amount=="") {
    echo "Missing fields";
    exit;
}

/* 1️⃣ Get active auction */
$auction = mysqli_query(
    $con,
    "SELECT * FROM v_auctions 
     WHERE product_id='$product_id' AND status='active'"
);

if (mysqli_num_rows($auction) == 0) {
    echo "Auction not active";
    exit;
}

$a = mysqli_fetch_assoc($auction);
$auction_id = $a['id']; // ADDED: auction_id for correct scoping

/* 2️⃣ Check auction time */
$current = date("Y-m-d H:i:s");
if ($current > $a['end_time']) {
    echo "Auction ended";
    exit;
}

/* 3️⃣ Get highest bid FOR THIS AUCTION ONLY */
$res = mysqli_query(
    $con,
    "SELECT MAX(bid_amount) AS highest 
     FROM v_bids 
     WHERE auction_id='$auction_id'" // CHANGED
);

$row = mysqli_fetch_assoc($res);
$highest = $row['highest'] ?? 0;

if ($bid_amount <= $highest) {
    echo "Bid must be higher than current bid";
    exit;
}

/* 4️⃣ Insert bid WITH auction_id */
mysqli_query(
    $con,
    "INSERT INTO v_bids(auction_id, product_id, user_id, bid_amount)
     VALUES('$auction_id','$product_id','$user_id','$bid_amount')" // CHANGED
);

echo "Bid placed";
?>
