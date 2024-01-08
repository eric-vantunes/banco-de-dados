CREATE DATABASE rh;

USE rh;

-- Exercicio 1 - DB Generation
CREATE TABLE colaboradores (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    departamento VARCHAR(50),
    data_admissao DATE
);

INSERT INTO colaboradores VALUES
(1, 'Eric', 'Desenvolvedor Junior', 4000.00, 'Desenvolvimento de Software', '2023-11-10'),
(2, 'Joao', 'Analista de Sistemas', 6.000, 'T.I', '2022-01-10'),
(3, 'Lucas', 'Tech Lead', 12000.00, 'Desenvolvimento de Software', '2022-03-7'),
(4, 'Maria', 'Auxiliar Administrativo', 1500.00, 'Administrativo', '2023-06-10'),
(5, 'Jualiana', 'Analista RH', 5000.00, 'RH', '2023-03-05');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 2500.00 WHERE id = 4;


