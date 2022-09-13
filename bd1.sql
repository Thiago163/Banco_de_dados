create DATABASE Dados;
USE Dados;

create TABLE Produtos(
	ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255),
    Descricao VARCHAR(255),
    Precos double,
	Quantidade_estoque INT,
    PRIMARY KEY (ID)
);

INSERT INTO Produtos(Nome, Descricao, Precos, Quantidade_estoque)
VALUES 
('Papel higienico', 'cheiroso', 400, 194),
('Sabonete', 'cheiroso', 400, 940),
('Aspirina', 'cheiroso', 1400, 94),
('OMO', 'cheiroso', 15000, 9),
('Desifetante', 'cheiroso', 400, 4),
('Papel higienico', 'cheiroso', 400, 194),
('Amaciante', 'cheiroso', 400, 940),
('veja', 'cheiroso', 140000, 94),
('OMO', 'cheiroso', 1500, 9),
('Desifetante', 'cheiroso', 400, 4);

select* from Produtos where Nome LIKE 'a%';