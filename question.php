<?php
session_start();
  if(!isset($_SESSION['seas_user'])) 
     {
     header("location:/nitesh/modified/login.html");
     }
     else
         {
         if(isset($_SESSION['QuestionCount'])  && $_SESSION['QuestionCount']==10)
            {
            header("location:/nitesh/modified/subject_status_update.php");

            }

?>

<html>
<head>
	<title>
	Question page
	</title>

<script LANGUAGE="JavaScript">
function ValidateForm(form)
       {
ErrorText= "";
            if ( ( form.answer[0].checked == false ) && ( form.answer[1].checked == false ) && ( form.answer[2].checked == false )&& ( form.answer[3].checked == false )) 
                {
                alert ( "Please choose Option" ); 
                return false;
                 }
if (ErrorText= "") 
	 { 
	 form.submit()
	 }
        }

</script>
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

<center><h2>Welcome&nbsp&nbsp<?=$_SESSION['seas_user'];?></h2></center>
 <div class="log1">
 <fieldset>
 <legend> Question page</legend> 
 <form action="/nitesh/modified/user_response.php" method="post" id="quiz">
 <?php

      if(!isset($_SESSION['QuestionCount'])||$_SESSION['QuestionCount']==null)
          {
          $_SESSION['QuestionCount']=0;
          }
          
          if(isset($_GET['type']))
            {
				    $_SESSION['values']=$_GET['type'];
				    $subject_type=$_SESSION['values'];
            }
include'database.php';
$userid=$_SESSION['seas_user_id'];
$sql="SELECT * FROM subject_status WHERE user_id='".$userid."' AND subject_type='".$subject_type."' AND status='1' ";
$query = mysqli_query($con,$sql );
          if(mysqli_num_rows($query) > 0)
            {
            echo "<br/><br/><span><center><h2>User  aleredy made test...!!<br/>  If u want give another subject test :)</h2></center></span>";
            }
              else
                  {
                   $qid_arr = implode(',',$_SESSION['q_id']);
                               
                    $sql = "SELECT id,img_url, question, answer1, answer2, answer3, answer4, answer  FROM questions where q_type='$subject_type' AND id NOT IN ($qid_arr) ORDER BY RAND() LIMIT 1";

?>

<?php
$result = $con->query($sql);
     if ($result->num_rows > 0) 
        {
        while($row = $result->fetch_assoc()) 
        {
?>


<?php
array_push($_SESSION['q_id'], $row["id"]);
?>
  

<h3><?php echo $row["question"]; ?></h3></br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 

<?php
if($row["img_url"]!='')
   {
?>

<img src="/nitesh/final_project_of_quix/images/<?php echo $row["img_url"]; ?>" width="250px" height="150px"/>
<?php
   }
?>

<input type="hidden" id="question_id" name="question_id" value="<?php echo $row["id"]; ?>" />
			
      <div>
				<input id="1" type="radio" name="answer" value="1" />
				<label for="1">1)&nbsp;
			        	<?php echo $row["answer1"]; ?>  
				</label>
			</div>

			
      <div>
				<input id="2" type="radio" name="answer"  value="2" />
				<label for="2">2)&nbsp;
			        	<?php echo $row["answer2"]; ?>  
				</label>
			</div>
			
      
      <div>
				<input id="3" type="radio" name="answer" value="3" />
				<label for="3">3)&nbsp;
			        	<?php echo $row["answer3"]; ?>  
				</label>
			</div>

				
        <div>
					<input id="4" type="radio" name="answer" value="4" />
					<label for="4">4)&nbsp;
				        	<?php echo $row["answer4"]; ?>  
					</label>
				</div>




<?php
     }
  }
  
?>                  
<input type="submit" class="hvr-grow"  name="submit" value="Next" onClick="return ValidateForm(this.form)" />
                                 
</form>
</fieldset>
</div>
</body>
</html>
<?php

echo $_SESSION['QuestionCount'];
                  }
            }
?>
