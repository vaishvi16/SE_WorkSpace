<?php
include('connect.php');

// Get the form values
$u1 = $_POST['user_id'];
$c1 = $_POST['cat_id'];
$n1 = $_POST['name'];
$d1 = $_POST['description'];
$p1 = $_POST['price'];
$b1 = $_POST['bid_status'];

// Image upload (only change made here)
$i1 = ''; // default
if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
    $uploadDir = 'uploads/';
    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0755, true);
    }

    $filename = time() . '_' . basename($_FILES['image']['name']);
    $targetPath = $uploadDir . $filename;

    if (move_uploaded_file($_FILES['image']['tmp_name'], $targetPath)) {
        $i1 = $filename; // Save only the filename to the DB
    } else {
        echo "Failed to upload image.";
        exit;
    }
} else {
    echo "Image is required.";
    exit;
}

// Validate required fields
if ($u1 == "" || $c1 == "" || $n1 == "" || $p1 == "" || $b1 == "") {
    echo "Please Fill All Required Fields";
} else {
    $query = "INSERT INTO v_products(user_id, cat_id, name, description, image, price, bid_status) 
              VALUES('$u1', '$c1', '$n1', '$d1', '$i1', '$p1', '$b1')";
    
    if (mysqli_query($con, $query)) {
        echo "Product Inserted Successfully";
    } else {
        echo "Error inserting product: " . mysqli_error($con);
    }
}

mysqli_close($con);
?>
