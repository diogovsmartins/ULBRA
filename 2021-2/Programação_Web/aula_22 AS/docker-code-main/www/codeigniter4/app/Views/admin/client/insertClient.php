<div class="container-fluid">
<h1>Create Client</h1>
<form action="<?=base_url('admin/client/insert-action')?>" method=POST enctype='multipart/form-data' class="bg-dark text-warning p-2    ">
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
        <br>
        <br>
        <button type="submit" class="btn btn-warning">Salvar</button>
    </div>
</form>
</div>