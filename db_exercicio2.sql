CREATE DATABASE ecommerce;

USE ecommerce;

-- Exercicio 2 - E-commerce

 CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    descricao TEXT,
    preco DECIMAL(10, 2),
    estoque INT,
    categoria VARCHAR(50)
);

INSERT INTO produtos VALUES
(1, 'Smartphone Galaxy', 'Smartphone de última geração', 899.99, 50, 'Eletrônicos'),
(2, 'Notebook Dell', 'Notebook com processador rápido', 1200.00, 30, 'Informática'),
(3, 'Câmera Sony', 'Câmera DSLR de alta resolução', 699.50, 20, 'Fotografia'),
(4, 'Fones de Ouvido Airpods', 'Fones de ouvido sem fio', 12000, 100, 'Áudio'),
(5, 'Tablet Samsung', 'Tablet com tela retina', 499.00, 40, 'Eletrônicos'),
(6, 'Smartwatch Apple Watch', 'Relógio inteligente com monitor de saúde', 1300, 60, 'Acessórios'),
(7, 'Impressora HP', 'Impressora a laser de alta velocidade', 399.99, 15, 'Informática'),
(8, 'Caixa de Som JBL', 'Caixa de som Bluetooth', 600.00, 80, 'Áudio');

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 1200.00 WHERE id = 4;
