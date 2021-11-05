# :book: TDE Aula 15 Engenharia de Software



## Legenda::scroll: == Manter clientes    :money_with_wings: == Alugar temas

### 														

### 																Diagrama escolhido

![](/home/diogo/Pictures/astah_print.png)

## :scroll: Manter Clientes: 

**sendo:** Um admnistrador do sistema

**posso:** Cadastrar um cliente

**Para que:** Possa ter um controle de quem está alugando os temas

**Critérios de aceite:** O cliente precisa informar todos os dados para que possa ser cadastrado.

## :money_with_wings: **Alugar temas:**

**Sendo:** Um admnistrador do sistema

**Posso:** Alugar temas para clientes

**Para que:** Possa receber pelo serviço prestado

**Critérios de aceite:** Para alugar um tema é preciso que quem aluga esteja cadastrado como um cliente e é preciso ter todos os itens do tema que será alugado cadastrados no sistema.

---

## :fire: **BDDS Manter clientes:**

**Cenario 1 Manter clientes:**

**Dado que:** O usuário já na tela de cadastro ao informar os dados do cadastro esqueceu de preencher um campo

**Quando:** O usuário clicar no botão de **cadastrar**

**Então:** O sistema não irá cadastrar o cliente no banco de dados e mostrara uma mensagem dizendo "É necessário preencher todos os campos." e marcará em vermelho o qual campo está faltando.

------------------------------------------------------------

**Cenario 2 manter clientes:**

**Dado que:** O usuário já autenticado como admnistrador, ao consultar os clientes cadastrados sem procurar por um cliente específico

**Quando:** Clicar no botão de **consultar clientes** 

**Então:** O sistema mostrará todos os clientes cadastrados no banco de dados.

----------------------------

**Cenario 3 manter clientes:**

**Dado que:** O usuário já autenticado e após consultar o banco de dados, quer **deletar** um cliente 

**Quando:** Clicar no botão **deletar cliente.*

**Então:** O sistema mostrara um aviso perguntando se o usuário realmente quer **deletar** aquele cliente dando-lhe a opção de clicar no botão escrito "**sim**" ou no botão escrito "**não**", caso o usuário clique no botão "**sim**" o sistema não irá mais mostrar aquele cliente e marcará ele como "**Inativo**" no banco de dados. Caso o cliente clique em "**não**" nada acontece e o cliente volta pra tela de consulta.

----------



----

## :fire: **BDDS Alugar temas: **

**Cenario 1 Alugar temas:**

**Dado que:** O usuário já autenticado como admnistrador e na tela de alugar temas escolheu o tema mas os dados do cliente informado não estavam cadastrados.

**Quando:** Ele clicar no botão de **Confirmar**

**Então:** O sistema irá verificar se os campos estão preenchidos e caso estejam todos preenchidos irá avisar ao usuário com uma mensagem "Este cliente não está cadastrado, deseja cadastra-ló?" e mostrara dois botões um botão escrito "**sim**" e outro botão  escrito "**não**", caso o cliente clique "**sim**" o sistema irá abrir a tela de cadastro e preencherá os campos com os valores que já tinham sido digitados e mostrará os outros campos que precisam ser preenchidos e após serem preenchidos o botão escrito "**Confirmar**" ficará ativo e após clicar nele o usuário sera cadastrado e o aluguel continuará normalmente.  Caso clique em "**Não**" ele voltará pra tela de aluguel e deixará um aviso dizendo "Cliente não cadastrado, por favor efetue o cadastro." .

----------------------------

**Cenario 2 Alugar temas:**

**Dado que:** O usuário já autenticado como admnistrador e na tela de alugar temas escolheu o tema e o usuário está cadastrado no sistema

**Quando:** Ele clicar no botão de **Confirmar**

**Então:** O sistema irá conduzi-lo para a tela de "**Pagamento**" onde será negociado os **descontos** e  mostrados os metodos de pagamento.

-----

**Cenario 3 Alugar temas:**

**Dado que:** O usuário já autenticado como admnistrador e na tela de **pagamentos** ao clicar em aplicar desconto

**Quando:** Ele clicar no botão de "**Consultar**"

**Então:** O sistema irá verificar a data de **cadastro** que consta no cadastro do cliente **se o cliente estiver cadastrado a pelo menos um ano**, o sistema mostrara uma mensagem dizendo "**Desconto aplicável a este cliente**" e dará um desconto de 10% naquele aluguel do contrário mostrará uma mensagem dizendo *"Desconto não aplicável à esse cliente"*.

-----

 

