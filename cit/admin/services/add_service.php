<?php 
    ob_start();
    session_start();
    require "../backend_includes/db.php";
    require "../backend_includes/functions.php"; 
    
    if (!userlogin())
    {
        header("Location: ../login/login.php");
    }

    if (isset($_POST['addService']))
    {
        $service_title  = mysqli_real_escape_string($db, $_POST['service_title']);
        $service_desc   = mysqli_real_escape_string($db, $_POST['service_desc']);
        $service_icon   = mysqli_real_escape_string($db, $_POST['service_icon']);

        $errors = array();
        $field_names = array(
            "service_title"  => "This field is requried!",
            "service_desc"   => "This field is requried!",
            "service_icon"   => "This field is requried!",
        );

        foreach ($field_names as $field_name => $message)
        {
            if (empty($_POST[$field_name]))
            {
               $errors[$field_name] = $message;
            }
        }

        if (count($errors) == 0)
        {
            date_default_timezone_set("Asia/Dhaka");
            $created_at     = date("Y-m-d h:i:s a", time());
            $insert_service = "INSERT INTO services (service_title, service_desc, service_icon, created_at) VALUES ('$service_title', '$service_desc', '$service_icon', '$created_at')";
            $insert_service_query = mysqli_query($db, $insert_service);

            if ($insert_service_query)
            {
                $_SESSION['success'] = "Data insert successful.";
                header("Location: service_add.php");
            }
            else {
                die(mysqli_error($db));
            }
        }
        else {
            $_SESSION['err_msg']         = $errors;
            $_SESSION['service_title']   = $_POST['service_title'];
            $_SESSION['service_desc']    = $_POST['service_desc'];
            $_SESSION['service_icon']    = $_POST['service_icon'];

            header("Location: service_add.php");
        }
    }
    else { ?>
        <script>
            window.history.back();
            location.reload(); 
        </script>
    <?php }
    ob_end_flush();

?>