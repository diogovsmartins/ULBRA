
<h1 class="text-warning">Lista de clientes</h1>
<table class="table table-striped text-dark bg-light">
  <tr>
    <th>Código</th>
    <th>Nome</th>
    <th>Email</th>
    <th>Endereço</th>
    <th>Telefone</th> 
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
  </tr>
  <?php
  }
  ?>
</table>
