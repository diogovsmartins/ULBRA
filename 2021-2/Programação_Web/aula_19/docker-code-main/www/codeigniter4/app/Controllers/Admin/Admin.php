<?php

namespace App\Controllers\Admin;

use CodeIgniter\Controller;

class Admin extends Controller{

    public function index(){
        $session = \Config\Services::session();
        if($session->has('user')):
            /* echo view('Admin/templates/header');
            echo view('Admin/templates/home');
            echo view('Admin/templates/footer'); */

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