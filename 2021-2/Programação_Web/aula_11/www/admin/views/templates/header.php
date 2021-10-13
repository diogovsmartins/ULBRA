<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/style.css">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script src="../site/assets/js/script.js"></script>

</head>
<body>

<header class="jumbotron text-center mb-0">
       <h1>Página do Adm</h1>

</header>
   <div class="container-fluid">
        <div class="row">
            <nav class="col-2 p-3">
                <h2>Menu</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a href="?controller=main&action=logout" class="nav-link">Logout</a>
                    </li>
                    <li class="nav-item">
                        <a href="?controller=clients&action=listClients" class="nav-link">List Clients</a>
                    </li>     
                    <li class="nav-item">
                        <a href="?controller=clients&action=createClient" class="nav-link">Crete new Client</a>
                    </li>      
                </ul>
            </nav>
            <section class="col-10 pb-3">