<?php 

    $db = mysqli_connect("localhost", "root", "", "cit");
    if ($db)
    {
        //echo "Server Connection Established";
    }
    else {
        die(mysqli_error($db));
    }

?>