CREATE TABLE clientes(
    id int not null,
    nome varchar(70) not null,
    whats varchar (17),
    PRIMARY KEY (id) --define a chave primaria no final
);

CREATE TABLE clientes(
    id INT not null PRIMARY KEY, --define a chave primaria no no inicio
    nome VARCHAR(150) not null,
    whats VARCHAR(17)
);

-- Qual a diferença entre CHAR(N) e VARHAR(N)
/*
    cidade char(10)
    cidade_1 varchar (10)

    cidade
*/