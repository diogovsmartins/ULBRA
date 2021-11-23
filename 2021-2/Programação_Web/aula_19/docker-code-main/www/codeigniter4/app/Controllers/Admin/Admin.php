<?php

namespace App\Controllers\Admin;

use CodeIgniter\Controller;

class Admin extends Controller{

    public function index(){
        $session = \Config\Services::session();
        if($session->has('user')):
            echo view('admin/templates/header.php');
            echo view('admin/templates/home.php');
            echo view('admin/templates/footer.php'); 

        else: 
            return redirect()->to(base_url('admin/login'));

        endif;

    }

    public function login(){

        echo view('admin/login.php');
        
    } 


    public function logout(){
        $session = \Config\Services::session();
        $session->destroy();
        return redirect()->to(base_url('admin/login'));
    }
}