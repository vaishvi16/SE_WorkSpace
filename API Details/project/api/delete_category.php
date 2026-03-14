<?php
include('connect.php');

$id = isset($_POST['id']) ? intval($_POST['id']) : 0;

if ($id <= 0) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Valid Category ID required'
    ]);
    exit;
}

// STEP 1: Get category images
$categoryImages = [];
$imgRes = mysqli_query($con, "SELECT image FROM v_category_images WHERE category_id = $id");
if ($imgRes) {
    while ($img = mysqli_fetch_assoc($imgRes)) {
        $categoryImages[] = $img['image'];
    }
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Error fetching category images: ' . mysqli_error($con)
    ]);
    exit;
}

// STEP 2: Get products under this category
$productRes = mysqli_query($con, "SELECT id, image FROM v_products WHERE cat_id = $id");
if (!$productRes) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Error fetching products: ' . mysqli_error($con)
    ]);
    exit;
}

$productIds = [];
$productImages = [];
while ($prod = mysqli_fetch_assoc($productRes)) {
    $productIds[] = $prod['id'];
    if (!empty($prod['image'])) {
        $productImages[] = $prod['image'];
    }
}

// STEP 3: Delete bids for these products
if (!empty($productIds)) {
    $idsStr = implode(',', $productIds);
    $deleteBids = mysqli_query($con, "DELETE FROM v_bids WHERE product_id IN ($idsStr)");
    if (!$deleteBids) {
        echo json_encode([
            'status' => 'error',
            'message' => 'Failed to delete bids: ' . mysqli_error($con)
        ]);
        exit;
    }

    // STEP 4: Delete orders for these products
    $deleteOrders = mysqli_query($con, "DELETE FROM v_miles_orders WHERE product_id IN ($idsStr)");
    if (!$deleteOrders) {
        echo json_encode([
            'status' => 'error',
            'message' => 'Failed to delete orders: ' . mysqli_error($con)
        ]);
        exit;
    }

    // STEP 5: Delete products
    $deleteProducts = mysqli_query($con, "DELETE FROM v_products WHERE id IN ($idsStr)");
    if (!$deleteProducts) {
        echo json_encode([
            'status' => 'error',
            'message' => 'Failed to delete products: ' . mysqli_error($con)
        ]);
        exit;
    }
}

// STEP 6: Delete category images from DB
$deleteCatImages = mysqli_query($con, "DELETE FROM v_category_images WHERE category_id = $id");
if (!$deleteCatImages) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to delete category images: ' . mysqli_error($con)
    ]);
    exit;
}

// STEP 7: Delete category itself
$deleteCategory = mysqli_query($con, "DELETE FROM v_category WHERE id = $id");
if (!$deleteCategory) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to delete category: ' . mysqli_error($con)
    ]);
    exit;
}

// STEP 8: Delete category image files from folder
foreach ($categoryImages as $filename) {
    $path = "uploads/category/" . $filename;
    if (file_exists($path)) {
        unlink($path);
    }
}

// STEP 9: Delete product image files from folder
foreach ($productImages as $filename) {
    $path = "uploads/products/" . $filename;
    if (file_exists($path)) {
        unlink($path);
    }
}

// Success response
echo json_encode([
    'status' => 'success',
    'message' => 'Category and all related products, bids, and orders deleted successfully'
]);

mysqli_close($con);
?>
