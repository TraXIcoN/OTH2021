<?php
include 'dbconnect.php';
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$user_id = $request->user_id;
// $ques_id = $request->ques_id;

$response = array();
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    $sql = "SELECT * FROM `users` WHERE `user_id` = '" . $user_id . "';";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $curr = $row["cur_ques"];
            $pts = $row["points"] - 5;
            if ($curr < 5) {
                $update = "UPDATE `users` SET `cur_ques` = " . 2 . ", `points` = " . $pts . "  WHERE `user_id` = '" . $user_id . "';";
            } else if ($curr > 5 && $curr < 9) {
                $update = "UPDATE `users` SET `cur_ques` = " . 5 . ", `points` = " . $pts . "  WHERE `user_id` = '" . $user_id . "';";
            }

            mysqli_query($conn, $update);
            $response["message"] = "eureka bitch";
        }
    } else {
        $response["message"] = "womp womp womp";
    }
    echo json_encode($response);
}
$conn->close();
