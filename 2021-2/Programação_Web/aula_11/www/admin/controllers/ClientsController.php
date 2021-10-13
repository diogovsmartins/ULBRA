<?php 
class ClientsController{

    function __construct(){
        if(!isset($_SESSION['login'])){
            header("Location: index.php?controllers=main&action=login");
        }

        require_once('./models/ClientsModel.php');
    }

    public function listClients(){
        $ClientModel= new ClientsModel();
        $ClientModel->listClients();
        $result= $ClientModel-> getConsult();

        $arrayClients= array();

        while ($line=$result->fetch_assoc()) {
            array_push($arrayClients,$line);
        }
        require_once('./views/templates/header.php');
        require_once('./views/clients/ListClients.php');
        require_once('./views/templates/footer.php');
    }


    public function createClient(){
        require_once('./views/templates/header.php');
        require_once('./views/clients/CreateClient.php');
        require_once('./views/templates/footer.php');
    }

    public function createClientAction(){
        require_once('./models/ClientsModel.php');
        $ClientModel= new ClientsModel();

        $arrayClient['name']=$_POST['name'];
        $arrayClient['phone']=$_POST['phone'];
        $arrayClient['email']=$_POST['email'];
        $arrayClient['address']=$_POST['address'];
        
        $ClientModel -> createClient($arrayClient);

        header('Location: index.php?controller=clients&action=listClients');
    }

    public function updateClient($id){
        require_once('./models/ClientsModel.php');
        $ClientModel= new ClientsModel();
        $result = $ClientModel -> listClient($id);
        if($arrayClient= $result -> fetch_assoc()){
            require_once('./views/templates/header.php');
            require_once('./views/clients/updateClient.php');
            require_once('./views/templates/footer.php');
        }

        
    }

    public function updateClientAction($id){
        require_once('./models/ClientsModel.php');
        $ClientModel= new ClientsModel();

        $arrayClient['idClient']=$id;
        $arrayClient['name']=$_POST['name'];
        $arrayClient['phone']=$_POST['phone'];
        $arrayClient['email']=$_POST['email'];
        $arrayClient['address']=$_POST['address'];
        
        $ClientModel ->updateClient($arrayClient);

        header('Location: index.php?controller=clients&action=listClients');
    }

    public function deleteClient($id){
        require_once('./models/ClientsModel.php');
        $ClientModel= new ClientsModel();   
        $ClientModel->deleteClient($id);

        header('Location: index.php?controller=clients&action=listClients');
    }
}