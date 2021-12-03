<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/style.css">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script src="./assets/js/script.js"></script>

</head>
<body>

<header class="jumbotron text-center mb-0 bg-dark text-warning fluid">
       <h1>programação web</h1>
       <p>Code Igniter</p>
</header>
   <div class="container-fluid bg-light">
        <div class="row">
            <nav class="col-2 p-1 bg-secondary text-warning container-fluid">
                <div>
                <h2 class="text-dark" >Menu</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a href="<?=base_url('home')?>" class="nav-link text-warning">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="<?=base_url('products')?>" class="nav-link text-warning">Products</a>
                    </li>
                    <li class="nav-item">
                        <a href="<?=base_url('about')?>" class="nav-link text-warning">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="<?=base_url('contact')?>" class="nav-link text-warning">Contact</a>
                    </li>
                </ul>
                <h2 class="text-dark">Clients</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a href="<?=base_url('client')?>" class="nav-link text-warning">List Clients</a>
                    </li>
                </ul>
            </nav>
            <section class="col-10 pb-3 container fluid">