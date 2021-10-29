<?php
    session_start();
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

if(!isset($_GET['controller'])){
    require_once('./controllers/MainController.php');
    $Main= new MainController();
    $Main->index();

}else{
    switch ($_REQUEST['controller']) {
        case 'main':
            require_once('./controllers/MainController.php');
            $Main= new MainController();
            if(!isset($_GET['action'])){
                $Main->index();
            }else{
                switch ($_REQUEST['action']) {
                    case 'index':
                        $Main->index();
                    break;

                    case 'login':
                        $Main->login();
                    break;
                    
                    case 'logout':
                        $Main->logout();
                         
                }
            }
        break;
        
        case 'user':

        require_once('./controllers/UserController.php');
        $User= new UserController();
        if(!isset($_GET['action'])){
            $User->login();
        }else{
            switch ($_REQUEST['action']) {
                case 'validatelogin':
                    $User->validateLogin();
                break;
            }
        }
        break;

        case 'clients':
            require_once('./controllers/ClientsController.php');
            $Client= new ClientsController;

            if(!isset($_GET['action'])){
                $Client->listClients();
            }else{
                switch ($_REQUEST['action']) {
                    case 'listClients':
                        $Client->listClients();
                    break;

                    case 'createClient':
                     $Client ->createClient();
                    break;

                    case'createClientAction':
                        $Client ->createClientAction();
                    break;

                    case'updateClient':
                        $id=$_GET['id'];
                        $Client -> updateClient($id);
                    break;

                    case'updateClientAction':
                        $id=$_GET['id'];
                        $Client->updateClientAction($id);
                    break;

                    case'deleteClient':
                        $id=$_GET['id'];
                        $Client->deleteClient($id);
                    break;
                }
            }
        break;
    }
}
