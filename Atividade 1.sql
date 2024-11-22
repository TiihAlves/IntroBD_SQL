CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
telefone VARCHAR(11),
endereco VARCHAR(255),
cargo VARCHAR(100),
salario DECIMAL(8,2),
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, telefone, endereco, cargo, salario)
VALUES ("Ana Clara", 11944880222,"R: Estudantes, SP","Assitente de Recursos Humanos",1950.00);
INSERT INTO tb_colaboradores(nome, telefone, endereco, cargo, salario)
VALUES ("Maria Clara", 11946080224,"R: Estudantes, SP","Analista de Recursos Humanos",2200.00);
INSERT INTO tb_colaboradores(nome, telefone, endereco, cargo, salario)
VALUES ("Carlos Eduardo", 11944882008,"R: Estudantes, SP","Assitente de Recursos Humanos",1950.00);
INSERT INTO tb_colaboradores(nome, telefone, endereco, cargo, salario)
VALUES("Eduardo dos Santos", 11989482015,"R: Estudantes, SP","Analista de Recursos Humanos",2200.00);
INSERT INTO tb_colaboradores(nome, telefone, endereco, cargo, salario)
VALUES("Bryan Lima", 11950220512,"R: Estudantes, SP","Assitente de Recursos Humanos",1950.00);
        
SELECT * FROM tb_colaboradores;
        
SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2000.00 WHERE id in (1,3,5);
        