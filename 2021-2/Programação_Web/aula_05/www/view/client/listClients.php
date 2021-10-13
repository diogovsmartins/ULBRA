<h1>Lista de clientes</h1>
<table class="table table-striped text-warning">
<tr>
    <th>
        ID client:
    </th>
    <th>
        Name:
    </th>
    <th>
        Phone:
    </th>
    <th>
        Address:
    </th>
<?php
    foreach ($arrayClients as $client) {
?>        
        <tr>
        <td>
            <?=$client['idCLient'];?>
        </td>
        <td>
        <?=$client['name'];?>
        </td>
        <td>
        <?=$client['email'];?>
        </td>
        <td>
        <?=$client['phone'];?>
        </td>   
        <td>
        <?=$client['address'];?>
        </td>
     </tr>
<?php
    }
?>
   
</tr>
</table>