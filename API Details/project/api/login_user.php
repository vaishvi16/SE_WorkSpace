<?php
include('connect.php');

$mail = $_POST['mail'] ?? '';
$password = $_POST['password'] ?? '';
$auth_provider = $_POST['auth_provider'] ?? 'manual';
$name = $_POST['name'] ?? '';

if ($mail == "") {
    echo json_encode([
        'status' => 'error',
        'message' => 'Email is required.'
    ]);
    exit;
}

// Check if user exists
$query = "SELECT * FROM v_users WHERE mail = '$mail'";
$result = mysqli_query($con, $query);

if (mysqli_num_rows($result) > 0) {
    $user = mysqli_fetch_assoc($result);

    if ($auth_provider == 'manual') {
        if (password_verify($password, $user['password'])) {
            echo json_encode([
                'status' => 'success',
                'message' => 'Login successful.',
                'user' => $user
            ]);
        } else {
            echo json_encode([
                'status' => 'error',
                'message' => 'Incorrect email or password!'
            ]);
        }
    } else {
        // Social login, return user directly
        echo json_encode([
            'status' => 'success',
            'message' => 'Login successful (social).',
            'user' => $user
        ]);
    }

} else {
    // User not found
    if ($auth_provider != 'manual') {
        // Create new social user
        if ($name == '') {
            $name = 'User'; // fallback
        }
        $hashedPassword = password_hash(uniqid(), PASSWORD_DEFAULT);
        $insert = "INSERT INTO v_users (name, mail, password, auth_provider) 
                   VALUES ('$name', '$mail', '$hashedPassword', '$auth_provider')";
        $res = mysqli_query($con, $insert);

        if ($res) {
            $user_id = mysqli_insert_id($con);
            $user = [
                'id' => $user_id,
                'name' => $name,
                'mail' => $mail,
                'auth_provider' => $auth_provider
            ];
            echo json_encode([
                'status' => 'success',
                'message' => 'Social login successful, user created.',
                'user' => $user
            ]);
        } else {
            echo json_encode([
                'status' => 'error',
                'message' => 'Failed to create social user.',
                'error' => mysqli_error($con)
            ]);
        }
    } else {
        echo json_encode([
            'status' => 'error',
            'message' => 'Invalid email or password.'
        ]);
    }
}
?>