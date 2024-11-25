CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
bonus_classe VARCHAR(255)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
vida INT,
dano_base INT,
armadura INT,
resistencia_magica INT,
habilidade VARCHAR (255)
);

ALTER TABLE tb_personagens ADD classeid BIGINT;

-- Criando a chave estrangeira
ALTER TABLE tb_personagens ADD CONSTRAINT fk_classe_personagem
FOREIGN KEY (classeid) REFERENCES tb_classes (id);

-- inserindo classes
INSERT INTO tb_classes(nome, bonus_classe) 
VALUES ("Mago", "+20 de dano de ataque, +50 de dano de habilidade");
INSERT INTO tb_classes(nome, bonus_classe) 
VALUES ("Assassino", "+50 de dano de ataque, +20 resistencia magica");
INSERT INTO tb_classes(nome, bonus_classe) 
VALUES ("Tank", "+40 de armadura, +40 resistencia magica");
INSERT INTO tb_classes(nome, bonus_classe) 
VALUES ("Suporte", "+50 de vida, +30 de resistencia magica, +20 de dano de habilidade");
INSERT INTO tb_classes(nome, bonus_classe) 
VALUES ("Atirador", "+50 de dano base, +10 de dano de habilidade");

-- inserindo personagens
INSERT INTO tb_personagens(nome, vida,dano_base,armadura,resistencia_magica,habilidade,classeid) 
VALUES ("Zed", 60,35,35,35,"Arremessa uma espada em linha reta dando 75 de dano habilidade",2);
INSERT INTO tb_personagens(nome, vida,dano_base,armadura,resistencia_magica,habilidade,classeid) 
VALUES ("Kennen", 60,35,40,40,"Arremessa uma shuriken em linha reta dando 80 de dano de habilidade",2);
INSERT INTO tb_personagens(nome, vida,dano_base,armadura,resistencia_magica,habilidade,classeid) 
VALUES ("Lux", 60,32,35,40,"Arremessa uma bola de luz em linha reta imobilizando os 2 primeiros inimigos, e causando 50 de dano de habilidade",1);
INSERT INTO tb_personagens(nome, vida,dano_base,armadura,resistencia_magica,habilidade,classeid) 
VALUES ("Veigar", 60,32,35,40, "Arremessa um orbe em linha reta causando 80 de dano de habilidade aos 2 primeiros inimigos atingido", 1);
INSERT INTO tb_personagens(nome, vida,dano_base,armadura,resistencia_magica,habilidade,classeid) 
VALUES ("Braum", 60,30,45,45, "Bloqueia com seu escudo todas as habilidades disparadas por um periodo de 3 segundos", 3);
INSERT INTO tb_personagens(nome, vida,dano_base,armadura,resistencia_magica,habilidade,classeid) 
VALUES ("Blitz", 60,32,45,40, "Dispara seu braço em linha reta puxando inimigos atingidos para perto e causando 30 de dano de habilidade", 3);
INSERT INTO tb_personagens(nome, vida,dano_base,armadura,resistencia_magica,habilidade,classeid) 
VALUES ("Soraka", 60,30,35,40, "Cura aliados proximos restaurado +50 de vida", 4);
INSERT INTO tb_personagens(nome, vida,dano_base,armadura,resistencia_magica,habilidade,classeid) 
VALUES ("Jhin", 60,35,35,40, "Dispara um laser em linha reta que atravessa os alvos causando 40 de dano de habilidade ao primeiro inimigo atingido e 20 aos demais", 5);

-- selecionando dados na tabela personagem
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE dano_base > 30;

SELECT * FROM tb_personagens WHERE armadura BETWEEN 30 AND 40;

SELECT * FROM tb_personagens WHERE nome LIKE "%a%";

-- selecionando dados com INNER JOIN
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

-- selecionando dados com INNER JOIN buscando uma classe especifica
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id
WHERE classeid = 2;

