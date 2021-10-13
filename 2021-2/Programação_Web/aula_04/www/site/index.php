<?php

 require_once('../site/view/header.php');
 if(!isset($_GET['module'])){
    require_once ('../site/view/home.php');
 }

 else{
    switch (($_REQUEST['module'])) {
        case 'home':
            require_once ('../site/view/home.php');
            break;

        case 'products':
        require_once('../site/view/products.php');
        break;
        
        case 'contact':
        require_once('../site/view/contact.php');
        break;
    }
 }
 require_once('../site/view/footer.php');

?>