<?php
session_start();

if(!isset($_SESSION['seas_user'])) 
   {
   header("location:/nitesh/modified/login.html");
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
        <li><a href="/nitesh/modified/login.html">Logout</a></li>
      </ul>
    </div>
   </nav>
<center><h2> </h2></center>
<div class="log1">
<form action="#" method="post">
<fieldset>
<legend> Select Subject</legend>
<div class="contact">
<center>
      	<a href="/nitesh/modified/subject_status.php/?type=1">Computer</a>
      	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      	<a href="/nitesh/modified/subject_status.php/?type=2">Network</a>
      	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      	<a href="/nitesh/modified/subject_status.php/?type=3">Business</a>
</center>
<input type="hidden" value="Login">
<div>    
</fieldset> 
</form>
</div>

<?php

        }

?>