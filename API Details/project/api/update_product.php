<?php
include('connect.php');

$id = $_POST['id'];
$name = $_POST['name'];
$desc = $_POST['description'];
$price = $_POST['price'];

$image = '';
if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
    $uploadDir = 'uploads/';
    $filename = time() . '_' . basename($_FILES['image']['name']);
    $targetPath = $uploadDir . $filename;

    if (move_uploaded_file($_FILES['image']['tmp_name'], $targetPath)) {
        $image = $filename;
    }
}

$Sql_Query = "UPDATE v_products 
              SET name = '$name', 
                  description = '$desc', 
                  image = '$image', 
                  price = '$price' 
              WHERE id = '$id'";

if (mysqli_query($con, $Sql_Query)) {
    echo "Product updated successfully.";
} else {
    echo "Failed to update product: " . mysqli_error($con);
}

mysqli_close($con);
?>
