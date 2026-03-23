<?php
include('connect.php');

// Get JSON input
$data = json_decode(file_get_contents("php://input"), true);

// Case 1: Delete by attribute row ID
if (isset($data['id'])) {

    $id = $data['id'];

    $query = "DELETE FROM v_product_attributes WHERE id = ?";
    $stmt = mysqli_prepare($con, $query);
    mysqli_stmt_bind_param($stmt, "i", $id);

    if (mysqli_stmt_execute($stmt)) {
        if (mysqli_stmt_affected_rows($stmt) > 0) {
            echo json_encode([
                "status" => true,
                "message" => "Product attribute deleted"
            ]);
        } else {
            echo json_encode([
                "status" => false,
                "message" => "Attribute not found"
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


// Case 2: Delete all attributes of a product
else if (isset($data['product_id'])) {

    $product_id = $data['product_id'];

    $query = "DELETE FROM v_product_attributes WHERE product_id = ?";
    $stmt = mysqli_prepare($con, $query);
    mysqli_stmt_bind_param($stmt, "i", $product_id);

    if (mysqli_stmt_execute($stmt)) {
        echo json_encode([
            "status" => true,
            "message" => "All attributes deleted for product"
        ]);
    } else {
        echo json_encode([
            "status" => false,
            "message" => mysqli_error($con)
        ]);
    }

    mysqli_stmt_close($stmt);
}


// Invalid
else {
    echo json_encode([
        "status" => false,
        "message" => "Provide id OR product_id"
    ]);
}

mysqli_close($con);
?>