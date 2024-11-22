CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
serie VARCHAR(30),
nota DECIMAL (3,1),
responsavel VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, idade, serie, nota, responsavel) 
VALUES ("Gustavo Silva", 17, "3 A", 8.0, "Antônio Carlos"),
		("Anderson Silva", 17, "3 B", 8.2, "Antônio Carlos"),
        ("Marcos Souza", 16, "2 A", 7.0, "Adriana Souza"),
        ("Miriam Souza", 17, "3 B", 9.0, "Adriana Souza"),
        ("Bryan Santos", 17, "3 A", 6.5, "Carlos dos Santos"),
        ("Henrique Moraes", 16, "2 A", 6.0, "Rafael dos Santos Moraes"),
        ("Marcos Azevedo", 17, "3 B", 10.0, "Carlos Azevedo"),
        ("Enzo Silva", 17, "3 A", 5.5, "Maria da Silva Santos");
        
SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 10.0 WHERE id = 8;