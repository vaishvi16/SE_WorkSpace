<?php
include('connect.php');

$id = isset($_GET['id']) ? $_GET['id'] : null;
$cat_id = isset($_GET['cat_id']) ? $_GET['cat_id'] : null;

$sql = "SELECT * FROM v_products WHERE 1=1";

if($id !== null) $sql .= " AND id='$id'";
if($cat_id !== null) $sql .= " AND cat_id='$cat_id'";

$result = mysqli_query($con, $sql);
$data2 = [];

$base_url = "https://" . $_SERVER['HTTP_HOST'] . "/vaishvi/";  // Auto-detects domain

while($row = mysqli_fetch_assoc($result)){
    $product = [
        "id" => $row["id"],
        "user_id" => $row["user_id"],
        "cat_id" => $row["cat_id"],
        "name" => $row["name"],
        "description" => $row["description"],
        "image" => $base_url . "uploads/product/" . $row["image"],  // Dynamic URL
        "price" => $row["price"],
        "bid_status" => $row["bid_status"],
        "standard_delivery_days" => $row["standard_delivery_days"],
        "express_delivery_days" => $row["express_delivery_days"]
    ];

    // Fetch attributes for this product
    $attr_res = mysqli_query($con, "SELECT v_product_attributes.attribute_id, v_category_attributes.attribute_name, v_product_attributes.attribute_value
                                    FROM v_product_attributes 
                                    JOIN v_category_attributes ON v_category_attributes.id = v_product_attributes.attribute_id
                                    WHERE v_product_attributes.product_id='{$row['id']}'");

    $attributes = [];
    while($attr = mysqli_fetch_assoc($attr_res)){
        $attributes[] = [
            "attribute_id" => $attr['attribute_id'],
            "attribute_name" => $attr['attribute_name'],
            "attribute_value" => $attr['attribute_value']
        ];
    }

    $product['attributes'] = $attributes;
    $data2[] = $product;
}

echo json_encode($data2, JSON_PRETTY_PRINT);
mysqli_close($con);
?>
