<h1>Edit Client</h1>
<form action="?controller=clients&action=updateClientAction&id=<?=$arrayClient['idClient']?>" method=POST enctype='multipart/form-data'>
    <div class="form-group">
        <div>
            <label for="name">Name:</label>
            <input type="text" class="form-control" name="name" value="<?=$arrayClient['name']?>">
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="mail" class="form-control" name="email" value="<?=$arrayClient['email']?>">
        </div>
        <div>
            <label for="tel">Phone:</label>
            <input type="text" class="form-control" name="phone" value="<?=$arrayClient['phone']?>" >
        </div>
        <div>
            <label for="end">Address:</label>
            <input type="text" class="form-control" name="address" value="<?=$arrayClient['address']?>">
        </div>
        <div>
            <label for="photo"></label>
            <input type="file" name="photo" id="" class="form-control">
        </div>
        <div>
            <?php 
            if(is_file("./assets/css/img/{$arrayClient['idClient']}.jpg")){
            echo"
                <img 
                style='max-width:100px; max-height:100px;'
                src='./assets/css/img/{$arrayClient['idClient']}.jpg'
                >
            ";
            }else{
            echo"Sem imagem salva";
            }
            ?>
        </div>
        <br>
        <br>
        <button type="submit" class="btn btn-warning">Salvar</button>
    </div>
</form>