<?php
include('connect.php');

$query = "SELECT * FROM v_items ORDER BY id DESC";
$result = mysqli_query($con, $query);

$items = [];

while ($row = mysqli_fetch_assoc($result)) {
    $items[] = $row;
}

echo json_encode($items);
?>
