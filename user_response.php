<?php
session_start();
if(!isset($_SESSION['seas_user'])) 
  {
  header("location:/nitesh/modified/login.html");
  }
   else
      {

include'database.php';
if(isset($_POST['submit']))

     {
     $_SESSION['QuestionCount'] = $_SESSION['QuestionCount']+1;

     }    
 
$userid=$_SESSION['seas_user_id'];///////////////////
$q_id=$_POST['question_id'];//////////
$answer=$_POST['answer'];///////////////
$subject_type=$_SESSION['values'];

$sql= "INSERT INTO user_response(subject_id,user_id, question_id, option_id,created_on,updated_on) 
	values
	 ($subject_type,$userid, $q_id, $answer, now(),now())";
	// header("location:question.php");

if ($con->query($sql) === TRUE) {
   echo "New record created successfully";
								} 
else 
{

    echo "Error: " . $sql . "<br>" . $con->error;
}


header("location:/nitesh/modified/question.php/?type=$subject_type");


$conn->close();
}
?>
