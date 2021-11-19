/*2-Faça os comandos DDL para a criação das tabelas relacionais detectadas, 
na sequência esperada.*/

CREATE TABLE fornecedores(
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	nome varchar (70)
);

CREATE TABLE categorias(
	codigo_categoria INT not NULL AUTO_INCREMENT PRIMARY KEY,
  	nome varchar (50)
);
CREATE TABLE produtos(
	codigo_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	descricao varchar (100),
  	data_cadastro DATE,
  	valor_unitario Double,
  	cod_categoria Int not NULL,
  	CONSTRAINT fk_produtos_categorias FOREIGN KEY (cod_categoria)
  		REFERENCES categorias (codigo_categoria)
);

CREATE TABLE pedidos(
  	id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	quantidade INT NOT NULL,
  	valor_unitario DOUBLE,
  	data_pedido DATE,
  	codigo_fornecedor INT not NULL,
  	cod_produto INT NOT NULL,
  	CONSTRAINT fk_pedidos_fornecedores FOREIGN KEy (codigo_fornecedor)
  		REFERENCES fornecedores (codigo),
  	CONSTRAINT fk_pedidos_produtos FOREIGN KEY (cod_produto)
  		REFERENCES produtos (codigo_produto)
);

/*3-Faça um comando (FUC) para adicionar o campo data_ultima_compra na tabela 
fornecedor*/

/*
CREATE-CRIA TABELA
ALTER- MODIFICA A TABELA/COLUNA
DROP- DELETA A TABELA/COLUNA
*/

ALTER TABLE fornecedores ADD data_ultima_compra DATE;

/*4-FUC para alterar o nome do atributo data em PEDE para data_pedido.
*/

ALTER table pedidos change column data_pedido DATA_PEDIDO date;
/*só pra testar e fazer a tde */
ALTER table pedidos change column DATA_PEDIDO data_pedido date;
/*voltando pro padrão que eu estava usando*/ 


/*5-FUC para deletar o campo data_cadastro em produtos*/


ALTER TABLE produtos DROP COLUMN data_cadastro;


/*6-FUC para adicionar na relação categoria e produto para o delete ser 
em cascata e o update ser restrict.*/

ALTER TABLE produtos drop CONSTRAINT fk_produtos_categorias;

alter table produtos
	add CONSTRAINT fk_produtos_categorias
		FOREIGN key (cod_categoria)
    		REFERENCES categorias (codigo_categoria)
            	on delete RESTRICT
            	on update cascade;
/*RESTRICT: NÃO DEIXA APAGAR DADOS QUE ESTEJAM REFERENCIANDO DADOS DE OUTRA TABELA
E MOSTRA MENSAGEM AMIGAVEL

CASCADE: SE FOR PRECISO DELETAR OU ALTERAR ALTERA/DELETA TODOS OS DADOS QUE ESTÃO 
RELACIONADOS*/
         
         	
                
/*7-FUC para aumentar o tamanho do domínio do campo nome do fornecedor 
para mais 30 caracteres.*/

alter table fornecedores modify column  nome varchar(100); 

/*8-FUC para apagar a tabela fornecedor. Explique o que vai acontecer
com o seu esquema e as consequências disso.
*/
alter table pedidos DROP CONSTRAINT fk_pedidos_fornecedores;
drop table fornecedores;

/*o codigo do fornecedor na tabela pedido não vai mais referenciar os fornecedores 
que estão cadastrados na tabela fornecedores porque ela não existe mais 
e a integridade do banco de dados será arruinada*/


/*9-FUC para adicionar o número do pedido em PEDE. Este número deve aceitar caracteres.
*/

ALTER TABLE pedidos add column numero_pedido VARCHAR(10);


/*
INSERT 
UPDATE
SELECT
DELETE


campo data usar: yyyy-MM-dd hh:mm:ss
*/

/*
EX DE INSERT:
INSERT INTO nomeDaTabela (coluna1, coluna2,coluna3...)
	VALUES (1,'valor1', 32.3, '2021-10-16 21:10:00', '21:11:00' );
    
    
MULTI INSERT:
INSERT INTO nomeDaTabela(colunas...)
	VALUES ('Televisores'),
    	   ('Acessórios'),
           ('Moveis'),
           ('Saude e beleza');
*/
INSERT into categorias (nome)
	VALUES ('Televisores');
    
    
INSERT INTO categorias(nome)
	VALUES ('Televisores'),
    	   ('Acessórios'),
           ('Moveis'),
           ('Saude e beleza');

/*
EX DE SELECT:

SELECT nomedas colunas-> (col1, col2, col3...)
	FROM nome da tabela;
    ou 
SELECT * FROM nome da tabela WHERE nome da coluna ='algo';
	

*/

SELECT *
	FROM categorias;
    
/*
EX DE DELETE:

DELETE FROM nome da tabela; --esse é o delete sem o where, deleta tudo da tabela informada

DELETE FROM nome da tabela WHERE (nome da coluna) ='oq tu quer deletar se for char, se n é só por o valor'

*/
DELETE FROM categorias;
DELETE FROM categorias WHERE nome="Televisores";


/*
EX DE UPDATE:

UPDATE tabela 
	SET nomeDaColuna='novo valor', nomeDaColuna2=10, nomeDaColuna=12.3
WHERE coluna=valor;

*/

UPDATE categorias 
	SET nome='Super Eletrônicos'
WHERE nome='Acessórios';
	
    
--criar um item em produtos


INSERT INTO produtos (descricao, data_cadastro, valor_unitario, cod_categoria)
	VALUES('Secador de cabelos gama', '2021-10-16' ,229.25, 9); 
    
SELECT * FROM produtos;
    
    
/*operadores de extração de dados
SELECT FROM TABELA
WHERE nomeDaColuna LIKE='oq tu quer achar%' se for string
Se quiser procurar de uma data a outra ='BETWEEN 2021-10-16 AND 2021-10-10'

É possivel fazer expressões aritiméticas durante a consulta também, mas é preciso
dar um apelido pra coluna onde sera exibida a consulta, nesse caso se utiliza AS
*/

SELECT *, valor_unitario+((valor_unitario*10)/100) AS valor_novo
FROM produtos;




