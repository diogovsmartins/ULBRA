<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\ClientModel;

class Client extends Controller{
    
    public function listClients(){
        $clientModel = new ClientModel();

        $data=[
            'title' => 'Meu titulo da página',
            'clients' => $clientModel -> getClients()
        ];
    

        echo view('templates/header');
        echo view('Client/listClients', $data);
        echo view('templates/footer');
    }

    public function detailClient($idClient){
        $clientModel = new ClientModel();

        $data=[
        'title' => 'Meu titulo da página',
        'client' => $clientModel -> getClients($idClient)
        ];

        echo view('templates/header');
        echo view('Client/detailClient', $data);
        echo view('templates/footer');
    }
}