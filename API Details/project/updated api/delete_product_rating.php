<?php
include('connect.php');

// Get JSON input
$data = json_decode(file_get_contents("php://input"), true);

// Case 1: Delete by review_id
if (isset($data['review_id'])) {

    $review_id = $data['review_id'];

    $query = "DELETE FROM v_product_reviews WHERE id = ?";
    $stmt = mysqli_prepare($con, $query);
    mysqli_stmt_bind_param($stmt, "i", $review_id);

    if (mysqli_stmt_execute($stmt)) {
        if (mysqli_stmt_affected_rows($stmt) > 0) {
            echo json_encode([
                "status" => true,
                "message" => "Review deleted successfully"
            ]);
        } else {
            echo json_encode([
                "status" => false,
                "message" => "Review not found"
            ]);
        }
    } else {
        echo json_encode([
            "status" => false,
            "message" => mysqli_error($con)
        ]);
    }

    mysqli_stmt_close($stmt);
}


// Case 2: Delete by product_id + user_id
else if (isset($data['product_id']) && isset($data['user_id'])) {

    $product_id = $data['product_id'];
    $user_id = $data['user_id'];

    $query = "DELETE FROM v_product_reviews WHERE product_id = ? AND user_id = ?";
    $stmt = mysqli_prepare($con, $query);
    mysqli_stmt_bind_param($stmt, "ii", $product_id, $user_id);

    if (mysqli_stmt_execute($stmt)) {
        if (mysqli_stmt_affected_rows($stmt) > 0) {
            echo json_encode([
                "status" => true,
                "message" => "Review deleted successfully"
            ]);
        } else {
            echo json_encode([
                "status" => false,
                "message" => "No review found for this user and product"
            ]);
        }
    } else {
        echo json_encode([
            "status" => false,
            "message" => mysqli_error($con)
        ]);
    }

    mysqli_stmt_close($stmt);
}


// Invalid request
else {
    echo json_encode([
        "status" => false,
        "message" => "Provide review_id OR product_id + user_id"
    ]);
}

mysqli_close($con);
?>