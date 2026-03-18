<?php
include('connect.php');

$seller_id = isset($_GET['seller_id']) ? $_GET['seller_id'] : null;

$query = "SELECT * FROM v_category";
if ($seller_id !== null) {
    $query .= " WHERE seller_id = '$seller_id'";
}

$result = mysqli_query($con, $query);
$categories = [];

$base_url = "https://" . $_SERVER['HTTP_HOST'] . "/vaishvi/";  // Auto-detects domain

while ($row = mysqli_fetch_assoc($result)) {
    // fetch images
    $imgQ = mysqli_query($con, 
        "SELECT image FROM v_category_images WHERE category_id = '{$row['id']}'"
    );

    $images = [];
    while ($img = mysqli_fetch_assoc($imgQ)) {
        $images[] = $base_url . "uploads/category/" . $img['image'];  // Dynamic URL
    }

    $row['images'] = $images;
    $categories[] = $row;
}

echo json_encode($categories);
?>
