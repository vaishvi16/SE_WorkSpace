<?php
include('connect.php');

header("Content-Type: application/json");

// 1️⃣ Check product ID
if (!isset($_POST['id'])) {
    echo json_encode([
        "status" => "failed",
        "message" => "Product ID is required."
    ]);
    exit;
}

$id = $_POST['id'];

// 2️⃣ Check product exists
$selectQuery = "SELECT * FROM v_products WHERE id='$id'";
$result = mysqli_query($con, $selectQuery);

if (!$result || mysqli_num_rows($result) == 0) {
    echo json_encode([
        "status" => "failed",
        "message" => "Product not found."
    ]);
    exit;
}

$product = mysqli_fetch_assoc($result);

// 3️⃣ Get updated fields (or keep old)
$name = (!empty($_POST['name'])) ? $_POST['name'] : $product['name'];
$desc = (!empty($_POST['description'])) ? $_POST['description'] : $product['description'];
$price = (!empty($_POST['price'])) ? $_POST['price'] : $product['price'];

$image = $product['image'];

// 4️⃣ Handle image update
if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
    $uploadDir = 'uploads/product/';
    $filename = time() . '_' . basename($_FILES['image']['name']);
    $targetPath = $uploadDir . $filename;

    if (move_uploaded_file($_FILES['image']['tmp_name'], $targetPath)) {
        $image = $filename;
    }
}

// 5️⃣ Update product table
$updateQuery = "UPDATE v_products 
                SET name='$name',
                    description='$desc',
                    image='$image',
                    price='$price'
                WHERE id='$id'";

if (!mysqli_query($con, $updateQuery)) {
    echo json_encode([
        "status" => "failed",
        "message" => mysqli_error($con)
    ]);
    exit;
}

// 6️⃣ Update attributes if provided
if (isset($_POST['attributes'])) {

    // Delete old attributes
    mysqli_query($con, "DELETE FROM v_product_attributes WHERE product_id='$id'");

    $attributes = stripslashes($_POST['attributes']);
    $attributes = json_decode($attributes, true);

    if (is_array($attributes)) {
        foreach ($attributes as $attr_id => $attr_value) {
            $attr_value_safe = mysqli_real_escape_string($con, $attr_value);

            mysqli_query($con, "INSERT INTO v_product_attributes 
                                (product_id, attribute_id, attribute_value) 
                                VALUES ('$id', '$attr_id', '$attr_value_safe')");
        }
    }
}

// 7️⃣ Success response
echo json_encode([
    "status" => "success",
    "message" => "Product updated successfully."
]);

mysqli_close($con);
?>