<?php
session_start();
    if(!isset($_SESSION['seas_user']))  
      {
      header("location:/nitesh/modified/login.html");

      }
       else
       {
include'database.php';
$userid=$_SESSION['seas_user_id'];
$subject_type=$_SESSION['values'];
$sql="UPDATE `nitesh`.`subject_status` 
	 SET `status` = '1' , `created_on` = now() ,`updated_on` = now()
	 WHERE
	`user_id` = '$userid' AND 
	`status` = '0' AND 
	`subject_type` = '$subject_type'";

if ($con->query($sql) === TRUE) 
    {
    header("location:/nitesh/modified/result.php");
    }                            
     else 
      {
      echo "Error: " . $sql . "<br>" . $con->error;
      }





mysqli_close($con);

     }
?>
