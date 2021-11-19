<h1>Create Client</h1>
<form action="?controller=clients&action=createClientAction" method=POST enctype='multipart/form-data'>
    <div class="form-group">
        <div>
            <label for="name">Name:</label>
            <input type="text" class="form-control" name="name">
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="mail" class="form-control" name="email">
        </div>
        <div>
            <label for="tel">Phone:</label>
            <input type="text" class="form-control" name="phone" >
        </div>
        <div>
            <label for="end">Address:</label>
            <input type="text" class="form-control" name="address">
        </div>
        <div>
            <label for="photo"></label>
            <input type="file" name="photo" id="" class="form-control">
        </div>
        <br>
        <br>
        <button type="submit" class="btn btn-warning">Salvar</button>
    </div>
</form>