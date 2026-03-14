<?php
include('connect.php');

$id = $_POST['id'];

if ($id == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'User ID is required.'
    ]);
    exit;
}

$query = "DELETE FROM v_users WHERE id = '$id'";

if (mysqli_query($con, $query)) {

    if (mysqli_affected_rows($con) > 0) {
        echo json_encode([
            'status' => 'success',
            'message' => 'User deleted successfully.'
        ]);
    } else {
        echo json_encode([
            'status' => 'error',
            'message' => 'User not found.'
        ]);
    }

} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to delete user.',
        'error' => mysqli_error($con)
    ]);
}
?>
