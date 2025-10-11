<?php

include('connect.php');

// Optional filter: seller_id
$seller_id = isset($_GET['seller_id']) ? $_GET['seller_id'] : null;

// Base query
$query = "SELECT * FROM v_category";

// If seller_id is passed, filter by it
if ($seller_id !== null) {
    $query .= " WHERE seller_id = '$seller_id'";
}

$result = mysqli_query($con, $query);

$categories = [];

if ($result && mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $categories[] = $row;
    }

    echo json_encode($categories);
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'No categories found.'
    ]);
}

?>
