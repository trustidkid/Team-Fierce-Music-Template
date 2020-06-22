<?php 

    session_start();
    
    require_once('alert.php');

    function checkinput($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
      }

?>