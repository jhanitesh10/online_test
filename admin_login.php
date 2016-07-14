<?php  
session_start();
  
?>  
  

<?php
include 'database.php';

$adminid   = $_POST['adminid'];
$adminpass = $_POST['adminpass'];

$sql="SELECT * FROM admin_login WHERE  admin_id='".$adminid."' and  admin_pass='".$adminpass."' ";
$result=mysqli_query($con,$sql);
$count=mysqli_num_rows($result);


if ($result->num_rows > 0) 
    {
    while($row = $result->fetch_assoc())
         {
         if($count==1)
           {
         
           $_SESSION['seas_admin']=$adminid;
           header('Location:/nitesh/modified/admin_options.php');

            }
         }
    }
    else 
       {
       echo "<center><h2>Wrong Username or Password</br> Please check your </b> Id and Password </h2></center>";
       }


?>




