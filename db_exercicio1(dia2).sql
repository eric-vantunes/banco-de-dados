CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
  id_classe INT NOT NULL AUTO_INCREMENT,
  nome_classe VARCHAR(255) NOT NULL,
  poder_ataque INT NOT NULL,
  poder_defesa INT NOT NULL,
  PRIMARY KEY (id_classe)
);
-- Tabela de Personagens 
CREATE TABLE tb_personagens (
  id_personagem INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  classe_id INT NOT NULL,
  poder_ataque INT NOT NULL,
  poder_defesa INT NOT NULL,
  vida INT NOT NULL,
  PRIMARY KEY (id_personagem),
  FOREIGN KEY (classe_id) REFERENCES tb_classes (id_classe)
);
-- Inserção na tabela Classes
INSERT INTO tb_classes (nome_classe, poder_ataque, poder_defesa)
VALUES ('Arqueiro', 2000, 1000),
('Mago', 1500, 1500),
('Guerreiro', 2500, 2000),
('Atirador', 3000, 2500);

SELECT * FROM tb_classes;

-- Inserção na tabela Personagens
INSERT INTO tb_personagens (nome, classe_id, poder_ataque, poder_defesa, vida)
VALUES ('Arqueiro 1', 1, 2100, 1100, 1000),
('Arqueiro 2', 1, 2200, 1200, 1100),
('Arqueiro 3', 1, 2300, 1300, 1200),
('Mago 1', 2, 1600, 1600, 900),
('Mago 2', 2, 1700, 1700, 1000),
('Guerreiro 1', 3, 2600, 2100, 1100),
('Guerreiro 2', 3, 2700, 2200, 1200),
('Atirador 1', 4, 1100, 2100, 1000),
('Atirador 2', 4, 1200, 2200, 1100);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_classes.nome_classe FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id_classe;

SELECT tb_personagens.nome, tb_classes.nome_classe FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id_classe WHERE tb_classes.nome_classe = 'Arqueiro';

    

