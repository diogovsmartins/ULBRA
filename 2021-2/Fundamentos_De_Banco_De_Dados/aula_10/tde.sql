CREATE TABLE colaboradores(
    matricula VARCHAR(10) NOT NULL UNIQUE PRIMARY KEY, --Matricula ex:3294159871
    nome VARCHAR(100) NOT NULL, 
    senha VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE projetos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_colaborador VARCHAR(10) UNIQUE,
    id_projeto VARCHAR(8) UNIQUE,
    comentarios VARCHAR(300)
);

CREATE TABLE projetos_iniciados(
    id_projeto VARCHAR(10) UNIQUE PRIMARY KEY,
    id_colaborador VARCHAR(10) UNIQUE,
    id_projeto VARCHAR(8) UNIQUE,
    comentarios VARCHAR(300)
    CONSTRAINT projetos_colaboradores_fk
        FOREIGN KEY (matricula_colaboradores, id_projetos)
)
