<h1>registro de cliente - Visualização</h1>
   
<table class="table table-striped text-warning">
    <tr>
        <th>Nome:</th>
        <td>
            <?=$arrayClient['name'] ?>
        </td>
    </tr>
    <tr>
        <th>Email:</th>
        <td>
        <?=$arrayClient['email'] ?>
        </td>
    </tr>
    <tr>
        <th>Phone:</th>
        <td>
        <?=$arrayClient['phone'] ?>
        </td>
    </tr>
    <tr>
        <th>Gender:</th>
        <td>
        <?=$arrayClient['gender'] ?>
        </td>
    </tr>
    <tr>
        <th>Receive emails:</th>
        <td>
            <?php 
            if ($arrayClient['accept']) {
                echo ('Você receberá emails com ofertas e atualizações da página.');
            }else{
                echo ('Você não receberá emails referentes à esta página.');
            }
            ?>
        </td>
    </tr>
</table>