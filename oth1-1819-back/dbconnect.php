<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json", false);
header("Access-Control-Allow-Credentials:true");
header("Access-Control-Allow-Headers: Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers", false);
$servername='localhost:3306';
$username='root';
$password='';
$dbname='oth';
$conn = mysqli_connect($servername, $username, $password, $dbname);

?>
