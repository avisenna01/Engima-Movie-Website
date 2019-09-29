<?php
function OpenCon()
 {

 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "";
 $conn = new MySQLi($dbhost, $dbuser, $dbpass) or die("Connect failed: %s\n". $conn -> error);
 
 return $conn;
 }
 
function CloseCon($conn)
 {
 $conn -> close();
 }
   
?>
