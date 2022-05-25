/*Criar procedure pra insert de usuário com todos os campos menos
 id_user que é auto_increment e user_active que deve ser setado
 como true já que o usuário está se cadastrando.*/

DROP PROCEDURE IF EXISTS insert_user;
DELIMITER $$
CREATE PROCEDURE insert_user(p_user_name VARCHAR(100),
 p_email VARCHAR(100),p_cpf VARCHAR(11))
BEGIN
	DECLARE userActive TINYINT; 
    SET userActive=1;
    INSERT INTO users (user_name , email, cpf, user_active)
		VALUES (p_user_name, p_email, p_cpf, userActive);
	SELECT * FROM users;
END $$
DELIMITER $$

call insert_user("claudio", "claudio@email.com", "0208647074");

/*Criar procedure pra facilitar a inserção de compras visto que 
provavelmente uma compra fará mais de uma call.*/

DROP PROCEDURE IF EXISTS insert_single_purchase;
DELIMITER $$
CREATE PROCEDURE insert_single_purchase(p_id_purchase int, p_id_item int,
	p_id_user int, p_quantity int, p_price decimal(12,2))
BEGIN
	DECLARE purchaseDate Date;
    SET purchaseDate=NOW();
    INSERT INTO purchases (id_purchase, id_item, id_user, quantity, price, purchase_date) 
		VALUES(p_id_purchase, p_id_item, p_id_user, p_quantity, p_price ,purchaseDate);
    select * from purchases;
END $$
DELIMITER $$

call insert_single_purchase(1,1,1,5,18.50);

 SELECT * FROM purchases WHERE id_purchase=1;

DROP PROCEDURE IF EXISTS insert_items;
 DELIMITER $$
CREATE PROCEDURE insert_items(p_item_name VARCHAR(100), p_item_description VARCHAR(200), p_price DECIMAL(12,2), p_stock INT)
    BEGIN
        INSERT INTO items (item_name, item_description, price, stock)
            VALUES (p_item_name, p_item_description, p_price, p_stock);
        SELECT * FROM items;
    END $$
 DELIMITER $$
 
 call insert_items('chinelo','havaiana',30.00,'25');

alter table items modify in_stock int;


DELIMITER $$
    CREATE PROCEDURE insert_data (p_id_user int, p_address VARCHAR(200), p_cep VARCHAR(8))
BEGIN
    INSERT INTO addresses (id_user, address, cep)
        VALUES (p_id_user, p_address,p_cep);
END $$
DELIMITER $$

call insert_data (1,'rua','95588000');
