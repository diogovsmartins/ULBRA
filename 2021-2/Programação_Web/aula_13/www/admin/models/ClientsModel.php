<?php

Class ClientsModel{
    var $result;
    var $conn;

    function __construct(){
        require_once('bd/ConnectClass.php');
        $Oconn=new ConnectClass();
        $Oconn->openConnect();
        $this->conn= $Oconn-> getConn();
    }

    public function listClient($id){
        $sql= "
        SELECT * FROM 
            clients
        WHERE
            idClient={$id};
        ";
        return $this->conn-> query($sql);
    }

    public function listClients(){
        $sql= 'SELECT * FROM clients';
        return  $this->conn-> query($sql);

    }

    public function createClient($arrayClient){
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
        $this->conn-> query($sql);
        return $this->conn-> insert_id;
    }

    public function updateClient($arrayClient){
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
        return $this->conn-> query($sql);
    }

    public function deleteClient($id){
        $sql= "
        DELETE FROM 
            clients
        WHERE
            idClient={$id};
        ";
        return $this->conn-> query($sql);
    }
}