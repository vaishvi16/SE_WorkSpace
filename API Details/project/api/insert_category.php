<?php
include('connect.php');

$seller_id = $_POST['seller_id'];
$name = $_POST['name'];
$parent_id = (!empty($_POST['parent_id'])) ? $_POST['parent_id'] : "NULL";

if ($seller_id == "" || $name == "") {
    echo json_encode(['status' => 'error', 'message' => 'Name & Seller ID required']);
    exit;
}

$sql = "INSERT INTO v_category (name, parent_id, seller_id)
        VALUES ('$name', $parent_id, '$seller_id')";
mysqli_query($con, $sql);

$category_id = mysqli_insert_id($con);

// Image Upload
if (!empty($_FILES['images']['name'][0])) {

    for ($i = 0; $i < count($_FILES['images']['name']); $i++) {

        $imageName = time() . "_" . basename($_FILES['images']['name'][$i]);
        $target = "uploads/category/" . $imageName;

        if (move_uploaded_file($_FILES['images']['tmp_name'][$i], $target)) {
            mysqli_query($con,
                "INSERT INTO v_category_images (category_id, image)
                 VALUES ('$category_id', '$imageName')"
            );
        }
    }
}

echo json_encode(['status' => 'success', 'category_id' => $category_id]);
?>
