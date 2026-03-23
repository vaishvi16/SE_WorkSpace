<?php
include('connect.php');

// Get JSON input
$data = json_decode(file_get_contents("php://input"), true);

// Validate
if (!isset($data['attribute_id'])) {
    echo json_encode([
        "status" => false,
        "message" => "attribute_id is required"
    ]);
    exit;
}

$attribute_id = $data['attribute_id'];

// Delete query
$query = "DELETE FROM v_category_attributes WHERE id = ?";
$stmt = mysqli_prepare($con, $query);
mysqli_stmt_bind_param($stmt, "i", $attribute_id);

if (mysqli_stmt_execute($stmt)) {
    if (mysqli_stmt_affected_rows($stmt) > 0) {
        echo json_encode([
            "status" => true,
            "message" => "Category attribute deleted successfully"
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
mysqli_close($con);
?>