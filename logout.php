

<?php
session_start();
unset($_SESSION['seas_user']);
unset($_SESSION['QuestionCount']);
unset($_SESSION['wrong'] );
unset($_SESSION['correct'] );
unset($_SESSION['q_id'] );
unset($_SESSION['b'] );
session_destroy;
header("location:/nitesh/modified/login.html");
?>
