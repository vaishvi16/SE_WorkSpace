<?php

include('connect.php');

$mail = $_POST['mail'];

if ($mail == "") {
    http_response_code(400);
    echo "Email is required";
    exit;
}

$query = "SELECT * FROM v_users WHERE mail = '$mail'";
$result = mysqli_query($con, $query);

if (mysqli_num_rows($result) > 0) {
    http_response_code(200);
    echo "Email Found";
} else {
    http_response_code(400);
    echo "Email Not Found";
}
?>
