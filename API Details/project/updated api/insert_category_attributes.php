<?php
include('connect.php');

// Get raw JSON input (recommended for APIs)
$data = json_decode(file_get_contents("php://input"), true);

// Validate required fields
if (
    !isset($data['category_id']) ||
    !isset($data['attribute_name'])
) {
    echo json_encode([
        "status" => "error",
        "message" => "category_id and attribute_name are required"
    ]);
    exit;
}

$category_id = $data['category_id'];
$attribute_name = $data['attribute_name'];

// Optional fields with defaults
$attribute_type = isset($data['attribute_type']) ? $data['attribute_type'] : 'text';
$is_required = isset($data['is_required']) ? $data['is_required'] : 0;

// Handle dropdown options
$attribute_options = null;

if ($attribute_type == 'dropdown') {
    if (isset($data['attribute_options']) && is_array($data['attribute_options'])) {
        $attribute_options = implode(",", $data['attribute_options']);
    } else {
        echo json_encode([
            "status" => "error",
            "message" => "attribute_options must be array for dropdown"
        ]);
        exit;
    }
}

// Insert query
$query = "INSERT INTO v_category_attributes 
(category_id, attribute_name, attribute_type, attribute_options, is_required) 
VALUES (?, ?, ?, ?, ?)";

$stmt = mysqli_prepare($con, $query);
mysqli_stmt_bind_param(
    $stmt,
    "isssi",
    $category_id,
    $attribute_name,
    $attribute_type,
    $attribute_options,
    $is_required
);

if (mysqli_stmt_execute($stmt)) {
    echo json_encode([
        "status" => "success",
        "message" => "Attribute inserted successfully",
        "insert_id" => mysqli_insert_id($con)
    ]);
} else {
    echo json_encode([
        "status" => "error",
        "message" => mysqli_error($con)
    ]);
}

mysqli_stmt_close($stmt);
mysqli_close($con);
?>