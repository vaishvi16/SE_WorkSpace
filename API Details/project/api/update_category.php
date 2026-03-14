<?php
include('connect.php');

$id = $_POST['id'];
$name = $_POST['name'];
$seller_id = $_POST['seller_id'];
$parent_id = ($_POST['parent_id'] != "") ? $_POST['parent_id'] : "NULL";

if ($id == "") {
    echo json_encode(['status' => 'error', 'message' => 'ID required']);
    exit;
}

mysqli_query($con, "
    UPDATE v_category SET 
        name = '$name',
        parent_id = $parent_id,
        seller_id = '$seller_id'
    WHERE id = '$id'
");

// Upload new images
if (!empty($_FILES['images']['name'][0])) {

    for ($i = 0; $i < count($_FILES['images']['name']); $i++) {

        $imageName = time() . "_" . $_FILES['images']['name'][$i];
        $target = "uploads/category/" . $imageName;

        if (move_uploaded_file($_FILES['images']['tmp_name'][$i], $target)) {
            mysqli_query($con, 
                "INSERT INTO v_category_images (category_id, image)
                 VALUES ('$id', '$imageName')"
            );
        }
    }
}

echo json_encode(['status' => 'success', 'message' => 'Category updated']);
?>
