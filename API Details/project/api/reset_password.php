<?php

include('connect.php');

$mail = $_POST['mail'];
$new_password = $_POST['password'];

if ($mail == "" || $new_password == "") {
    http_response_code(400);
    echo "Email and Password are required";
    exit;
}

$hashedPassword = password_hash($new_password, PASSWORD_DEFAULT);

$query = "UPDATE v_users SET password = '$hashedPassword' WHERE mail = '$mail'";

if (mysqli_query($con, $query)) {

    if (mysqli_affected_rows($con) > 0) {
        http_response_code(200);
        echo "Password Updated Successfully";
    } else {
        http_response_code(400);
        echo "Email Not Found";
    }

} else {
    http_response_code(400);
    echo "Failed to Update Password";
}

?>
