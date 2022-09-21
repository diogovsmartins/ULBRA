CREATE DATABASE bakery;

CREATE TABLE categories(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE products (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    quantity INT,
    categoryId INT,
		CONSTRAINT products_has_categories foreign key(categoryId)
			REFERENCES categories(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);

CREATE TABLE ingredients(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100),
    stock INT
);

CREATE TABLE products_ingredients(
	productId INT,
    ingredientId INT,
    productStock INT,
    ingredientStock INT,
    CONSTRAINT product_ingr_has_product FOREIGN KEY(productId)
			REFERENCES products(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
	CONSTRAINT product_ingr_has_ingredient FOREIGN KEY(ingredientId) 
			references ingredients(id)
);

CREATE TABLE products_stock(
	categoryId INT,
	totalProduction INT
);

ALTER TABLE products ADD COLUMN expiry_date DATE;

ALTER TABLE products_ingredients ADD COLUMN production_date DATE;

DROP PROCEDURE IF EXISTS insert_product;
DELIMITER $$
CREATE PROCEDURE insert_product (
p_name VARCHAR(100), p_quantity INT, p_category INT,
p_ingredientId INT, p_ingredientQuantity INT, inout p_productId INT)
BEGIN
	IF p_productId IS NULL or p_productId=0 THEN
		INSERT INTO products(name, quantity, categoryId)
		VALUES(p_name, p_quantity, p_category);
		SET @p_productId = (SELECT LAST_INSERT_ID());
	END IF;
    
    INSERT INTO products_ingredients (productId, ingredientId, productStock, ingredientStock)
    VALUES(p_productId,p_ingredientId, p_quantity, p_ingredientQuantity);
    
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS insert_category;
DELIMITER $$
CREATE PROCEDURE insert_category (p_name VARCHAR(100))
BEGIN
	INSERT INTO categories(name)
    VALUES(p_name);
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS insert_ingredient;
DELIMITER $$
CREATE PROCEDURE insert_ingredient (p_name VARCHAR(100), p_stock INT)
BEGIN
	INSERT INTO ingredients(name, stock)
    VALUES(p_name, p_stock);
END $$
DELIMITER ;



CALL insert_category("pães");
SELECT * FROM categories;

CALL insert_ingredient("farinha", 300);
SELECT * FROM ingredients;

CALL insert_product("pão de queijo", 10, 1, 1, 50, @null);
SELECT * FROM products;

SELECT * FROM products_ingredients;

/*@TODO: CRIAR TRIGGER PARA O ESTOQUE:
 INSERT INTO products_stock (categoryId, totalProduction)
 VALUES (p_categoryId, 
(SELECT totalProduction FROM products_stock WHERE categoryId=p_categoryId));*/

	CREATE VIEW vw_count_products_by_category AS
SELECT count(p.id) as "Product quantity", c.name as "Category" FROM products p
INNER JOIN categories c ON c.id = p.categoryId;

CREATE VIEW vw_products_ingredients AS
SELECT p., i.name, i.stock FROM products p
INNER JOIN products_ingredients pi ON pi.productId = p.id
INNER JOIN ingredients i ON i.id = pi.ingredientsId;

CREATE VIEW vw_products_made_thirty_days_ago AS
SELECT FROM products 
WHERE production_date = DATE_ADD(NOW(), INTERVAL -30 DAY);