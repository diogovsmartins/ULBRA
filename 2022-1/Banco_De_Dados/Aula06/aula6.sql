CREATE TABLE orcamentos_itens(
id_prod INT NOT NULL,
id_orc INT NOT NULL,
valor_unit DOUBLE NOT NULL,
quantidade INT NOT NULL,
valor_total_item DOUBLE NOT NULL,
	FOREIGN KEY id_prod (id_prod)
		REFERENCES produtos (idProdutos),
	FOREIGN KEY id_orc (id_orc)
		REFERENCES orcamentos (idOrcamentos)
);

INSERT INTO produtos (nome,valor,saldo)
VALUES ('Batata', 1.00, 100),('Carne', 50.00, 50), ('Queijo', 8.00, 30),('Refrigerante', 5.00, 1000);

INSERT INTO produtos (nome,valor,saldo)
VALUES ('computador',2500, 20),('computador gamer',10000, 5);

select * FROM produtos;

INSERT INTO orcamentos (data, status) 
VALUES ('2011-04-06', 'TERMINADO'),('2001-05-10', 'EM ANALISE'),('2013-03-22', 'REIJEITADO'),('2010-12-25', 'TERMINADO'),
('2022-03-25', 'TERMINADO'),('2022-03-22', 'FINALIZADO'),('2022-03-21', 'REJEITADO');


INSERT INTO orcamentos (data, status) 
VALUES ('2014-09-10', 'FINALIZADO');

SELECT * FROM orcamentos;

INSERT INTO orcamentos_itens (id_prod, id_orc, valor_unit, quantidade, valor_total_item)
VALUES (1,1, 0.80, 50, (50*0.80)),
	   (2,1,1.20, 50, (50*1.20)),
       (7,9, 7.50, 10, (10*7.50)),
       (3,10, 35.00, 800, (800*45.00)),
       (4,11, 1.75, 750, (750*3.75)),
	   (7,12, 2100, 3, (3*2100));
       
       
INSERT INTO orcamentos_itens (id_prod, id_orc, valor_unit, quantidade, valor_total_item)
VALUES(3,12, 3000, 2, (10*3000));
select * from orcamentos_itens;

CREATE VIEW orcamentos_itens_produtos AS
SELECT *
FROM orcamentos_itens oi
	INNER JOIN orcamentos o 
		ON oi.id_orc=o.idOrcamentos
	INNER JOIN produtos p
		ON p.idProdutos=oi.id_prod;

/*Lista de orçamentos por produto*/

SELECT id_orc as id_orcamento, nome as nome_do_item, idProdutos as id_produto
from orcamentos_itens_produtos
ORDER BY idProdutos desc
GROUP BY idProdutos;


/*Valor total de produtos orçados por período	
ex. valor total dos produtos orçados no mes de março de 2022 */

select 	sum(valor_total_item) as total
from orcamentos_itens_produtos
where data between '2022-03-01' and '2022-03-31';



/*Produtos que tem “Computador” no nome e que tem quantidade em estoque.*/

select idOrcamentos, data, status
from orcamentos_itens_produtos
where nome like 'computador%';

/*Os 10 produtos mais orçados no mês de setembro de 2014 e
 que ainda tem saldo em estoque. Somente os produtos com o valor acima de R$ 500.00.*/
 
 INSERT INTO produtos (nome,valor,saldo)
VALUES ('geladeira',3500, 20),('tv 100 polegadas',100000, 5);

select * from orcamentos;
INSERT INTO orcamentos_itens (id_prod, id_orc, valor_unit, quantidade, valor_total_item)
VALUES(5,12, 2100, 3, (3*2100));
 
select idProdutos, nome, count(idProdutos) as quantas_vezes
from orcamentos_itens_produtos
where data between '2014-09-01' and '2014-09-30' and 
	saldo>0 and valor > 500
group by idProdutos, nome
order by quantas_vezes desc
limit 10;

select * from orcamentos_itens_produtos;

/*Faça uma consulta utilizando a view para acrescentar 20% nos
 produtos que o saldo em estoque é menor ou igual a 5.
*/

UPDATE orcamentos_itens_produtos 
SET valor_unit = valor_unit*1.2
WHERE quantidade <=5;
SELECT * FROM orcamentos_itens_produtos;

/* GROUP BY deve ser utilizado para agrupar dados por um campo especifico*/
select atributo1, atributo2 
from tabela
group by atributo1;

/*HAVING é parecido com o WHERE mas permite a utilização de funções como COUNT(), MIN(), MAX() etc*/
select atributo 1, count(atributo2)
from tabela
group by atributo 1
having count(atributo2) > 1;

/* UNION é usado para combinar dois SELECTS feitos em tabelas diferentes (que possuem o mesmo numero de colunas, tipos de dado e na mesma ordem)*/
/*muito similar a um JOIN*/

select coluna from tabela1
union
select coluna from tabela2;

/*LEFT JOIN irá retornar todos os dados da tabela da esquerda (from tabela1) e os dados da tabela da direita
que satisfaçam a condiçao do join, retornando 0 se nao houver nenhum dado */

select table1.atributo 
from table1
	left join table1 on table1.atributo = atributo2.atributo;
