<?php 
  ob_start();
  session_start();
  require "../../backend_includes/db.php";
  require "../../backend_includes/functions.php"; 

  if (!userlogin())
  {
    header("Location: /cit/admin/login/login.php");
  }

  $login_user_id    = isset($_COOKIE['login_user']) ? $_COOKIE['login_user'] : $_SESSION['login_user_id'];

  if (isset($login_user_id))
  {
    header("Location: ../education/index.php");
  }
  
  ob_end_flush();

?>