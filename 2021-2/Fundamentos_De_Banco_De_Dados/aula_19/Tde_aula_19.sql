/*Faça uma modelagem com 3 tabelas que de condições de extrair os dados usando:
----
- função de agregação (minimo 2. ex. Sum, count)
- joins
- group by
- having
Pode fazer em 3 mas todos entregam a sua versão.*/

CREATE TABLE clientes(
	id serial not NULL primary key,
	nome varchar(100),
  	cpf varchar(14)
);

create table produtos(
	idProduto SERIAL NOT NULL PRIMARY KEY,
  	nome VARCHAR (100),
  	valor decimal(12,2) not NULL
);

create TABLE notas(
	idNota SERIAL NOT NULL PRIMARY KEY,
  	data date,
  	valorDaVenda decimal(12,2) NOT NULL,
  	quantidade INT DEFAULT 1,
  	produtoVendido int not NULL,
  	cliente int not NULL,
  		FOREIGN key(produtoVendido)
  			REFERENCES produtos(idproduto)
  				on delete RESTRICT,
  		FOREIGN key(cliente)
  			REFERENCES clientes(id)
  				on delete RESTRICT
);

INSERT into clientes(nome, cpf)
values ('diogo', '123-456-789-12'),
	   ('ricardo', '331-421-994-22'),
       ('anderson', '517-269-521-10'),
       ('luan', '051-959-350-02'),
       ('julia', '337-149-510-79'),
       ('ariana', '551-229-401-61'),
       ('debora', '911-993-220-37'),
       ('bruno', '558-556-344-22'),
       ('mateus', '626-567-391-90'),
       ('vanusa', '105-392-774-66'),
       ('fabiano', '992-169-982-54'),
       ('joão', '279-649-350-14')
       
       
insert INTO produtos(nome, valor)
VALUES ('televisão', 1500),
	   ('sofá', 940),
       ('geladeira', 2500),
       ('cama', 1200),
       ('notebook', 4000),
       ('fogão', 900),
       ('armário', 1660),
       ('jogo de cama', 250),
       ('fone de ouvido', 150),
       ('teclado', 220),
       ('mesa de escritório', 500),
       ('cadeira de escritório', 650)



insert into notas(data, valordavenda,quantidade ,produtovendido, cliente)
VALUES ('2021-12-01', 200, 2,10, 1),
	   ('2021-05-25', 1600,3,7, 4),
       ('2019-02-12', 2200,5 ,1, 9),
       ('2007-09-07', 650,3, 12, 7),
       ('2001-02-11', 500,2 ,11, 5), 
       ('2012-04-23',2000,4,5,3),
       ('2020-12-25', 3500,5, 5,10),
       ('1999-10-23', 900, 7,1, 8), 
       ('2004-08-01', 2300,5, 3, 8), 
       ('2021-09-17',3130,2, 8,3), 
       ('2015-05-12', 500,3,10, 10), 
       ('2017-01-05', 1000,2 ,12, 11), 
       ('2020-09-27', 3000,6,1, 1), 
       ('2005-02-12', 300,1 ,11, 4),
       ('20016-02-12', 300, 3,11, 4)


-- 1- Qual o produto mais caro que um cliente comprou em um determinado ano 

select N.idnota as Nota ,c.nome AS Cliente, N.data as Data ,P.nome, MAX(N.valordavenda) as Valor
  from clientes c
      inner join notas N 
          on C.id=N.cliente
      inner join produtos p 
      	  on N.produtovendido=P.idproduto
WHERE n.data BETWEEN '2021-01-01' and '2021-12-30'
GROUP BY idnota, c.nome, N.data,p.nome, valor
ORDER BY Valor DESC
limit 1;


-- 2- Qual o produto que mais foi vendido durante o periodo de 2010 a 2021? 

select p.idproduto as id, p.nome , SUM(quantidade) as total
from produtos p 
	inner join notas N 
    	on p.idproduto=N.produtovendido
where N.data BETWEEN '2010-01-01' and '2021-12-30'
GROUP BY idproduto
ORDER BY SUM(quantidade) DESC
limit 1;


--3 - Mostrar quanto cada cliente gastou ao total no periodo de 2005 a 2021
-- e que gastaram pelo menos 5000 reais em produtos durante o periodo selecionado.

SELECT c.id as IdCliente, P.nome as NomeDoProduto, sum(N.valordavenda*N.quantidade) as Total
  from clientes c 
      inner join notas N 
          on c.id=N.cliente
      INNER JOIN produtos P 
          ON N.produtovendido=P.idproduto
where N.data BETWEEN '2005-01-01' and '2021-12-30'
group by c.id, P.nome
--order by SUM(valordavenda) desc
HAVING SUM(valordavenda*quantidade) >=5000;

--4 - Mostrar a media de gastos de cada cliente do que tem a maior media para o menor

SELECT C.id as idCliente, C.nome as nome, avg(N.valordavenda*N.quantidade) as media
  from clientes C 
      inner join Notas N 
          on C.id=N.cliente
group by c.id 
order by avg(valordavenda*quantidade) desc

--5 -Mostrar todas compras de clientes chamados diogo a partir do ano 2000
Select N.idnota as Notas, C.nome as Nome, P.nome AS produto, N.valordavenda as Valor
  from clientes c
      inner join notas N
          on C.id=N.cliente
      Inner join produtos p 
          on N.produtovendido=P.idproduto
Where C.nome like '%diogo%' and N.data>='2000-01-01'
group by N.idnota, c.nome, p.nome 
order by N.idnota desc


