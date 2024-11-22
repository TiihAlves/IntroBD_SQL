CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
marca VARCHAR(50),
quantidade INT,
durabilidade VARCHAR(50),
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, marca, quantidade, durabilidade, preco)
VALUES ("Camisa","Nike",15,"1 Ano", 120.00),
	   ("Camisa","Adidas",10,"1 Ano", 150.00),
       ("Tênis","Nike",5,"2 Anos", 750.00),
       ("Tênis","Puma",10,"2 Anos", 600.00),
       ("Boné","Nike",6,"1 Ano", 130.00),
       ("Boné","Lacoste",2,"1 Ano", 120.00),
       ("Chinelo","Kenner",6,"2 Anos", 120.00),
       ("Chinelo","Adidas",4,"1 Ano", 90.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 100.00 WHERE id = 8;

ALTER TABLE tb_produtos CHANGE preco preco DECIMAL (6,2);
