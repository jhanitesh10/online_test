<?php


  session_start();


?>

<?php 

   if($_FILES['image']['name'] != ''||$_FILES['image']['name'] == '')
     {
           
      $errors= array();
      $file_name = $_FILES['image']['name'];
      $file_size = $_FILES['image']['size'];
      $file_tmp = $_FILES['image']['tmp_name'];
      $file_type = $_FILES['image']['type'];
      $a=explode('.',$_FILES['image']['name']);
      $file_ext=strtolower(end($a));
      $expensions= array("jpeg","jpg","png");
      
          if(in_array($file_ext,$expensions)=== false)
             {
             $errors[]="extension not allowed, please choose a JPEG or PNG file.";
             }
      
          if($file_size > 2097152) 
              {
              $errors[]='File size must be excately 2 MB';
              }
      
          if(empty($errors)==true) 
              {
              move_uploaded_file($file_tmp,dirname(__DIR__)."/final_project_of_quix/images/".$file_name);
                    
               $fileupload = $file_name;
                     
               } 
            else
               {
                $fileupload = '';
         
               }
  
include'database.php';
$q_type    = $_POST['type'];
$question  = $_POST['question'];
$q_option1 = $_POST['option1'];
$q_option2 = $_POST['option2'];
$q_option3 = $_POST['option3'];
$q_option4 = $_POST['option4'];
$q_answer  = $_POST['correct'];

if($q_type !=''&&$question !=''&&$q_option1 !=''&&$q_option2 !=''&&$q_option3 !=''&&$q_option4 !=''&&$q_answer !='')
    {
    $sql= "INSERT INTO questions (q_type,img_url,question, answer1,answer2,answer3,answer4, answer,created_on,updated_on) 
          values
          ('$q_type','$fileupload', '$question', '$q_option1','$q_option2','$q_option3','$q_option4','$q_answer', now(),now())";
    

if ($con->query($sql) === TRUE)
   {
   echo "<center><h2>Data inserted Successfully</h2></center>";
   } 
   else 
    {
    echo "Error: " . $sql . "<br>" . $con->error;
    }


    }





$con->close();
  

  }


?>


