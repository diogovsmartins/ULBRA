/*Criar uma bd relacional que controla:
postagens (id, titulo, data)
mensagens(id, descricao, id_postagem)
Delete cascade 
Update restrict
fazer cruds (insert, update, delete, select)
*/
CREATE TABLE postagens(
	id int not NULL AUTO_INCREMENT primary key,
  	titulo varchar(100),
  	dia_postagem DATe
);

create table mensagens(
	id_mensagem INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	descricaoMensagem varchar(100),
  	id_postagem INT NOT NULL,
  	CONSTRAINT fk_mensagens_postagens 
  		FOREIGN KEY(id_postagem)
          REFERENCES postagens (id)
          ON DELETE CASCADE
          ON UPDATE RESTRICT
);

Insert into postagens (titulo, dia_postagem) 
	VALUES('minha postagem', '2021-10-16 22:15:00');
    
SELECT * from postagens;

INSERT INTO mensagens(descricaomensagem, id_postagem)
	VALUES('Primeira mensagem teste2', 1);
    
SELECT * from mensagens;

DELETE FROM mensagens where id_mensagem=1;

UPDATE mensagens
	SET descricaomensagem='Update da mensagem teste2'
WHERE id_mensagem=3;