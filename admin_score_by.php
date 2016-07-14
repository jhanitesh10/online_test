<?php
session_start();

    if(!isset($_SESSION['seas_admin'])) 
      {
      header("location:/nitesh/modified/admin_login.html");

      }
      else
         {
?>

<!DOCTYPE html>
<html>
<head>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="/nitesh/modified/style.css">

</head>

<title>login</title>
<body>
   <nav>
  <div class="container">
    <ul class="nav">      
      
      <li><a href="/nitesh/modified/admin_logout.php">Logout</a></li>

      </ul>
  </div>
</nav>

<center><h2>Scores by students</h2></center>
 <div class="log1">
 <form action="#" method="post">
 <fieldset>
 <legend> Select Subject</legend>

<?php
      include'database.php';
      $sql = "SELECT * FROM test_status ";
?>
      <table >
      <thead>
        <tr>
          <th>UserId</th>
          <th>TotalQuestions</th>
          <th>Correct</th>
          <th>Wrong</th>
          <th>Percentage</th>
          <th>Status</th>
          <th>UpdateTyme</th>
        </tr>
      </thead>
      <tbody>
     

<?php
$result = $con->query($sql);
if ($result->num_rows > 0)
   {
   while($row = $result->fetch_assoc()) {

            echo
            "<tr>
              <td>{$row['user_id']}</td>
              <td>{$row['total_question']}</td>
              <td>{$row['correct_ans']}</td>
              <td>{$row['wrong_ans']}</td>
              <td>{$row['percentage']}</td>
              <td>{$row['status']}</td>
              <td>{$row['created_on']}</td>
              </tr>"."\n";
    } 

  }


?>
</tbody>
</table>
<input type="hidden" value="Login">
</fieldset> 
</form>
</div>
</body>
</html>
     
<?php 


mysqli_close($con);

}

?>
    