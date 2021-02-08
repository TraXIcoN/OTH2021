<?php
session_start();
include 'dbconnect.php';
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$user_id = $request->user_id;
$cur_trust = $request->trust;
$response = array();
$cur_ques;
$prev_check;
//$trust = 1;

function console_log($output, $with_script_tags = true)
{
    $js_code = 'console.log(' . json_encode($output, JSON_HEX_TAG) .
        ');';
    if ($with_script_tags) {
        $js_code = '<script>' . $js_code . '</script>';
    }
    echo $js_code;
}


if ($_SESSION["user_id"] == $user_id) {

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } else {
        $sql = "SELECT * FROM `users` WHERE `user_id` = '" . $user_id . "';";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $cur_ques = $row["cur_ques"];
                //$trust = $row["trust"];
                if (1 < $cur_ques  && $cur_ques <5) {
                    $cur_ques = 1;
                }else if (6 <= $cur_ques && $cur_ques < 9 ) {
                    $cur_ques = 6;
                }else if (9 <= $cur_ques && $cur_ques <= 12) {
                    $cur_ques = 9;
                }else {
                    $cur_ques = 1;
                }
                $update = "UPDATE `users` SET `cur_ques` = "$cur_ques" WHERE `user_id` = '".$user_id."';";
                mysqli_query($conn,$update);
            }
        } else {
            $response["message"] = "You are not authorized bro!";
        }
    }
} else {
    $response["message"] = "fuck off dude!";
}
$conn->close();
echo json_encode($response);
