<?php
include('connect.php');

// Get JSON input
$data = json_decode(file_get_contents("php://input"), true);

// Validate required fields
if (
    !isset($data['product_id']) ||
    !isset($data['user_id']) ||
    !isset($data['rating'])
) {
    echo json_encode([
        "status" => false,
        "message" => "product_id, user_id and rating are required"
    ]);
    exit;
}

$product_id = $data['product_id'];
$user_id = $data['user_id'];
$rating = $data['rating'];
$review_text = isset($data['review_text']) ? $data['review_text'] : null;

// Validate rating (important)
if ($rating < 1 || $rating > 5) {
    echo json_encode([
        "status" => false,
        "message" => "rating must be between 1 and 5"
    ]);
    exit;
}

// Insert query
$query = "INSERT INTO v_product_reviews 
(product_id, user_id, rating, review_text) 
VALUES (?, ?, ?, ?)";

$stmt = mysqli_prepare($con, $query);
mysqli_stmt_bind_param($stmt, "iiis", $product_id, $user_id, $rating, $review_text);

if (mysqli_stmt_execute($stmt)) {
    echo json_encode([
        "status" => true,
        "message" => "Review added successfully",
        "insert_id" => mysqli_insert_id($con)
    ]);
} else {
    echo json_encode([
        "status" => false,
        "message" => mysqli_error($con)
    ]);
}

mysqli_stmt_close($stmt);
mysqli_close($con);
?>