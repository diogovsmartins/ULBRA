<?php

namespace App\Controllers\Admin;

use CodeIgniter\Controller;
use App\Models\UserModel;

class User extends Controller{

    public function validateLogin(){
        $userName = $this -> request -> getVar('userName');
        $password= $this -> request -> getVar('password');

        $userModel= new UserModel();

        if($user = $userModel -> getUser($userName)):
            if($user['password']== $userPassword):
                $session = \Config\Services::session();
                $session->set('user', $user);

                //senha correta e usuario correto
                return redirect()->to(base_url('admin'));
            else:
                //usuário existe e senha incorreta
                return redirect()->to(base_url('admin'));
            endif;
        else:
            //usuário não existe
            return redirect()->to(base_url('admin'));
        endif;
    }
}