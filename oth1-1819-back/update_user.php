<?php
  // header("Access-Control-Allow-Origin: *");
  // header("Content-Type: application/json");
  session_start();
  include 'dbconnect.php';
  $postdata = file_get_contents("php://input");
  $request = json_decode($postdata);
  $user_id = $request->user_id;
  $name = $request->name;
  $mob = $request->phone;
  $nickname = $request->nickname;
  $clas = $request->class;
  $response = array();
  $_SESSION["user_id"] = $user_id;
  if($_SESSION["user_id"] == $user_id){
  if ($conn->connect_error)
      {
          die("Connection failed: " . $conn->connect_error);
          $response["completed"]=-1;
      }
   else
   {
   		$sql="UPDATE `users` SET `name`='".$name."',`nickname`='".$nickname."', `class` ='".$clas."', `mobile` =".$mob.",completed=1, cur_ques=1 WHERE `user_id` = '".$user_id."';";
       $result = mysqli_query($conn, $sql);
       if(mysqli_query($conn, $sql))
                {
                    $response["completed"]=1;
                    $response["cur_ques"]=1;
                }
                else
                {
                    echo json_encode(mysqli_error($conn));
                }
            }
    }
    $conn->close();
    echo json_encode($response);
 ?>
