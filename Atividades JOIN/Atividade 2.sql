CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tamanho VARCHAR (255),
pedacos INT
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR (255),
borda VARCHAR (255),
valor DECIMAl (6,2)
);

ALTER TABLE tb_pizzas ADD tamanhoid BIGINT;

-- Criando a chave estrangeira
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizza_categoria
FOREIGN KEY (tamanhoid) REFERENCES tb_categorias (id);

-- Inserindo valores na classe categorias
INSERT INTO tb_categorias(tamanho, pedacos) 
VALUES ("Broto", 4);
INSERT INTO tb_categorias(tamanho, pedacos) 
VALUES ("Média", 6);
INSERT INTO tb_categorias(tamanho, pedacos) 
VALUES ("Grande", 8);
INSERT INTO tb_categorias(tamanho, pedacos) 
VALUES ("Familia", 10);

-- Inserindo valores na classe Pizzas
INSERT INTO tb_pizzas(sabor, borda, valor, tamanhoid) 
VALUES ("Calabresa", "tradicional",45.00,1);
INSERT INTO tb_pizzas(sabor, borda, valor, tamanhoid) 
VALUES ("Mussarela", "catupiry",60.00,2);
INSERT INTO tb_pizzas(sabor, borda, valor, tamanhoid) 
VALUES ("Calabresa", "catupiry",55.00,1);
INSERT INTO tb_pizzas(sabor, borda, valor, tamanhoid) 
VALUES ("Frango c/ catupiry", "tradicional",60.00,3);
INSERT INTO tb_pizzas(sabor, borda, valor, tamanhoid) 
VALUES ("Dois Queijos", "tradicional",50.00,2);
INSERT INTO tb_pizzas(sabor, borda, valor, tamanhoid) 
VALUES ("Meio à meio", "catupiry",65.00,2);
INSERT INTO tb_pizzas(sabor, borda, valor, tamanhoid) 
VALUES ("Calabresa", "tradicional",55.00,3);
INSERT INTO tb_pizzas(sabor, borda, valor, tamanhoid) 
VALUES ("Carne", "cheddar",70.00,4);


-- Selecionando dados na tabela pizzas
SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor Like "%m%";

-- Selecionando dados com INNER JOIN
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.tamanhoid = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.tamanhoid = tb_categorias.id
WHERE tamanhoid = 2;