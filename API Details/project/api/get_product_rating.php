<?php
include('connect.php');

if(isset($_GET['product_id'])) {

    $product_id = $_GET['product_id'];

    $query = "SELECT AVG(rating) as avg_rating 
              FROM v_product_reviews 
              WHERE product_id = '$product_id'";

    $result = mysqli_query($con, $query);
    $row = mysqli_fetch_assoc($result);

    $average = $row['avg_rating'];

    if($average == null) {
        $average = 0;
    }

    echo json_encode([
        "status" => true,
        "average_rating" => round($average, 1)
    ]);

} else {
    echo json_encode([
        "status" => false,
        "message" => "product_id required"
    ]);
}
?>
