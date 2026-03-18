<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header("Content-Type: application/json");

include('connect.php');

// ------------------ GET DATA ------------------
$seller_id = $_POST['seller_id'] ?? '';
$name      = $_POST['name'] ?? '';
$parent_id = $_POST['parent_id'] ?? null;

// ------------------ VALIDATION ------------------
if (empty($seller_id) || empty($name)) {
    echo json_encode([
        'status' => 'failed',
        'message' => 'Name & Seller ID required'
    ]);
    exit;
}

// ------------------ ESCAPE DATA ------------------
$name = mysqli_real_escape_string($con, $name);

// UPDATED: handle parent_id NULL properly
$parent_id = (!empty($parent_id)) ? intval($parent_id) : "NULL";

// ------------------ INSERT CATEGORY ------------------
$insertCategory = "INSERT INTO v_category (name, parent_id, seller_id)
                   VALUES ('$name', $parent_id, '$seller_id')";

if (mysqli_query($con, $insertCategory)) {

    $category_id = mysqli_insert_id($con);

    // ------------------ IMAGE UPLOAD ------------------
    if (isset($_FILES['images']) && !empty($_FILES['images']['name'][0])) {

        // UPDATED: Absolute path (same as product API)
        $upload_dir = $_SERVER['DOCUMENT_ROOT'].'/vaishvi/uploads/category/';

        // UPDATED: Create folder if not exists
        if (!is_dir($upload_dir)) {
            mkdir($upload_dir, 0777, true);
        }

        for ($i = 0; $i < count($_FILES['images']['name']); $i++) {

            if ($_FILES['images']['error'][$i] == 0) {

                $imageName = time() . "_" . basename($_FILES['images']['name'][$i]);
                $target_file = $upload_dir . $imageName;

                if (move_uploaded_file($_FILES['images']['tmp_name'][$i], $target_file)) {

                    mysqli_query($con,
                        "INSERT INTO v_category_images (category_id, image)
                         VALUES ('$category_id', '$imageName')"
                    );

                } else {
                    // If one image fails
                    echo json_encode([
                        'status' => 'failed',
                        'message' => 'One of the images failed to upload'
                    ]);
                    exit;
                }
            }
        }
    }

    // ------------------ SUCCESS RESPONSE ------------------
    echo json_encode([
        'status' => 'success',
        'message' => 'Category inserted successfully',
        'category_id' => $category_id
    ]);

} else {

    // ------------------ ERROR RESPONSE ------------------
    echo json_encode([
        'status' => 'failed',
        'message' => mysqli_error($con)
    ]);
}

mysqli_close($con);
?>