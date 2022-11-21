CREATE DATABASE db_pizzaria_legal;
use db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
tamanho varchar(255) NOT NULL,
PRIMARY KEY(id)
); 

INSERT INTO tb_categoria (tamanho)
VALUES ("BROTO");

INSERT INTO tb_categoria (tamanho)
VALUES ("PEQUENA");

INSERT INTO tb_categoria (tamanho)
VALUES ("MEDIA");

INSERT INTO tb_categoria (tamanho)
VALUES ("GRANDE");

INSERT INTO tb_categoria (tamanho)
VALUES ("FAMILA");

SELECT * FROM tb_categoria;


CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco int,
borda boolean,
entrega boolean,
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)

);
INSERT INTO tb_pizzas (nome, preco, entrega, borda, categoria_id)
VALUES ("CAMARÃO", 50.00, TRUE, FALSE, 4);

INSERT INTO tb_pizzas (nome, preco, entrega, borda, categoria_id)
VALUES ("CORACAO", 60.00, FALSE, TRUE, 3);

INSERT INTO tb_pizzas (nome, preco, entrega, borda, categoria_id)
VALUES ("CALIFORNIA", 55.00, FALSE, TRUE, 5);

INSERT INTO tb_pizzas (nome, preco, entrega, borda, categoria_id)
VALUES ("GAUCHA", 40.00, TRUE, FALSE, 1);

INSERT INTO tb_pizzas (nome, preco, entrega, borda, categoria_id)
VALUES ("GAUCHA", 50.00, TRUE, FALSE, 2);

INSERT INTO tb_pizzas (nome, preco, entrega, borda, categoria_id)
VALUES ("GAUCHA", 60.00, TRUE, FALSE, 3);

INSERT INTO tb_pizzas (nome, preco, entrega, borda, categoria_id)
VALUES ("GAUCHA", 70.00, TRUE, FALSE, 4);

INSERT INTO tb_pizzas (nome, preco, entrega, borda, categoria_id)
VALUES ("GAUCHA", 80.00, TRUE, FALSE, 5);




select * from tb_pizzas;

select * from tb_pizzas where preco > 50.00; 

select * from tb_pizzas where preco BETWEEN  60.00 AND 70.00;

select * from tb_pizzas WHERE nome LIKE "%co%";

select * from tb_pizzas  INNER JOIN tb_categoria
on tb_pizzas.categoria_id = tb_categoria.id;


select * from tb_pizzas  INNER JOIN tb_categoria
on tb_pizzas.categoria_id = tb_categoria.id
where tb_categoria.id = 3;

