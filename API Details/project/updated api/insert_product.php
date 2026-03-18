<?php
include('connect.php');

// Get product fields
$user_id = $_POST['user_id'] ?? '';
$cat_id = $_POST['cat_id'] ?? '';
$name = $_POST['name'] ?? '';
$description = $_POST['description'] ?? '';
$price = $_POST['price'] ?? '';
$bid_status = $_POST['bid_status'] ?? 'inactive';

// Handle image upload
$image_name = '';
if(isset($_FILES['image']) && $_FILES['image']['error'] == 0){
    $image_name = time().'_'.basename($_FILES['image']['name']);
    move_uploaded_file($_FILES['image']['tmp_name'], 'vaishvi/uploads/product/'.$image_name);
}


echo $image_name;

// Insert product
$insertProduct = "INSERT INTO v_products (user_id, cat_id, name, description, image, price, bid_status) 
                  VALUES ('$user_id', '$cat_id', '$name', '$description', '$image_name', '$price', '$bid_status')";

if(mysqli_query($con, $insertProduct)){
    $product_id = mysqli_insert_id($con);

    // Insert attributes if sent
    if(isset($_POST['attributes'])){
        $attributes = stripslashes($_POST['attributes']); // remove extra slashes
        $attributes = json_decode($attributes, true);

        if(is_array($attributes)){
            foreach($attributes as $attr_id => $attr_value){
                $attr_value_safe = mysqli_real_escape_string($con, $attr_value);
                mysqli_query($con, "INSERT INTO v_product_attributes (product_id, attribute_id, attribute_value) 
                                    VALUES ('$product_id', '$attr_id', '$attr_value_safe')");
            }
        }
    }

    // Prepare JSON response
    $response = [
        'status' => 'success',
        'message' => 'Product Inserted Successfully',
        'product_id' => $product_id
    ];

    echo json_encode($response);

} else {
    echo json_encode([
        'status' => 'failed',
        'message' => mysqli_error($con)
    ]);
}

mysqli_close($con);
?>