<?php
include('connect.php');

// Get JSON input
$data = json_decode(file_get_contents("php://input"), true);

// Validate
if (!isset($data['product_id']) || !isset($data['attributes'])) {
    echo json_encode([
        "status" => false,
        "message" => "product_id and attributes are required"
    ]);
    exit;
}

$product_id = $data['product_id'];
$attributes = $data['attributes'];

if (!is_array($attributes) || count($attributes) == 0) {
    echo json_encode([
        "status" => false,
        "message" => "attributes must be a non-empty array"
    ]);
    exit;
}

// Prepare insert
$query = "INSERT INTO v_product_attributes (product_id, attribute_id, attribute_value) VALUES (?, ?, ?)";
$stmt = mysqli_prepare($con, $query);

$inserted = 0;

foreach ($attributes as $attr) {

    if (!isset($attr['attribute_id']) || !isset($attr['attribute_value'])) {
        continue; // skip invalid
    }

    $attribute_id = $attr['attribute_id'];
    $attribute_value = $attr['attribute_value'];

    mysqli_stmt_bind_param($stmt, "iis", $product_id, $attribute_id, $attribute_value);

    if (mysqli_stmt_execute($stmt)) {
        $inserted++;
    }
}

mysqli_stmt_close($stmt);

echo json_encode([
    "status" => true,
    "message" => "$inserted attributes inserted successfully"
]);

mysqli_close($con);
?>