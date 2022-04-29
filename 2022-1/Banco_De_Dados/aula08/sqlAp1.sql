CREATE TABLE categorias(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);



CREATE TABLE autores(
		id INT AUTO_INCREMENT PRIMARY KEY,
		nome VARCHAR(100),
		nome_real VARCHAR(100),
		data_nasc DATE
);

CREATE TABLE autores_filmes(
	autores_id INT PRIMARY KEY,
    filmes_id INT
);

CREATE TABLE filmes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(45),
    titulo VARCHAR(100),
    qtd_exemplares VARCHAR(45),
    categorias_id INT,
    autores_id INT,
	FOREIGN KEY categorias_id(categorias_id)
		REFERENCES categorias(id),
	FOREIGN KEY autores_id(autores_id)
		REFERENCES autores_filmes(autores_id)
);

CREATE TABLE clientes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    prenome VARCHAR(45),
    sobrenome VARCHAR(45),
    fone VARCHAR(45),
    endereco VARCHAR(100),
    num_associado INT
);

CREATE TABLE locacoes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    data_retirada DATE,
    data_entrega DATE,
    clientes_id INT,
	FOREIGN KEY clientes_id(clientes_id)
		REFERENCES clientes(id)
);

CREATE TABLE filmes_por_locacoes(
	filmes_id INT not null,
    locacoes_id INT
);


INSERT INTO categorias(nome)
VALUES ("nome1"),("nome2");

insert into filmes(numero, titulo, qtd_exemplares, categorias_id)
values("1","pipoca doce","110",1),("1","pipoca salgada","230",2),
	  ("1","pipoca amanteigada","500",1),("4","pipoca caramelizada","1000",2);

INSERT INTO clientes(prenome, sobrenome, fone, endereco, num_associado)
VALUES("diogo","martins","1234-5678", "rua123", 1),
	  ("luan","SPARREMBERGER","5678-1234", "rua321", 2),
      ("mcPoze","marlon","9992-3234", "doRodo 123", 3);
      
INSERT INTO locacoes(data_retirada,clientes_id)
VALUES ("2022-10-03",1),("2021-05-03",1),("2002-06-15",1),
		("2012-12-12",3),("2007-02-15",2),("2013-07-22",3),
        ("2017-11-15",2),("2022-10-15",3),("2022-03-01",2);
        
INSERT INTO filmes_por_locacoes (filmes_id, locacoes_id)
VALUES (1,1),(2,3),(3,1),(3,2),(1,4),(2,5),(1,3),(3,6),(2,7);

/*Faça um SQL para exibir os filmes cadastrados e suas respectivas categorias.*/

SELECT f.id, f.titulo, c.nome
FROM filmes f
	INNER JOIN categorias c
ON f.categorias_id=c.id;

/*Faça um SQL para exibir quantos filmes há para cada categoria.*/

SELECT c.id AS id_Categoria, c.nome AS nome_Categoria, COUNT(f.id) AS filmes
FROM filmes f
INNER JOIN categorias c
ON f.categorias_id=c.id
GROUP BY c.id
ORDER BY c.id ASC;

/*Faça um SQL para exibir o nome de todos os clientes e se houver
 locação, mostrar quais os filmes que eles (cada um) tem locado.
*/

SELECT c.prenome, f.titulo, l.data_retirada
from clientes c
inner join locacoes l
on c.id=l.clientes_id
inner join filmes_por_locacoes fl
	on fl.locacoes_id=l.id
inner join filmes f
	on f.id=fl.filmes_id
order by prenome asc;

/*Faça um SQL para saber qual titulo do filme que tem o maior número de locações.*/

SELECT f.id , f.titulo, COUNT(f.id) AS numeroDeLocacoes
FROM filmes f
INNER JOIN filmes_por_locacoes fl
ON f.id=fl.filmes_id
GROUP BY f.id
ORDER BY COUNT(f.id) DESC
LIMIT 1;

/*
Faça uma View que de condições de um client consultar filmes que foram e que
 não foram locados. Teste a View mostrando os dois resultados.
 Lista dos filmes locados e não locados.
 */
CREATE VIEW filmes_locados as
select *
from filmes f
inner join filmes_por_locacoes fl
on f.id=fl.filmes_id;
 
 /*Filmes que foram locados*/
 select id, titulo, categorias_id
 from filmes_locados
 where id=filmes_id;
 
 /*filmes que não foram locados*/
 select id, titulo, categorias_id
 from filmes_locados fl
 group by id
 having id not in (filmes_id)
 order by id asc;
 