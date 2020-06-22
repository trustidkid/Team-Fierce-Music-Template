<?php

    function checkDbConnection()
    {
        $servername = 'us-cdbr-east-05.cleardb.net'; //"localhost";
        $username = "ba06eb09f32243";//"developer";
        $password = "b5f12f4d";//"developer";
        $database = "heroku_7d3cd868bb63234"; //"cvgenerator";

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