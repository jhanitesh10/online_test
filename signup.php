<?php
require 'database.php';
 
if(isset($_POST['submit']))
  {                       
	$username  = $_POST['username'];
	$useremail = $_POST['useremail'];
	$userid    = $_POST['userid'];
	$userpass  = $_POST['userpass'];
	$gender    = $_POST['gender'];

$sql= "SELECT * FROM user_registration WHERE user_userid='$userid' ";
$query = mysqli_query($con, $sql);

 if(mysqli_num_rows($query) > 0)
   {
   	echo "<br/><br/><span><center><h2>User id aleredy exist...!!<br/> Try  with different  :)</h2></center></span>";

   }
    else
       {
        if($username !=''&&$useremail !=''&&$userid !=''&&$userpass !=''&&$gender !='')
          {

 	      $sql = "INSERT INTO user_registration(user_name, user_email, user_userid, user_passid, user_country,created_on,updated_on) 
          values 
          ('$username', '$useremail', '$userid', '$userpass','$gender',now(),now())";

            
            if($con->query($sql) === TRUE) 
               {
               header('Location:login.html');
                }                
                else 
                   {

                   echo "Error: " . $sql . "<br>" . $con->error;
                    }
            



            }
        


        }



}




$con->close();




?>


