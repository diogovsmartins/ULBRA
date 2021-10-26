/*Médico (codmed, nome, endereço, telefone, crm, cpf, codcid)
	Codcid referencia cidade(codcid)
Paciente (codpac, nome, endereço, telefone,codcid)
	Codcid referencia cidade(codcid)
Cidade(codcid, nome, UF)
Consulta(codconsulta, codmed, codpac, data, hora)
	Codmed referencia Medico (codmed)
	Codpac referencia Paciente (codpac)
Prescricao(codconsulta, codmedicamento, posologia)
	Codconsulta referencia Consulta (codconsulta)
	Codmedicamento referencia medicamento (codmedicamento)
Medicamento (codmedicamento, nome, composicao, preco)
*/

CREATE TABLE cidades(
	cod_cidade int AUTO_INCREMENT not NULL PRIMARY key,
  	nome varchar (30) not NULL unique,
  	uf varchar(2) not NULL unique
);

create table medicos(
	cod_paciente int AUTO_INCREMENT not NUll PRIMARY KEY,
  	nome varchar(100) not NULL,
  	endereço varchar(100) not NULL,
  	telefone VARCHAR (12) not NULL,
  	cod_cid int not NULL,
  	CONSTRAINT fk_pacientes_cidades FOREIGN KEY (cod_cid)
  		REFERENCES cidades (cod_cidade)
);

create table pacientes(
	cod_paciente int AUTO_INCREMENT not NUll PRIMARY KEY,
  	nome varchar(100) not NULL,
  	endereço varchar(100) not NULL,
  	telefone VARCHAR (12) not NULL,
  	cod_cid int not NULL,
  	CONSTRAINT fk_pacientes_cidades FOREIGN KEY (cod_cid)
  		REFERENCES cidades (cod_cidade)
);

create table consultas(
	cod_consulta int AUTO_INCREMENT not NULL primary Key,
  	cod_med int not NULL,
  	cod_pac int not null,
  	data_consulta date,
  	CONSTRAINT fk_consultas_medicos FOREIGN KEY (cod_med)
  		REFERENCES medicos (cod_medico),
  	CONSTRAINT fk_consultas_pacientes FOREIGN KEY (cod_pac)
  		REFERENCES pacientes (cod_paciente)
);

create table medicamentos(
	cod_medicamento int AUTO_INCREMENT not NULL PRIMARY key,
  	nome varchar(100) not NULL,
  	composicao varchar(200) NOT NULL,
  	preco double
);

CREATE TABLE prescricoes(
	codconsulta int not NULL primary KEY,
  	codmedicamento int not NULL,
  	posologia double,
  	CONSTRAINT fk_prescricoes_consultas FOREIGN KEY (codconsulta)
  		REFERENCES consultas (cod_consulta),
  	CONSTRAINT fk_prescricoes_medicamentos FOREIGN KEY (codmedicamento)
    	REFERENCES medicamentos (cod_medicamento)
);

INSERT INTO cidades (nome, UF)
	VALUES ("Rio de Janeiro", "RJ")

INSERT INTO medicos (nome, endereço, telefone, crm, cpf, codcid)
	VALUES ("DIOGO12", "Minha casa", "012345678910", "123453", "123452", "2")
    
SELECT * FROM medicos

select * from cidades