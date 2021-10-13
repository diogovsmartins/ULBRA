
<h1 class="text-warning">Lista de clientes</h1>
<table class="table table-striped text-dark bg-light">
  <tr>
    <th>Código</th>
    <th>Nome</th>
    <th>Email</th>
    <th>Endereço</th>
    <th>Telefone</th> 
    <th colspan="2">Ações</th>
  </tr>
  <?php
  foreach ($arrayClients as $client) {
  ?>
  <tr>
    <td><?=$client['idClient']?></td>
    <td><?=$client['name']?></td>
    <td><?=$client['email']?></td>
    <td><?=$client['address']?></td>
    <td><?=$client['phone']?></td>
    <td>
      <a 
        href="?controller=clients&action=updateClient&id=<?=$client['idClient']?>" 
        class="btn btn-warning">
        Edit
      </a>  
    </td>

    <td>
    <a 
        href="?controller=clients&action=deleteClient&id=<?=$client['idClient']?>" 
        class="btn btn-danger">
        Delete
      </a>  
    </td>

  </tr>
  <?php
  }
  ?>
</table>
