CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR (255),
formato VARCHAR (255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
valor DECIMAl (6,2),
quantidade INT
);

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

-- Criando a chave estrangeira
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produto_categoria
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

-- inserindo valores na tabela categorias
INSERT INTO tb_categorias(tipo, formato) 
VALUES ("Analgesico", "liquido");
INSERT INTO tb_categorias(tipo, formato) 
VALUES ("Analgesico", "comprimido");
INSERT INTO tb_categorias(tipo, formato) 
VALUES ("Anti inflamatorio", "comprimido");
INSERT INTO tb_categorias(tipo, formato) 
VALUES ("Antibiotico", "comprimido");
INSERT INTO tb_categorias(tipo, formato) 
VALUES ("Antialergico", "comprimido");

-- inserindo valores na tabela produtos
INSERT INTO tb_produtos(nome, valor, quantidade, categoriaid) 
VALUES ("Aspirina",15.00, 10,3);
INSERT INTO tb_produtos(nome, valor, quantidade, categoriaid) 
VALUES ("Dipirona",4.00, 20,1);
INSERT INTO tb_produtos(nome, valor, quantidade, categoriaid) 
VALUES ("Dipirona",5.5, 10,2);
INSERT INTO tb_produtos(nome, valor, quantidade, categoriaid) 
VALUES ("Ibuprofeno",10.00, 10,3);
INSERT INTO tb_produtos(nome, valor, quantidade, categoriaid) 
VALUES ("Diclofenaco",12.00, 10,3);
INSERT INTO tb_produtos(nome, valor, quantidade, categoriaid) 
VALUES ("Loratadina",12.00, 10,5);
INSERT INTO tb_produtos(nome, valor, quantidade, categoriaid) 
VALUES ("Prednisona",20.00, 10,5);
INSERT INTO tb_produtos(nome, valor, quantidade, categoriaid) 
VALUES ("Amoxisilina",20.00, 15,4);

-- Selecionando dados na tabela produtos
SELECT * FROM tb_produtos WHERE valor > 10;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Selecionando dados com INNER JOIN
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE categoriaid = 3;

