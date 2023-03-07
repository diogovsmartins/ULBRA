
<h1 class="">Lista de clientes</h1>

  <form method="POST" action="<?=base_url('Admin/client/searchClient')?>">
    <div class="input-group mb-3">
      <input type="text" class="form-control" name="input" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="basic-addon2">
      <div class="input-group-append">
        <button class="btn btn-secondary" type="submit">Search</button>
      </div>
    </div>
  </form>


<table class="table table-striped">
  <tr>
  <th class="">Código</th>
    <th class="">Nome</th>
    <th class="">Email</th>
    <th class="">Endereço</th>
    <th class="">Telefone</th> 
    <th class="" colspan="2">Ações</th>
  </tr>
  <?php
  foreach ($clients as $client) {
  ?>
  <tr>
    <td class=" "><?=$client['idClient']?></td>
    <td><?=$client['name']?></td>
    <td><?=$client['email']?></td>
    <td><?=$client['address']?></td>
    <td><?=$client['phone']?></td>

    <td>
      <a 
        href="<?=base_url("admin/client/update/{$client['idClient']}")?>" 
        class="btn btn-warning">
        Edit
      </a>  
    </td>

    <td>
    <a 
        href="<?=base_url("admin/client/delete/{$client['idClient']}")?>" 
        class="btn btn-danger">
        Delete
      </a>  
    </td>

  </tr>
  <?php
  }
  ?>
</table>