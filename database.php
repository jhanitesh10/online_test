<?php
		define('DB_HOST', 'localhost');
		define('DB_NAME', 'nitesh');
		define('DB_USER','Nitesh');
		define('DB_PASSWORD','12345');
		$con=mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD) or die("Failed to connect to MySQL: " . mysqli_connect_error());
		$db=mysqli_select_db($con, DB_NAME) or die("Failed to connect to MySQL: " . mysqli_connect_error());
?>