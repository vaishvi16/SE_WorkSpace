<?php
include('connect.php');

$product_id = $_POST['product_id'];

if ($product_id == "") {
    echo "product_id required";
    exit;
}

/* 1️⃣ Check product exists */
$p = mysqli_query($con, "SELECT bid_status FROM v_products WHERE id='$product_id'");
if (mysqli_num_rows($p) == 0) {
    echo "Product not found";
    exit;
}

/* 2️⃣ Check if product is already active */
$p_row = mysqli_fetch_assoc($p);
if ($p_row['bid_status'] == 'active') {
    echo "Product already active in auction";
    exit;
}

/* 3️⃣ Check auction already active */
$check = mysqli_query(
    $con,
    "SELECT id FROM v_auctions 
     WHERE product_id='$product_id' AND status='active'"
);

if (mysqli_num_rows($check) > 0) {
    echo "Auction already active";
    exit;
}

/* 4️⃣ Start auction */
$start_time = date("Y-m-d H:i:s");
$end_time   = date("Y-m-d H:i:s", strtotime("+90 seconds"));

mysqli_query(
    $con,
    "INSERT INTO v_auctions (product_id, start_time, end_time, status)
     VALUES ('$product_id', '$start_time', '$end_time', 'active')"
) or die(mysqli_error($con));

/* 5️⃣ Update product status */
mysqli_query(
    $con,
    "UPDATE v_products SET bid_status='active' WHERE id='$product_id'"
) or die(mysqli_error($con));

echo "Auction started";
?>
