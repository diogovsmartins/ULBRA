<?php
class SiteCOntroller{
    public function home(){
        require_once('./view/templates/header.php');
        require_once ('./view/pages/home.php');
        require_once('./view/templates/footer.php');
    }
    public function products(){
        require_once('./view/templates/header.php');
        require_once ('./view/pages/products.php');
        require_once('./view/templates/footer.php');
    }
    public function contact(){
        require_once('./view/templates/header.php');
        require_once ('./view/pages/contact.php');
        require_once('./view/templates/footer.php');
    }


}
?>