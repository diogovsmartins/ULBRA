<?php 
class ClientsController{
    
    var $ClientModel;
    

    function __construct(){
        require_once('models/ClientsModel.php');
        $this->ClientModel= new ClientsModel();
    }

    public function listClients(){
        $result= $this->ClientModel->listClients();

        $arrayClients= array();

        while ($line=$result->fetch_assoc()) {
            array_push($arrayClients,$line);
        }
        header('Content-Type:application/json');
        echo json_encode($arrayClients);
    }

    public function createClient(){
        $client=json_decode(file_get_contents('php://input'));
        $arrayClient['name']=$client->name;
        $arrayClient['phone']=$client->phone;
        $arrayClient['email']=$client->email;
        $arrayClient['address']=$client->address;

        $this->ClientModel -> createClient($arrayClient);
    }


    public function updateClient($id){
        $client=json_decode(file_get_contents('php://input'));
        $arrayClient['idClient']=$id;
        $arrayClient['name']=$client->name;
        $arrayClient['phone']=$client->phone;
        $arrayClient['email']=$client->email;
        $arrayClient['address']=$client->address;
        
       $this-> ClientModel ->updateClient($arrayClient);
    }


    public function deleteClient($id){
        $this->ClientModel->deleteClient($id);
    
    }

    public function savePhoto($id){
        if(isset($_FILES['photo']) && $_FILES['photo']['name']!=''){

            $foto_temp = $_FILES["photo"]["tmp_name"];	//pega o caminho temporário do arquivo
            $foto_name = $_FILES["photo"]["name"];		//pega o nome

            $extensao = str_replace('.','',strrchr($foto_name, '.')); //strtolower(end(explode('.', $foto_name))); //seleciona a extenção da imagem            
            $max_width = 600; //define largura máxima
            $max_height = 600; //define altura míxima

            // Carrega a imagem 
            $img = null;

                //Transforma a imagem em JPG
                if ($extensao == 'jpg' || $extensao == 'jpeg') { 
                    $img = imagecreatefromjpeg($foto_temp);
                } else if ($extensao == 'png') { 
                    $img = imagecreatefrompng($foto_temp);
                } else if ($extensao == 'gif') { 
                    $img = imagecreatefromgif($foto_temp); 
                }  else     
                    $img = imagecreatefromjpeg($foto_temp); 

                // Se a imagem foi carregada com sucesso, testa o tamanho da mesma
            if ($img) { 
                    // Pega o tamanho da imagem e calcula proporção de resize 
                    $width  = imagesx($img); 
                    $height = imagesy($img); 
                    $scale  = min($max_width/$width, $max_height/$height); 
                    // Se a imagem é maior que o permitido, encolhe ela! 
                if ($scale < 1) { 
                    $new_width = floor($scale*$width); 
                    $new_height = floor($scale*$height);
                    // Cria uma imagem temporária 
                    $tmp_img = imagecreatetruecolor($new_width, $new_height);
                    // Copia e resize a imagem velha na nova     
                    imagecopyresampled($tmp_img, $img, 0, 0, 0, 0, 
                                    $new_width, $new_height, $width, $height);  
                    imagedestroy($img); 
                    $img = $tmp_img; 
                }           
        }

            //cria imagem no diretório @imagejpeg($img,"diretorio/".$id_noticia) se já tiver com este nome vai substituir
            $localFile = "./assets/css/img/{$id}.jpg";
            imagejpeg($img, $localFile); 
            
        }
    }
}