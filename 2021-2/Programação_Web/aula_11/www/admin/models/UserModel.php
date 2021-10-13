<?php

class  UserModel{
    function getUser($login){
        require_once('./bd/ConnectClass.php');
        $Oconn= new ConnectClass();
        $Oconn->openConnect();
        $conn=$Oconn-> getConn();

        $sql="
            SELECT * FROM users
            WHERE user='{$login}'
        ";
       
       return $conn->query($sql);
    }
}

?>
