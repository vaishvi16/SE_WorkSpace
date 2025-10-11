<?php

include('connect.php');

$sql = "SELECT * FROM v_users";
$result = $con->query($sql);
$v_users = [];

while ($row = $result->fetch_assoc()) {
    $v_users[] = $row;
}
echo json_encode($v_users);
?>
