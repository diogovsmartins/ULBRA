CREATE DATABASE aula13_triggers;

CREATE TABLE produtos(
	prd_codigo INT AUTO_INCREMENT PRIMARY KEY,
    prd_qtd_estoque INT NOT NULL,
    prd_descricao VARCHAR(100),
    prd_valor DECIMAL (12,2) NOT NULL,
    prd_status VARCHAR(20),
    prd_falta BOOLEAN
);

CREATE TABLE orcamentos(
	orc_codigo INT AUTO_INCREMENT PRIMARY KEY,
    orc_data DATE NOT NULL,
    orc_status VARCHAR(20)
);

CREATE TABLE orcamentos_produtos(
	prd_codigo INT NOT NULL,
    orc_codigo INT NOT NULL,
    orp_valor DECIMAL(12,2) NOT NULL,
    orp_qtd INT NOT NULL,
    orp_status VARCHAR(20)
);

CREATE TABLE produtos_atualizados(
 prd_codigo INT PRIMARY KEY,
 prd_qtd_anterior INT , 
 prd_qtd_atualizada INT,
 prd_valor DECIMAL(12,2)
);


CREATE TABLE produtos_em_falta(
	prd_codigo INT AUTO_INCREMENT PRIMARY KEY,
    prd_qtd_estoque INT NOT NULL,
    prd_descricao VARCHAR(100),
    prd_status VARCHAR(20),
    prd_falta BOOLEAN
);

DROP PROCEDURE IF EXISTS insert_produto;
DELIMITER $$
CREATE PROCEDURE insert_produto(p_qtd_estoque int,p_valor decimal(12,2),
	p_descricao varchar(100), p_falta BOOLEAN, p_status VARCHAR(20))
BEGIN
	INSERT INTO produtos (prd_qtd_estoque, prd_valor, prd_descricao, prd_falta, prd_status)
		VALUES(p_qtd_estoque, p_valor, p_descricao, p_falta, p_status);
        SELECT * FROM produtos;
END $$
DELIMITER $$

DROP PROCEDURE IF EXISTS insert_orcamento;
DELIMITER $$
CREATE PROCEDURE insert_orcamento(p_orc_data DATE,p_orc_status VARCHAR(20))
BEGIN
	INSERT INTO orcamentos (orc_data, orc_status)
		VALUES(p_orc_data, p_orc_status);
        SELECT * FROM orcamentos;
END $$
DELIMITER $$


DROP PROCEDURE IF EXISTS insert_orcamento_produto;
DELIMITER $$
CREATE PROCEDURE insert_orcamento_produto(p_prd_cod INT, p_orc_cod INT,
	p_orp_qtd INT, p_orp_status VARCHAR(20))
BEGIN
	DECLARE p_orp_valor DECIMAL(12,2);
	SET p_orp_valor=p_orp_qtd*(SELECT prd_valor FROM produtos WHERE prd_codigo=p_prd_cod);
	INSERT INTO orcamentos_produtos (prd_codigo, orc_codigo, orp_valor, orp_qtd, orp_status)
		VALUES(p_prd_cod, p_orc_cod, p_orp_valor, p_orp_qtd, p_orp_status);
	SELECT * FROM orcamentos_produtos;
END $$
DELIMITER $$

DROP PROCEDURE IF EXISTS delete_produto_from_orcamento;
DELIMITER $$
CREATE PROCEDURE delete_produto_from_orcamento(product_code INT, orcament_code INT)
BEGIN
	UPDATE orcamentos_produtos
    SET prd_codigo=0
	WHERE prd_codigo=product_code AND orc_codigo=orcament_code;
    SELECT * FROM orcamentos_produtos WHERE orc_codigo=orcament_code;
END $$
DELIMITER $$


CALL insert_produto(20, 199.99,"Teclado mecânico", false, "Disponivel");
CALL insert_produto(25, 1999.99,"Monitor curvo", false, "Disponivel");
select * from produtos;

CALL insert_orcamento("2022-05-06", "APROVADO");
CALL insert_orcamento("2022-04-10", "REPROVADO");

CALL insert_orcamento_produto(1,1,2,"APROVADO");

CALL delete_produto_from_orcamento(1,1);

/* Faça um trigger para alterar o estoque de um produto
 quando ocorrer quaisquer alterações na tabela orçamentos_produtos.
 Também irá alterar o estoque, quando um ítem na tabela orçamentos_Produtos
 for cancelado. Isso ocorre quando o campo Orp_Status recebe o valor 2.
*/

DROP TRIGGER IF EXISTS update_estoque_produto_on_insert;
DELIMITER $$
CREATE TRIGGER update_estoque_produto_on_insert AFTER INSERT ON orcamentos_produtos
	FOR EACH ROW	
BEGIN
	UPDATE produtos SET prd_qtd_estoque =prd_qtd_estoque - NEW.orp_qtd 
	WHERE produtos.prd_codigo=NEW.prd_codigo;
END $$
DELIMITER $$
SELECT * FROM produtos;


DROP TRIGGER IF EXISTS update_estoque_produto_on_delete;
DELIMITER $$
CREATE TRIGGER update_estoque_produto_on_update AFTER DELETE ON orcamentos_produtos
	FOR EACH ROW	
BEGIN
	UPDATE produtos SET prd_qtd_estoque =prd_qtd_estoque - OLD.orp_qtd 
	WHERE produtos.prd_codigo=OLD.prd_codigo;
END $$
DELIMITER $$
SELECT * FROM produtos;

CALL insert_orcamento_produto(3,2,10,"PENDENTE");
CALL insert_orcamento_produto(3,1,5,"APROVADO");

/*Faça um trigger para armazenar em uma tabela chamada produtos_atualizados
 (prd_codigo, prd_qtd_anterior, prd_qtd_atualizada, prd_valor)
 quando ocorrer quaisquer alterações nos atributos da tabela produtos.
 No entanto, caso a alteração atribua o valor zero para o atributo prd_qtd_estoque,
 a tabela produtos_em_falta deverá ser alimentada com as mesmas informações da tabela produto,
 exceto o atributo prd_valor. Além disso, o atributo prd_status do produto atualizado deve ser
 modificado para NULL e o atributo orp_status de todos os orcamentos_produtos desse produto
 deverá ser modificado também para NULL. 
*/

DROP TRIGGER IF EXISTS insert_into_produtos_atualizados;
DELIMITER $$
CREATE TRIGGER insert_into_produtos_atualizados AFTER UPDATE ON produtos
FOR EACH ROW
BEGIN
	INSERT INTO produtos_atualizados(prd_codigo, prd_qtd_anterior, prd_qtd_atualizada, prd_valor)
		VALUES(new.prd_codigo, old.prd_qtd_anterior, new.prd_qtd_atualizada, new.prd_valor);
END$$
DELIMITER $$