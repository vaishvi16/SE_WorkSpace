<?php
include('connect.php');

$category_id = isset($_GET['category_id']) ? $_GET['category_id'] : null;

if ($category_id == null) {
    echo json_encode([
        "status" => "error",
        "message" => "category_id is required"
    ]);
    exit;
}

$query = "SELECT * FROM v_category_attributes WHERE category_id = '$category_id'";
$result = mysqli_query($con, $query);

$attributes = [];

while ($row = mysqli_fetch_assoc($result)) {

    $data = [];
    $data["id"] = $row["id"];
    $data["category_id"] = $row["category_id"];
    $data["attribute_name"] = $row["attribute_name"];
    $data["attribute_type"] = $row["attribute_type"];
    $data["is_required"] = $row["is_required"];

    // Convert comma separated options into array
    if (!empty($row["attribute_options"])) {
        $data["attribute_options"] = explode(",", $row["attribute_options"]);
    } else {
        $data["attribute_options"] = [];
    }

    $attributes[] = $data;
}

echo json_encode($attributes);

mysqli_close($con);
?>