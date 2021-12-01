<h1>Edit client</h1>
<form action="<?=base_url("admin/client/update-action/{$client['idClient']}")?>" method=POST enctype='multipart/form-data'>
    <div class="form-group">
        <div>
            <label for="name">Name:</label>
            <input type="text" class="form-control" name="name" value="<?=$client['name']?>">
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="mail" class="form-control" name="email" value="<?=$client['email']?>">
        </div>
        <div>
            <label for="tel">Phone:</label>
            <input type="text" class="form-control" name="phone" value="<?=$client['phone']?>" >
        </div>
        <div>
            <label for="end">Address:</label>
            <input type="text" class="form-control" name="address" value="<?=$client['address']?>">
        </div>
        <br>
        <br>
        <button type="submit" class="btn btn-warning">Salvar</button>
    </div>
</form>