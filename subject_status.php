<?php
session_start();
     if(!isset($_SESSION['seas_user'])) 
        {
         header("location:/nitesh/modified/login.html");
        }
        else
            {
            require 'database.php';

            if(isset($_GET['type']))
               {
	             $_SESSION['values']=$_GET['type'];
	             }


$userid=$_SESSION['seas_user_id'];
$subject_type=$_SESSION['values'];
$sql="SELECT * FROM subject_status WHERE user_id='".$userid."' AND subject_type='".$subject_type."' AND status in (0,1)";
$query = mysqli_query($con, $sql);
if(mysqli_num_rows($query) > 0)
    {
    header("location:/nitesh/modified/question.php/?type=$subject_type");
    }
     else
         {
$sql="INSERT INTO `nitesh`.`subject_status` ( `user_id`,`status`, `subject_type`, `created_on`, `updated_on`)
VALUES
('$userid' ,'0', '$subject_type', now(), now())";
      
if ($con->query($sql) === TRUE) 
         { 
         header("location:/nitesh/modified/question.php/?type=$subject_type");
         } 
         else 
             {
              echo "Error: " . $sql . "<br>" . $con->error;
              }
mysqli_close($con);

            }
        }


?>
