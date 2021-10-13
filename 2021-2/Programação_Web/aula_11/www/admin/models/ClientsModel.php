<?php

Class ClientsModel{
    var $result;

    function __construct(){
        require_once('./bd/ConnectClass.php');
    }
    public function listClient($id){
        $Oconn=new ConnectClass();
        $Oconn->openConnect();
        $conn= $Oconn-> getConn();
        $sql= "
        SELECT * FROM 
            clients
        WHERE
            idClient={$id};
        ";
        return $this ->result = $conn-> query($sql);

    }

    public function listClients(){
        $Oconn=new ConnectClass();
        $Oconn->openConnect();
        $conn= $Oconn-> getConn();
        $sql= 'SELECT * FROM clients';
        $this ->result = $conn-> query($sql);

    }

    public function getConsult(){
        return $this -> result;
    }

    public function createClient($arrayClient){
        require_once('./bd/ConnectClass.php');
        $Oconn=new ConnectClass();
        $Oconn->openConnect();
        $conn= $Oconn-> getConn();

        $sql="
            INSERT INTO clients
                (name, email, phone, address)
            VALUES(
                '{$arrayClient['name']}',
                '{$arrayClient['email']}',
                '{$arrayClient['phone']}',
                '{$arrayClient['address']}'
            )
        ";
        
        $this ->result = $conn-> query($sql);

    }

    public function updateClient($arrayClient){
        require_once('./bd/ConnectClass.php');
        $Oconn=new ConnectClass();
        $Oconn->openConnect();
        $conn= $Oconn-> getConn();

        $sql="
            UPDATE clients
               set
                    name='{$arrayClient['name']}',
                    phone='{$arrayClient['phone']}',
                    email='{$arrayClient['email']}',
                    address='{$arrayClient['address']}'
                where
                    idClient={$arrayClient['idClient']}
        ";
        
        $this ->result = $conn-> query($sql);

    }

    public function deleteClient($id){
        $Oconn=new ConnectClass();
        $Oconn->openConnect();
        $conn= $Oconn-> getConn();
        $sql= "
        DELETE FROM 
            clients
        WHERE
            idClient={$id};
        ";
        return $this ->result = $conn-> query($sql);
    }
}