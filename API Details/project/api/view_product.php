<?php
include('connect.php');

$sql = "SELECT * FROM v_products";
$result = mysqli_query($con, $sql);
$data2 = array();

while ($row = mysqli_fetch_array($result)) {
    $data["id"] = $row["id"];
    $data["user_id"] = $row["user_id"];
    $data["cat_id"] = $row["cat_id"];
    $data["name"] = $row["name"];
    $data["description"] = $row["description"];
    $data["image"] = "http://localhost/5_miles/uploads/".$row["image"];
    $data["price"] = $row["price"];
    $data["bid_status"] = $row["bid_status"];

    array_push($data2, $data);
}

echo json_encode($data2);

mysqli_close($con);
?>
