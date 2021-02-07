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
