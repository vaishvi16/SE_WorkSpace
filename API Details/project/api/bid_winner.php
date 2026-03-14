<?php
include('connect.php');

$product_id = $_GET['product_id'];

if ($product_id == "") {
    echo json_encode(["status"=>"error","message"=>"product_id required"]);
    exit;
}

/* 1️⃣ Get latest auction */
$a = mysqli_query($con, "
    SELECT * FROM v_auctions
    WHERE product_id='$product_id'
    ORDER BY id DESC
    LIMIT 1
");

if (mysqli_num_rows($a) == 0) {
    echo json_encode([
        "status"=>"no_auction",
        "message"=>"No auction started for this product"
    ]);
    exit;
}

$auction = mysqli_fetch_assoc($a);
$auction_id = $auction['id'];
$current_time = date("Y-m-d H:i:s");

/* 2️⃣ AUTO END IF TIME PASSED */
if ($auction['status'] == 'active' && $current_time >= $auction['end_time']) {

    mysqli_query($con, "
        UPDATE v_auctions 
        SET status='ended' 
        WHERE id='$auction_id'
    ");

    mysqli_query($con, "
        UPDATE v_products 
        SET bid_status='sold' 
        WHERE id='$product_id'
    ");

    $auction['status'] = 'ended';
}

/* 3️⃣ Status Handling */
if ($auction['status'] == 'upcoming') {
    echo json_encode([
        "status"=>"upcoming",
        "message"=>"Auction not started yet"
    ]);
    exit;
}

if ($auction['status'] == 'active') {
    echo json_encode([
        "status"=>"active",
        "message"=>"Auction is currently running"
    ]);
    exit;
}

/* 4️⃣ Check result FOR THIS AUCTION ONLY */
$check = mysqli_query($con, "
    SELECT r.winner_user_id, r.winning_bid, u.name
    FROM v_auction_results r
    JOIN v_users u ON u.id = r.winner_user_id
    WHERE r.auction_id='$auction_id'
    LIMIT 1
");

if (mysqli_num_rows($check) > 0) {
    $result = mysqli_fetch_assoc($check);

    echo json_encode([
        "status"=>"sold",
        "auction_id"=>$auction_id,
        "winner_user_id"=>$result['winner_user_id'],
        "winner_name"=>$result['name'],
        "winning_bid"=>$result['winning_bid']
    ]);
    exit;
}

/* 5️⃣ Get highest bid FOR THIS AUCTION */
$b = mysqli_query($con, "
    SELECT b.user_id, b.bid_amount, u.name
    FROM v_bids b
    JOIN v_users u ON u.id = b.user_id
    WHERE b.auction_id='$auction_id'
    ORDER BY b.bid_amount DESC
    LIMIT 1
");

if (mysqli_num_rows($b) == 0) {
    echo json_encode([
        "status"=>"ended_no_bids",
        "message"=>"Auction ended with no bids"
    ]);
    exit;
}

$winner = mysqli_fetch_assoc($b);

/* 6️⃣ Save result WITH auction_id */
mysqli_query($con, "
    INSERT INTO v_auction_results
    (auction_id, product_id, winner_user_id, winning_bid, ended_at)
    VALUES
    ('$auction_id','$product_id','{$winner['user_id']}','{$winner['bid_amount']}', NOW())
");

/* 7️⃣ Return winner */
echo json_encode([
    "status"=>"sold",
    "auction_id"=>$auction_id,
    "winner_user_id"=>$winner['user_id'],
    "winner_name"=>$winner['name'],
    "winning_bid"=>$winner['bid_amount']
]);
?>
