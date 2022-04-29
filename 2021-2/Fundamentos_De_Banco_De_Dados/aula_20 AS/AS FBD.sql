/*Modelo academico */

create table cidades(
	id SERIAL not NULL PRIMARY KEY,
  	nome VARCHAR(100) NOT NULL UNIQUE,
  	UF VARCHAR(2) NOT NULL
);

create table disciplinas(
	id SERIAL NOT NULL PRIMARY KEY,
  	nome varchar(100) UNIQUE
);

CREATE TABLE cursos(a
	idCurso SERIAL NOT NULL PRIMARY KEY,
  	nomeCurso VARCHAR(100) NOT NULL,
  	valorCredito DECIMAL(12,2) not NULL
);

create table alunos(
	idAluno SERIAL not NULL PRIMARY KEY,
  	nome varchar(100) not NULL,
  	endereco VARCHAR(100) NOT NULL,
  	telefone VARCHAR(14) NOT NULL,
  	cidade INT NOT NULL,
  		FOREIGN key (cidade)
			REFERENCES cidades(id)
  				on delete RESTRICT
  				on update CASCADE
);

CREATE table professores(
	idProf serial not NULL PRIMARY KEY,
  	nome varchar(100) not NULL,
  	email varchar(100) not NULL,
  	endereco varchar not NULL,
  	cpf varchar(14) not NULL UNIQUE,
  	idCid int not NULL,
  		foreign key(idCid)
  			references cidades(id)
  				on delete RESTRICT
  				on update CASCADE
);

create table turmas(
  	idTurma SERIAL NOT NULL PRIMARY KEY,
  	sala INT NOT NULL UNIQUE,
  	capacidade INT Not NULL DEFAULT (20),
  	idProf INT NOT NULL,
  	idCurso INT NOT NULL,
		FOREIGN KEY (idProf)
  			REFERENCES professores(idProf), 
		FOREIGN key (idCurso)
  			REFERENCES cursos (idCurso)
  				on delete RESTRICT
  				on update CASCADE
);

create table turDisc(
	idTurma int not NULL,
  	idDisc int not NULL,
  		FOREIGN key(idTurma)
  			references turmas(idTurma),
  		FOREIGN key (idDisc)
  			REFERENCES disciplinas (id)
  				on delete RESTRICT
  				on update CASCADE
); 

CREATE TABLE matriculas(
	idAluno int not NULL,
  	idTurma int not NULL,
  		FOREIGN KEY (idAluno)
  			REFERENCES alunos(idAluno),
  		FOREIGN key (idTurma)
  			REFERENCES turmas (idTurma)
  				on delete RESTRICT
  				on update CASCADE
); 

alter table matriculas add column dataDeInscricao date;

insert into cidades (nome, uf)
values('Capão da Canoa', 'RS'),
	  ('São paulo', 'SP'),
      ('Rio de Janeiro', 'RJ'),
      ('Porto Alegre', 'RS'),
      ('Torres', 'RS');
	
INSERT INTO cursos(nomecurso, valorcredito)
VALUES('Sistemas da informação', 250.99),
	  ('Direito', 600),
      ('Odontologia', 300),
      ('Biologia', 200),
      ('ADS' , 1000);

insert INTO alunos(nome, endereco, telefone, cidade)
VALUES('Diogo', 'Av.Central 242', '(51)99253-2215', 1),
	  ('Roger', 'Rua Torta 152', '(51)98251-2176', 3),
      ('Aurelio', 'Travessa 551', '(51)99772-9841', 4),
      ('Juliana', 'Rua dos texugos 853', '(51)99942-2431',2),
      ('Ariana', 'rua da ulbra 123', '(51)99221-2321', 5),
	  ('Roberto', 'outra rua que não a da ulbra', '(51)98772-8821', 5);

INSERT INTO professores(nome,email,endereco,cpf,idcid)
VALUES('Cassio Costa', 'cassiocosta1@gmail.com','Casa do Cassio 123', '432-991-743-84', 1),
	  ('Juliano Almeida', 'julianoprof@gmail.com','Casa do Juliano 323', '922-597-827-23', 3),
      ('Ramon Lumertz', 'ramonzinho123@hotmail.com','Casa do Ramon 482', '898-797-253-69', 4),
      ('Vinicius Magnus', 'vinimagnus@outlook.com','Casa do Vinicius 2273', '126-221-346-47', 2);

insert into disciplinas(nome)
values('Engenharia de software'),
	  ('Como processar um mendigo'),
      ('Como arrancar um siso'), 
      ('Como descobrir se um gato é macho ou femea');


insert into turmas(sala, capacidade, idprof, idcurso)
VALUES(302, 20, 1, 1 ),
	  (304, 15, 2, 2 ),
      (305, 22, 3, 3 ),
      (306, 25, 4, 4 );

insert into turdisc(idturma,iddisc)
values(1,1),
	  (2,2),
      (3,3), 
      (4,4);

insert into matriculas(idaluno, idturma, datadeinscricao)
values(1,1,'2019-01-21'),
	  (2,1, '2021-06-08'),
      (4,3,'2019-04-29'),
      (2,2,'2020-02-13'),
      (5,1,'2019-07-15');


/*Defina o comando SQL para listar o nome do curso e
valor do crédito para o curso que tem o valor mais 
baixo de crédito(valorcredito).*/

Select nomecurso, valorcredito 
	from cursos
where valorcredito=(select min(valorcredito) from cursos);


/*Marque a sentença que permite listar todas os nomes 
dos alunos juntamente com o nome da cidade onde moram, 
ordenado pelo nome do aluno. .*/


Select alunos.nome, cidades.nome 
	from cidades, alunos --Não ordena os alunos


Select alunos.nome, cidades.nome 
	from alunos,cidades 
where cidades.id=alunos.idaluno --Mostra os valores mas compara valores diferente no where e embaralha os dados
order by alunos.nome 
	
Select alunos.nome, cidades.nome 
	from cidades, alunos 
where cidades.nome=alunos.nome  --Não verifica as chaves primárias 
order by alunos.nome


Select alunos.nome, cidades.nome 
	from cidades, alunos  --Também não ordena os campos
where cidades.id=alunos.cidade

Select alunos.nome, cidades.nome 
	from cidades, alunos  --Mostra o resultado esperado
where cidades.id=alunos.cidade
order by alunos.nome


/*Marque a sentença que permite listar os códigos(id) das 
turmas com o nome da disciplina e a sala.*/

SELECT t.idturma AS IDTurma, D.nome as disciplina, t.sala as Nsala
  from turmas T
      inner join turdisc TD
          ON t.idturma=TD.idturma
	  inner join disciplinas D 
      	  on D.id=TD.iddisc

/*Marque a sentença que permite atualizar o valor do crédito do curso de nome “ADS” com o acréscimo de 10%.
5 pontos
*/

Update cursos set valorcredito=valorcredito*1.1 where nomecurso='ADS'; --opção correta as outras faltam o set ou os valores estão errados
select * from cursos where cursos.nomecurso='ADS'; 


--QUESTÕES QUE PRECISO ENVIAR NO ARQUIVO
/*1-Faça um SQL para selecionar os alunos que não moram 
na cidade onde estudam. Considerando que a cidade onde estudam 
é Torres. Exibir o código, o nome do aluno e a cidade onde ele mora. 
Postar arquivo cidade-onde-estuda-mas-nao-mora.sql ..*/

SELECT a.idaluno AS idaluno, A.nome AS Nome, C.nome as Cidade
  from alunos a 
      INNER JOIN cidades C 	
          on a.cidade=C.id 
where c.nome != 'Torres'
group by a.idaluno, c.nome
order by a.idaluno asc; --mostra todos os alunos menos os que moram em torres


/*2-Faça um SQL para listar qual a turma que tem mais alunos
matriculados. Postar arquivo turma-com-mais-alunos-matriculados.sql .
*/

select t.idturma as turma, t.sala as sala ,count(M.idaluno) as numeroDeALunos
  from matriculas m 
      inner join turmas T 
          on m.idturma=t.idturma
      inner join alunos A 
      	  on m.idaluno=a.idaluno
group by t.idturma
order by count(m.idaluno) DESC
limit 1;

/*3-Faça um SQL para exibir o nome do aluno, o código do curso, o nome do curso,
o nome do professor da turma e a data que ele se matriculou. 
Apresentar somente para alunos que tenham se matriculado entre semestre 1 de 2019,
considere que as matrículas iniciam em janeiro. Postar arquivo alunos-matriculados.sql .*/

SELECT A.nome AS aluno, c.idcurso as idCurso, c.nomecurso as curso , P.nome AS professor, m.datadeinscricao as data_Matricula
  FROM alunos a
  	  left join cursos C
      	on c.idcurso=a.idaluno
      inner join matriculas M 
        on a.idaluno=m.idaluno
      inner join turmas T 
      	ON T.idturma=M.idturma
      INNER JOIN professores P 
      	ON T.idprof=P.idprof
where m.datadeinscricao BETWEEN '2019-01-01' and '2019-05-29'
group by A.nome, C.idcurso, p.nome, m.datadeinscricao
order by a.nome asc;


/*Explique o conceito Integridade Referencial. De um exemplo SQL DDL 
para ilustrar melhor a sua explicação, usando a modelagem relacional 
(“Academico”). Postar arquivo questao-sobre-int-ref.sql.

RESPOSTA:Integridade Referencial é um conceito utilizado para manter os dados 
contidos em um banco de dados coeso e consistente, garantindo que os valores que são 
referenciados continuem corretos e que nenhum dado seja apagado caso ele não deva ser apagado. 

Por exemplo nesse SQL onde praticamente todas as tabelas tem on update CASCADE que significa que 
quando um valor da tabela original for mudado, todas as tabelas que referenciam àquele dado 
também serão alteradas para que não ocorra de uma tabela referenciar um dado que não existe mais 
pois foi modificado na tabela original, bem como a propriedade on delete restrict que não permite que os dados 
referenciados de uma tabela sejam deletados para evitar que as tabelas que as referenciem 
sem que o dado exista na tabela original.
*/

