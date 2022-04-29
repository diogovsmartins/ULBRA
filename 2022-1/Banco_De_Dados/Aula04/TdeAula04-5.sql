/*1 - Conforme modelo ER abaixo, cria um Database no MySQL ou de sua escolha.*/

Create table assuntos(
	id_assunto CHAR(1) NOT NULL UNIQUE,
  	descricao VARCHAR(40) NOT NULL
);

Create table editoras(
	id_editora INT AUTO_INCREMENT PRIMARY KEY,
  	nome VARCHAR(40) NOT NULL
);

CREATE TABLE livros(
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
  	titulo VARCHAR(80) NOT NULL,
  	preco double DEFAULT 9.99,
  	lancamento Date,
  	id_assunto CHAR NOT NULL,
  	id_editora INT NOT NULL,
      FOREIGN KEY id_assunto(id_assunto)
      	REFERENCES assuntos(id_assunto),
      FOREIGN KEY id_editora(id_editora)
      	REFERENCES editoras(id_editora)
  			ON UPDATE CASCADE
  			ON DELETE RESTRICT
);

CREATE TABLE autores(
	matricula int AUTO_INCREMENT PRIMARY KEY,
  	nome VARCHAR(40) NOT NULL,
  	cpf VARCHAR(11) NOT NULL,
  	endereco VARCHAR(50) NOT NULL,
  	data_nascimento DATE,
  	nacionalidade VARCHAR(30)
);

CREATE TABLE autores_livros(
	matricula int NOT NULL,
  	id_livro INT NOT NULL,
  		FOREIGN KEY matricula(matricula)
  			REFERENCES autores(matricula),
  		FOREIGN KEY id_livro(id_livro)
  			REFERENCES livros(id_livro)
  				on UPDATE CASCADE
  				ON DELETE RESTRICT
);
/*2 – Crie os SQLs solicitados abaixo. */

/*Editoras*/
INSERT INTO editoras(editoras.nome)
VALUES('EDITORA MIRANDELA'),
      ('EDITORA VIA-NORTE'),
      ('EDITORA ILHAS TIJUCA'),
      ('MARIA JOSE EDITORA');
      
      SELECT * FROM editoras;
    
/*ASSUNTOS*/
INSERT INTO assuntos(id_assunto, descricao)
VALUES('B', 'BANCO DE DADOS'),
      ('P', 'PROGRAMACAO'),
      ('R','REDES'),
      ('S','SISTEMAS OPERACIONAIS');
      
      SELECT * FROM assuntos;


/*LIVROS*/
INSERT INTO livros(titulo, preco, lancamento, id_assunto, id_editora)
VALUES('BANCO DE DADOS PARA WEB', 31.20, '1999-10-01', 'B', 1),
      ('PROGRAMANDO EM LINGUAGEM C',30.00 ,'1997-10-01','P',1),
      ('PROGRAMANDO EM LINGUAGEM C++',111.50 ,'1998-11-01','P',3),
      ('BANCO DE DADOS NA BIOINFORMATICA', 48.00 ,NULL,'B',2),
      ('REDES DE COMPUTADORES',42.00 ,'1996-09-01','R',2),
      ('BANCO DE DADOS DISTRIBUÍDO',200.00 ,'2002-04-18','B',2);
      
      SELECT * from livros;

INSERT INTO livros(titulo, preco, lancamento, id_assunto, id_editora)
VALUES('JAVA PARA INICIANTES', 80.20, '1999-10-01', 'B', 3),
	  ('ENTENDENDO PROTOCOLO HTTP', 60.30, NULL, 'R', 2),
      ('ENTENDENDO PROTOCOLO HTTP', 60.30, '2025-12-10', 'R', 10);
     
	SELECT * FROM livros;
    
    
/*Monte um comando para excluir da tabela 
livros aqueles que possuem o código maior ou igual a 2,
que possuem o preço maior que R$ 50,00 e que já foram lançados.
*/

DELETE from livros
where preco>50.00 AND id_livro>=2 AND lancamento is not NULL;
SELECT * FROM livros;

/*Escreva o comando que seleciona as colunas NOME,
CPF e ENDERECO, da tabela AUTOR, para aqueles que possuem a palavra ‘joão’ no nome.
*/
INSERT INTO autores (nome, cpf, endereco, data_nascimento, nacionalidade)
VALUES('JOÃO CANDIDO','12345678912','RUA 123 PIRACICABA',NULL,'BRASILEIRO'),
      ('CASSIO COSTA','12351251211','RUA 223 PIRACICABA',NULL,'BRASILEIRO'),
      ('ENRICO GONZALES','12345678912','RUACITA 929 GUACAMOLE','1989-10-12','CHILENO'),
      ('GEORGE FOREMAN','985678936','BARBECUE STREET','1970-12-10','NORTE AMERICANO'),
      ('ALAN JACKSON','78767853952','MISSISSIPI','1990-04-18','NORTE AMERICANO'),
      ('ASH KETCHUM','91528299213','CIDADE DE PALLET','1997-07-25','KANTONENSE'),
      ('MC GORILA','71238471288','RIO DE JANEIRO','1989-09-30','BRASILEIRO'),
      ('POZE DO RODO','88277233599','RIO DE JANEIRO','2000-05-15','BRASILEIRO'),
      ('Michael Jackson Uruguaio','88357273819','RIO DE JANEIRO','2000-05-15','BRASILEIRO');;

SELECT nome, cpf, endereco from autores WHERE nome like '%joão%';

/*Excluir o livro cujo título é ‘BANCO DE DADOS DISTRIBUÍDO’ ou
‘BANCOS DE DADOS DISTRIBUÍDOS’. Somente essas duas opções devem ser consideradas.
*/

DELETE FROM livros 
WHERE titulo like '%BANCO DE DADOS DISTRIBUIDO%';
SELECT * FROM livros;

/*
Selecione o nome e o CPF de todos os autores que nasceram
após 01 de janeiro de 1990.
*/

SELECT nome, cpf from autores WHERE data_nascimento >= '1990-01-01';


/*
Selecione a matrícula e o nome dos autores que possuem RIO DE JANEIRO no seu endereço.
*/

SELECT matricula, nome from autores WHERE endereco LIKE '%RIO DE JANEIRO%';

/*
Atualize para zero o preço de todos os livros onde a data
de lançamento for nula ou onde seu preço atual for inferior a R$ 55,00.
*/

UPDATE livros
SET preco=0.00
WHERE lancamento is NULL;

SELECT * from livros;

/*
Exclua todos os livros onde o assunto for diferente de ‘S’, ‘P’, ou ‘B’.
*/

DELETE FROM livros 
WHERE id_assunto = "P" OR "B" OR "S";
SELECT * FROM livros;

/*
Escreva o comando para contar quantos são os autores cadastrados na tabela AUTORES.
*/

SELECT COUNT(autores.matricula) as n_autores 
from autores;

/*
Escreva o comando que apresenta qual o número médio de autores de cada livro. Você deve utilizar, novamente, a tabela AUTOR_LIVRO. 
*/

INSERT into autores_livros (matricula,id_livro)
VALUES(1,2),(2,1),(3,5),(4,2),(3,3),(1,4),(4,2),(1,2),(2,1),(3,5),(4,2),(3,3),(1,4),(4,2),(17,4),(17,10);



select avg(quantos) as media_autores
from 
	(
		select id_livro, count(matricula) quantos
		from autores_livros
		group by id_livro
	)
as consulta;


select *
from 
	(
		select id_livro, count(matricula) quantos
		from autores_livros
		group by id_livro
	)
as consulta
where quantos >=2


/*
Apresente o comando SQL para gerar uma listagem dos códigos
dos livros que possuem a menos dois autores.
*/

SELECT l.id_livro, l.titulo, COUNT(matricula) as autores
FROM autores_livros al
    INNER JOIN livros l
    on al.id_livro=l.id_livro 
GROUP BY id_livro, l.titulo
HAVING COUNT(matricula)>=2;

/*
Escreva o comando para apresentar o preço médio dos livros por código
de editora. Considere somente aqueles que custam mais de R$ 45,00.
*/



SELECT id_editora, AVG(preco) AS preco_medio 
FROM livros
WHERE livros.preco>45.00
GROUP BY id_editora;

SELECT * from livros where id_editora=1;

/*

Apresente o preço máximo, o preço mínimo e o 
preço médio dos livros cujos assuntos são ‘S’ ou ‘P’ ou ‘B’,
para cada código de editora.
*/

select max(preco) as maximo, min(preco) as minimo, avg(preco) as medio, id_editora 
from livros
where id_assunto in('B','P','S')

/*
Altere o comando do exercício anterior para 
só considerar os livros que já foram lançados
(data de lançamento inferior a data atual) e cujo o preço máximo é 
inferior a R$ 100,00.
*/

SELECT maximo, minimo, medio, editora
from(
    select max(preco) as maximo, min(preco) as minimo, avg(preco) as medio, id_editora as editora
    from livros
    where id_assunto in('B','P','S')
  	order by id_editora
)
where maximo<100
as consulta


/*
Estão sendo estudados aumentos nos preços dos livros.
Escreva o comando SQL que retorna uma listagem contendo
o titulo dos livros, e mais três colunas: uma contendo os
preços dos livros acrescidos de 10% (deve ser chamada de ‘Opção_1’),
a segunda contendo os preços acrescidos de 15% (deve ser chamada de
‘Opção_2’) e a terceira contendo os preços dos livros acrescidos de 20%
(deve ser chamada de ‘Opção_3’). Somente devem ser considerados livros
que já tenham sido lançados.
*/

 select 	titulo, preco,
		preco + ((preco * 10)/100) as opcao_1, 
        preco * 1.10 as opcao_10, 
        preco * 1.15 as opcao_15, 
        preco * 1.20 as opcao_20
 
 from livros
 where lancamento is not null and lancamento <= current_date
 
/*
Escreva o comando SQL que apresenta uma listagem
contendo o código da editora, o nome da editora,
a sigla do assunto e o titulo dos livros que já
foram lançados. Os dados devem estar em ordem decrescente de preço,
e ascendente de código da editora e de título do livro.
*/

SELECT e.id_editora, e.nome, l.titulo, l.preco
from editoras e 
inner join livros l 
on l.id_editora=e.id_editora
ORDER BY l.preco desc, e.id_editora ASC, l.titulo ASC;
 
 /*
Escreva o comando que apresente uma listagem dos nomes dos
autores e do seu ano e mês de nascimento, para os autores brasileiros
e que tem livros ainda não lançados. A listagem deve estar ordenada em ordem crescente de nome.
 */

select 	a.nome, year(a.data_nascimento) as ano, month(a.data_nascimento) as mes
from 	autores a 
			INNER JOIN autores_livros al
				on a.matricula = al.matricula
			INNER JOIN livros l
				on l.id_livro = al.id_livro
where	a.nacionalidade like UPPER('%brasil%') and l.lancamento is  null OR l.lancamento > current_date
order by nome asc


/*
Escreva o comando que retorna o nome dos autores e o título
dos livros de sua autoria. A listagem deve estar ordenada
pelo nome do autor, mostrar somente os livros já lançados.
*/

SELECT a.nome,l.titulo
FROM livros l
    INNER JOIN autores_livros al
        on l.id_livro=al.id_livro
    INNER JOIN autores a
        on a.matricula=al.matricula
WHERE l.lancamento is not null and l.lancamento < current_date
order by a.nome

/*
 FUS (faça um SQL) que apresente o título do livro e o
 nome da editora que o publica para todos os livros que custam menos que 50 reais.
*/


SELECT l.titulo, e.nome
from editoras e 
inner join livros l 
on l.id_editora=e.id_editora
where l.preco <50.00;

/*
FUS que apresente o CPF, nome do autor e o preço máximo dos
livros de sua autoria. Apresente somente as informações para
os autores cujo preço máximo for superior a 50.
*/

SELECT MAX(l.preco) as media, a.matricula, a.nome, a.cpf
from livros l
inner join autores a
group by id_livro
HAVING Max(preco) >=50;

/*
Monte a consulta SQL que retorna as editoras
que publicaram livros escritos pela autora 'Ana da Silva'
*/

SELECT l.id_editora, l.titulo
from livros l
inner join autores_livros al 	
on l.id_livro=al.id_livro
inner join autores a 
  on a.matricula=al.matricula
Where a.nome like "%Cassio%"
