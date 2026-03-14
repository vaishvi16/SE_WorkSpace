<?php
include('connect.php');

if(isset($_GET['product_id'])) {

    $product_id = $_GET['product_id'];

    $query = "SELECT 
                ca.attribute_name,
                pa.attribute_value
              FROM v_product_attributes pa
              JOIN v_category_attributes ca 
                ON pa.attribute_id = ca.id
              WHERE pa.product_id = '$product_id'";

    $result = mysqli_query($con, $query);

    $attributes = array();

    while($row = mysqli_fetch_assoc($result)) {
        $attributes[] = $row;
    }

    echo json_encode([
        "status" => true,
        "attributes" => $attributes
    ]);

} else {
    echo json_encode([
        "status" => false,
        "message" => "product_id required"
    ]);
}
?>
