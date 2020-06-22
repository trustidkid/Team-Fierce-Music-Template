<?php

    function checkDbConnection()
    {
        $servername = 'us-cdbr-east-05.cleardb.net'; //"localhost";
        $username = "b079ce3ed99eee";//"developer";
        $password = "0fafb53e";//"developer";
        $database = "heroku_aa258ad5d89dc56"; //"cvgenerator";

        $connect = new mysqli($servername,$username,$password,$database);
        //check connection status
        return $connect;
    }
    
    function email_exists($email, $con){
        $stmt = $con->prepare("SELECT * FROM users WHERE email = ?");
        $stmt->bind_param('s', $email);
        $stmt->execute();
        $stmt->store_result();
        $num_rows = $stmt->num_rows;
        $stmt->close();
    
        return $num_rows == 1 ? true : false;
    }

?>