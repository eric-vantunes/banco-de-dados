CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Tabela categorias 
CREATE TABLE tb_categorias (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  nome_categoria VARCHAR(255) NOT NULL,
  tamanho VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_categoria)
);

-- Tabela pizzas 
CREATE TABLE tb_pizzas (
  id_pizza INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  categoria_id INT NOT NULL,
  PRIMARY KEY (id_pizza),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id_categoria)
);
-- Inserção da tabela categorias 
INSERT INTO tb_categorias (nome_categoria, tamanho)
VALUES ('Salgada', 'Grande'),
('Salgada', 'Média'),
('Salgada', 'Pequena'),
('Doce', 'Grande'),
('Doce', 'Média');

-- Inserção da tabela pizzas
INSERT INTO tb_pizzas (nome, descricao, valor, categoria_id)
VALUES ('Pizza de Calabresa', 'Pizza com molho de tomate, mussarela, calabresa e orégano', 45.00, 1),
('Pizza de Frango com Catupiry', 'Pizza com molho de tomate, mussarela, frango desfiado e catupiry', 50.00, 1),
('Pizza de Pepperoni', 'Pizza com molho de tomate, mussarela, pepperoni, pimentão verde, vermelho, laranja e amarelo', 55.00, 1),
('Pizza de Chocolate', 'Pizza com massa de chocolate, brigadeiro, morango e chantilly', 60.00, 2),
('Pizza de Frutas', 'Pizza com massa branca, frutas da estação, chantilly e chocolate', 65.00, 2);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome, tb_categorias.nome_categoria FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id_categoria;

SELECT tb_pizzas.nome, tb_categorias.nome_categoria FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id_categoria WHERE tb_categorias.nome_categoria = 'Doce';