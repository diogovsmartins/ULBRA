<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\ClientModel;

class Client extends Controller{
    
    public function listClients(){
        $clientModel = new ClientModel();

        $data=[
            'title' => 'Página',
            'clients' => $clientModel -> getClients()
        ];

        echo view('templates/header');
        echo view('Client/listClients', $data);
        echo view('templates/footer');
    }

    public function detailClient($idClient){
        $clientModel = new ClientModel();

        $data=[
        'title' => 'Página',
        'client' => $clientModel -> getClients($idClient)
        ];

        echo view('templates/header');
        echo view('Client/detailClient', $data);
        echo view('templates/footer');
    }


    //API
    public function listClientsApi(){
        $clientModel = new ClientModel();
        $clients=$clientModel -> getClients();
        
        header('Content-Type: application/json; charset=utf-8');
        
        echo view('templates/header');
        echo(json_encode($clients));
        echo view('templates/footer');
    }
}