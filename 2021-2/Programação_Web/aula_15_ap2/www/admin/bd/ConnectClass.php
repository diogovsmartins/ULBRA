<?php

class ConnectClass{
    var $conn;
    public function openConnect(){
        $serverName='db';
        $userName='root';
        $password='test';
        $dbName='pw_exemple';

        $this->conn= new mysqli($serverName, $userName, $password, $dbName);
       
    }

    public function getConn(){
        return $this -> conn;
    }
}