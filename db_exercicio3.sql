CREATE DATABASE Escola;

USE Escola;

-- Exercicio 3 - Escola

 CREATE TABLE estudantes (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    nota FLOAT,
    turma VARCHAR(10),
    data_matricula DATE
);

INSERT INTO estudantes VALUES
(1, 'Ana', 16, 8.5, 'A', '2022-01-15'),
(2, 'Eric', 17, 6.2, 'B', '2021-12-10'),
(3, 'Eduardo', 15, 9.0, 'A', '2022-02-20'),
(4, 'João', 16, 7.8, 'B', '2021-11-05'),
(5, 'Larissa', 15, 5.5, 'A', '2022-03-08'),
(6, 'Pedro', 17, 8.9, 'B', '2021-10-30'),
(7, 'Camila', 16, 6.7, 'A', '2022-04-12'),
(8, 'Felipe', 15, 7.2, 'B', '2021-09-25');

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 8.0 WHERE id = 2;

