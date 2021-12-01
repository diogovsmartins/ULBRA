
<h1 class="text-warning">Lista de clientes</h1>
<table class="table table-striped text-light bg-dark">
  <tr>
  <th class="text-warning">Código</th>
    <th class="text-warning">Nome</th>
    <th class="text-warning">Email</th>
    <th class="text-warning">Endereço</th>
    <th class="text-warning">Telefone</th> 
    <th class="text-warning" colspan="2">Ações</th>
  </tr>
  <?php
  foreach ($clients as $client) {
  ?>
  <tr>
    <td class="text-warning "><?=$client['idClient']?></td>
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