<?php 
    $request_method=$_SERVER['REQUEST_METHOD'];
    $local=$_SERVER['SCRIPT_NAME'];
    $uri=$_SERVER['PHP_SELF'];
    $rout=str_replace($local, '',$uri);
    $uriSegments=explode('/',$rout);

    //index.php/client/123
    //0->em branco(não vamos utilizar)
    //1->recurso(ex:client)
    //2-> id(ex:1,2,3)

    if(isset($uriSegments[1])){
        switch ($uriSegments[1]) {
            case 'client':
                require_once('controllers/UserController.php');
                $User =new UserController;
                if($User-> isAdmin()){
                    require_once('controllers/ClientsController.php');
                $Client= new ClientsController();
                    switch ($request_method) {
                        case 'GET':
                            if(!isset($uriSegments[2])){
                                $Client->listClients();
                            }else{
                                $Client-> listClient($uriSegments[2]);
                            }
                        break;
                        
                        case 'POST':
                            $Client->createClient();
                        break;

                        case 'PUT':
                            $Client->updateClient($uriSegments[2]);
                        break;

                        case 'DELETE':
                            $Client->deleteClient($uriSegments[2]);
                        break;
                    }
                }
            break;

            case 'user':
                require_once('controllers/UserController.php');
                $User = new UserController();
                switch ($request_method) {
                    case 'GET':
                        $User -> login();
                    break;                    
                }
            break;

            case 'contact':
                require_once('controllers/ContactController.php');
                $Contact = new ContactController();

                require_once('controllers/UserController.php');
                $User =new UserController;
                switch ($request_method) {
                    case 'POST':
                        $Contact->insertContact();
                    break;
                    case 'GET':
                        if($User-> isAdmin()){
                        if(!isset($uriSegments[2])){
                            $Contact->listContacts();
                        }else{
                            $Contact->listContact($uriSegments[2]);
                        }
                    }
                    break;
                }
            break;
        }

    }
?>