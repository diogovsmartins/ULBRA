<?php
class ContactController{
    var $ContactModel;

    function __construct(){
        require_once('models/ContactsModel.php');
        $this->ContactModel= new ContactsModel();
    }
    //insere um contato, ainda precisa arrumar alguma coisa na model 
    public function insertContact(){
        $contact=json_decode(file_get_contents('php://input'));
        $arrayContact['name']=$contact->name;
        $arrayContact['email']=$contact->email;
        $arrayContact['message']=$contact->message;
        $arrayContact['status']=$contact->status;
        $arrayContact['description']=$contact->description;

        $this->ContactModel->insertContact($arrayContact);
    }
    
    //lista todos os contatos
    public function listContacts(){
        $result= $this->ContactModel->listContacts();

        $arrayContacts= array();
        while ($line=$result->fetch_assoc()) {
            array_push($arrayContacts,$line);
        }
        header('Content-Type:application/json');
        echo json_encode($arrayContacts);
    }
    //lista um contato
    public function listContact($idContact){
        $result= $this->ContactModel->listContact($idContact);

        $arrayContacts= array();
        while ($line=$result->fetch_assoc()) {
            array_push($arrayContacts,$line);
        }
        header('Content-Type:application/json');
        echo json_encode($arrayContacts);
    }
}


?>