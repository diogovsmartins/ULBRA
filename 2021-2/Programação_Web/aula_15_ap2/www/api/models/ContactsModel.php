<?php 

    class ContactsModel{
        var $conn;
        var $result;

        function __construct(){
            require_once('database/ConnectClass.php');
            $Oconn=new ConnectClass();
            $Oconn->openConnect();
            $this->conn= $Oconn-> getConn();
        }
        public function getConsult(){
            return $this -> result;
        }

        public function insertContact($arrayContact){
            $sql="
                INSERT INTO contacts
                (name, email, message, status, description)
                VALUES(
                    '{$arrayContact['name']}',
                    '{$arrayContact['email']}',
                    '{$arrayContact['message']}'
                    '{$arrayContact['status']}',
                    '{$arrayContact['description']}'
                )
            ";
            return $this->conn-> query($sql);
            //arrumar aq o retorno 
        }

        public function listContacts(){
            $sql= 'SELECT * FROM contacts';
        return $this->conn-> query($sql);
        }
        
        public function listContact($idContact){
            $sql= "
            SELECT * FROM 
                contacts
            WHERE
                idContact={$idContact};
            ";
            return $this->conn-> query($sql);
        }
    }

?>