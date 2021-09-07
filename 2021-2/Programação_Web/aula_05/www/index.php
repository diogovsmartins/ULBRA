<?php
 if(!isset($_GET['controller'])){
    require_once ('controller/SiteController.php');
    $site= new SiteController;
    $site->home();
 }

    else{
        switch (($_REQUEST['controller'])) {
        case 'site':
            require_once ('./controller/SiteController.php');
            $site=new SiteCOntroller();
            if(!isset($_GET['action'])){
                $site->home();  
            }
            else{
                switch ($_REQUEST['action']) {
                    case 'home':
                        $site->home();
                    break;
                    case 'products':
                        $site->products();
                    break;
                    case 'contact':
                        $site->contact();
                    break;
                }
            
            } 
            break;
            case 'client':
            require_once ('./controller/ClientController.php');
            $client=new ClientController();
            if(!isset($_GET['action'])){
                
            }else{
                switch ($_REQUEST['action']) {
                    case 'register':
                        $client->register();
                    break;
                    
                    case 'registerView':
                        $client->registerView();
                    break;

                    case 'listClients':
                        $client->listClients();
                    break;
                }
            }
            break;
        }
    }
?>