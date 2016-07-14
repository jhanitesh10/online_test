<?php
session_start();
    if(!isset($_SESSION['seas_user'])) 
    {
    header("location:/nitesh/modified/login.html");

    }
   else
      {
        ?>
<html>
<head>
  <title>
  Question page
  </title>
  <link rel="stylesheet" href="/nitesh/modified/style.css">
</head>
<body>
 <nav>
  <div class="container">
    <ul class="nav">
      
      <li><a href="/nitesh/modified/logout.php">Logout</a></li>
    </ul>
  </div>
</nav>
  <body>
<center><h2>Result of&nbsp&nbsp<?php echo $_SESSION['seas_user'];?></h2></center> 
 <div class="log1">

 <fieldset>
  <legend> Score page</legend>

<form action="#" method="post" id="quiz">
<?php
$correct=0;
$wrong=0;
include'database.php';
$userid=$_SESSION['seas_user_id'];
$subject_type  =$_SESSION['values'];

 $sql = "SELECT * FROM questions ql,user_response us WHERE us.user_id=$userid AND us.question_id=ql.id AND us.subject_id=$subject_type";
 

?>

<?php 
$result = $con->query($sql);
  if ($result->num_rows > 0) 
     {
     while($row = $result->fetch_assoc()) 
          {

?>
          
<?php

                   
           if($row["option_id"]==$row["answer"])
              {
              $correct++;
              }
              else
                 {
                  $wrong++;
                 }

?>


<?php
                      

             }

        }


$total_questions=$wrong+$correct;
echo "<center><h3 >Total no of questions:$total_questions</h3></center></br>";
echo "<center><h3 >Correct answer: $correct</h3></center></br>";
echo "<center><h3 >wrong answer: $wrong</h3></center></br>";
$percentage=$correct/$total_questions*100;
echo "<center><h3>percentage: $percentage</h3></center></br>";

if($percentage>=60)
  {
$p="PASS";
echo "<center><h3>PASS</h3></center></br>";
  }
  else
   {
   $p="FAIL";
   echo "<center><h3>FAIL</h3></center></br>";
   }
$subject_type  =$_SESSION['values'];
$sql1= "SELECT * FROM test_status WHERE user_id='$userid' AND subject_type='$subject_type' AND $total_questions='10' ";
$query = mysqli_query($con, $sql1);

 if(mysqli_num_rows($query) > 0)
   {
    echo "<br/><br/><span><center><h2>User id aleredy exist...!!<br/> Try  with different  :)</h2></center></span>";

   }
else{

$sql1= "INSERT INTO test_status (user_id,subject_type,total_question,correct_ans, wrong_ans,percentage,status,created_on,updated_on) values
     ('$userid','$subject_type','$total_questions', '$correct','$wrong','$percentage','$p', now(),now())";
  

if ($con->query($sql1) === TRUE) 
   {
                                } 
   else 
      {
       echo "Error: " . $sql . "<br>" . $con->error;
      }

$con->close();
     }

}
?>


</fieldset>
</div>
</body>
</html>