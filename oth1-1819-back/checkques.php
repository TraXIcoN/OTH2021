<?php
  include 'dbconnect.php';
  $postdata = file_get_contents("php://input");
  $request = json_decode($postdata);
  $user_id = $request->user_id;
  // $ques_id = $request->ques_id;
  $ans = $request->ans;
  $response = array();

 if ($conn->connect_error){
        die("Connection failed: " . $conn->connect_error);
    }
  else{
  		$sql="SELECT * FROM `users` WHERE `user_id` = '".$user_id."';";
      $result = mysqli_query($conn, $sql);
      
  		if(mysqli_num_rows($result) > 0){
          while($row = mysqli_fetch_assoc($result)){
            $curr=$row["cur_ques"];
            if($curr==77){
              $q=$row["cur_ques"]+$row["attempt"];
              $ques_sql = "SELECT * FROM `questions` WHERE `id` = '".$q."'";
            }
            else{
            $ques_sql = "SELECT * FROM `questions` WHERE `id` = '".$row["cur_ques"]."';";}
            if($curr==80){
              $attempt=$row["attempt"];
              $attempt=$attempt+1;
              $update = "UPDATE `users` SET `attempt` = ".$attempt."  WHERE `user_id` = '".$user_id."';";
            }
            $ques_ans = mysqli_query($conn,$ques_sql);
            if(mysqli_num_rows($ques_ans) > 0){
              while ($row1 = mysqli_fetch_assoc($ques_ans)) {
                $correct = $row1["ans"];
                if($correct == $ans){
                  
                  if($row1['type'] != 2 && $row1['type'] != 3 && $row1['type'] != 4){
                    if($curr==78){
                      $pts = $row["points"]-5;
                    }
                    else{
                    $pts = $row["points"]+10;}
                    $update = "UPDATE `users` SET `cur_ques` = ".$row1["next"].", `points` = ".$pts."  WHERE `user_id` = '".$user_id."';";
                    mysqli_query($conn,$update);
                  }
                  else{
                    $update = "UPDATE `users` SET `cur_ques` = ".$row1["next"]." WHERE `user_id` = '".$user_id."';";
                    mysqli_query($conn,$update);
                  }
                  $response["correct"]="true";
                  $respone["curr_ques"] = $curr;
                }
                else {
                  $a=3;
                  $b=81;
                  if($curr==80&&$attempt==1){
                    $update = "UPDATE `users` SET `cur_ques` = '".$a."'  WHERE `user_id` = '".$user_id."';";

                  }
                  if($curr==80&&$attempt==2){
                    $update = "UPDATE `users` SET `cur_ques` = '".$b."'  WHERE `user_id` = '".$user_id."';";

                  }
                  $response["correct"]="false";
                }
              }
            }
          }
      }
      else{
      	$response["message"]="You are not authorized bro!";
      }

    echo json_encode($response);
  }
  $conn->close();

 ?>
