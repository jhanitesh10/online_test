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
      <li><a href="logout.php">Logout</a></li>
    </ul>
  </div>
</nav>

<body>
<center><h2>Result of&nbsp&nbsp<?php echo $_SESSION['seas_user'];?></h2></center> 
<div class="log1">
<fieldset>
  <legend>  User Results</legend>
<form action="user_response.php" method="post" id="quiz">
<?php
require'database.php';
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

<h3><?php echo $row["question"]; ?></h3>
<input type="hidden" id="question_id" name="question_id" value="<?php echo $row["id"]; ?>" />



<div>
    <input id="1" type="hidden" name="answer" value="<?php echo $row["option_id"]; ?> " />
    option: <?php echo $row["option_id"]; ?>   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp    correct:<?php echo $row["answer"]; ?>  

</div>


<?php

            }
        }
  }
?>
<center><a href="/nitesh/modified/score.php"/>result</center>
</fieldset>
</div>
</body>
</html>