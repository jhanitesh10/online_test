<?php  
session_start(); 
  
?>  
  

<?php
require'database.php';
$userid = $_POST['userid'];
$userpass = $_POST['userpass'];
$sql="SELECT * FROM user_registration WHERE  user_userid='$userid' and  user_passid='$userpass'";

$result=mysqli_query($con,$sql);

$count=mysqli_num_rows($result);

if ($result->num_rows > 0)
   {
    
   while($row = $result->fetch_assoc()) 
        {

         if($count==1) 
           {

			$_SESSION['seas_user']=$userid;
			$_SESSION['seas_user_id']=$row['user_id'];
			$_SESSION['values']=0;
      $_SESSION['q_id'][]=0;


      header('Location:subject_type.php');

            }
        }
    }
    else 
       {
	
       echo "<center><h2>Wrong Username or Password</br> Please check your </b> Id OR Password </h2></center>";
       
       }
?>




