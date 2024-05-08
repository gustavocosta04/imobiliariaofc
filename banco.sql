CREATE DATABASE IF NOT EXISTS bancoimob;

USE bancoimob;

CREATE TABLE IF NOT EXISTS cadastro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    nome_completo VARCHAR(255) NOT NULL,
    CPF VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(20),
);

CREATE TABLE IF NOT EXISTS construtora (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imovel VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS corretor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vinculo INT,
    FOREIGN KEY (vinculo) REFERENCES construtora(id)
);

CREATE TABLE IF NOT EXISTS unidade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ref_imovel INT,
    qtd int,
    FOREIGN KEY (ref_imovel) REFERENCES construtora(id)
);


INSERT INTO Usuarios (email, senha, nome_completo, CPF, telefone, atuacao) VALUES
('usuario4@example.com', 'senha456', 'Maria Oliveira', '159.753.852-00', '(44) 1234-5678'),
('usuario5@example.com', 'senha789', 'João Pereira', '753.951.852-00', '(55) 9876-5432'),
('usuario6@example.com', 'senha123', 'Carla Santos', '852.753.951-00', '(66) 9876-1234'),
('usuario7@example.com', 'senha456', 'Pedro Costa', '456.789.123-00', '(77) 1234-5678'),
('usuario8@example.com', 'senha789', 'Ana Lima', '987.654.321-00', '(88) 9876-5432'),
('usuario9@example.com', 'senha123', 'Marcos Fonseca', '321.987.654-00', '(99) 9876-1234'),
('usuario10@example.com', 'senha456', 'Laura Mendes', '654.321.987-00', '(10) 1234-5678'),
('usuario11@example.com', 'senha789', 'Rafaela Alves', '456.321.987-00', '(11) 9876-5432'),
('usuario12@example.com', 'senha123', 'Gustavo Ferreira', '987.321.654-00', '(12) 9876-1234'),
('usuario13@example.com', 'senha456', 'Mariana Ramos', '123.789.456-00', '(13) 1234-5678');

INSERT INTO construtora (imovel) VALUES
('Base'),
('Emplavi'),
('Vilela e carvalho');

INSERT INTO unidade (ref_imovel, qtd) VALUES
(1, 10),  
(2, 20),  
(3, 5),   
(4, 8),   
(5, 15); 



