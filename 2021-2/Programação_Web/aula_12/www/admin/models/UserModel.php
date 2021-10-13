<?php

class  UserModel{
    var $conn;
    public function __construct(){
        require_once('./bd/ConnectClass.php');
        $Oconn= new ConnectClass();
        $Oconn->openConnect();
        $this->conn=$Oconn-> getConn();
    }

    function getUser($login){
        require_once('./bd/ConnectClass.php');
        $sql="
            SELECT * FROM users
            WHERE user='{$login}'
        ";
       return $this->conn->query($sql);
    }
}

?>
