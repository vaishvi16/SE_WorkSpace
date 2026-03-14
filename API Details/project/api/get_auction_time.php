<?php
include('connect.php');

$product_id = $_GET['product_id'];

if ($product_id == "") {
    echo json_encode(["error" => "product_id required"]);
    exit;
}

// Get LATEST auction for this product
$res = mysqli_query($con, "
    SELECT 
        id AS auction_id,
        start_time,
        end_time,
        status
    FROM v_auctions
    WHERE product_id='$product_id' 
    ORDER BY id DESC 
    LIMIT 1
");

if (mysqli_num_rows($res) == 0) {
    echo json_encode(["status" => "no_auction_found"]);
    exit;
}

$row = mysqli_fetch_assoc($res);
$auction_id = $row['auction_id'];

// Calculate remaining seconds using PHP (more reliable)
$end_timestamp = strtotime($row['end_time']);
$current_timestamp = time();
$remaining_seconds = max(0, $end_timestamp - $current_timestamp);

// ONLY update if auction was ACTIVE
if ($remaining_seconds > 0) {
    $row['status'] = 'active';
    $row['remaining_seconds'] = $remaining_seconds;
} 
// ONLY update if CURRENTLY active AND time expired
else if ($row['status'] == 'active') {  
    $row['status'] = 'ended';
    $row['remaining_seconds'] = 0;
    
    mysqli_query($con, "UPDATE v_auctions SET status='ended' WHERE id='$auction_id'");
    mysqli_query($con, "UPDATE v_products SET bid_status='sold' WHERE id='$product_id'");
} 
// Upcoming/Already ended → NO UPDATE!

$row['remaining_seconds'] = $remaining_seconds; 
$row['current_time'] = date("Y-m-d H:i:s");
$row['server_timestamp'] = $current_timestamp;

echo json_encode($row);
?>
