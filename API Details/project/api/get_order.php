<?php

include('connect.php');

$user_id = $_GET['user_id'];

if ($user_id == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'User ID is required.'
    ]);
    exit;
}

$query = "SELECT * FROM v_orders WHERE user_id = '$user_id'";
$result = mysqli_query($con, $query);

$data = [];

while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}

echo json_encode($data);
?>
