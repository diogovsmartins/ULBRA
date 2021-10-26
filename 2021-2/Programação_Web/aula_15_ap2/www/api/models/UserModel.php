<?php

class  UserModel{
    var $conn;
    public function __construct(){
        require_once('database/ConnectClass.php');
        $Oconn= new ConnectClass();
        $Oconn->openConnect();
        $this->conn=$Oconn-> getConn();
    }

    function getUser($user){
        $sql="
            SELECT * FROM users
            WHERE user='{$user}'
        ";
       return $this->conn->query($sql);
    }
}

?>
