<h1>Lista de clientes</h1>
<table class="table table-striped ">
<tr>
    <th>
        ID client:
    </th>
    <th>
        Name:
    </th>
    <th>
        Email:
    </th>
    <th>
        Detalhes:
    </th>
<?php
    foreach ($clients as $client) {
?>        
        <tr>
        <td>
            <?=$client['idClient'];?>
        </td>
        <td>
            <?=$client['name'];?>
        </td>
        <td>
            <?=$client['email'];?>
        </td>
        <td>
            <a href="<?= base_url("client/{$client['idClient']}")?>">
                Detalhes    
            </a>
        </td>
     </tr>
<?php
    }
?>
   
</tr>
</table>