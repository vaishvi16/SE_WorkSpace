<?php

include('connect.php');

$sql = "SELECT * FROM v_sellers";
$result = $con->query($sql);
$v_sellers = [];

while ($row = $result->fetch_assoc()) {
    $v_sellers[] = $row;
}
echo json_encode($v_sellers);
?>
