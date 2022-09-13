CREATE DATABASE Clinica;
USE Clinica;

CREATE TABLE Paciente(
    ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255),
    CPF VARCHAR(11),
    PRIMARY KEY (ID)
);

CREATE TABLE Medico(
    CRM VARCHAR(20) NOT NULL,
    Nome VARCHAR(255),
    PRIMARY KEY(CRM)
);

CREATE TABLE Atendimento(
    ID INT NOT NULL AUTO_INCREMENT,
    Local VARCHAR(255),
    Data DATETIME,
    PacienteID INT NOT NULL,
    CRMMedico VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (PacienteID) REFERENCES Paciente(ID),
    FOREIGN KEY(CRMMedico) REFERENCES Medico(CRM)
);

INSERT INTO Paciente (Nome,CPF) VALUES
('Romarinho', '12312312312'),
('Otavio', '32132132132'),
('Thiago', '34534534534');

INSERT INTO Paciente (Nome,CPF) VALUES
('Romarinho', '12312312312'),
('Otavio', '32132132132'),
('Thiago', '34534534534');

INSERT INTO Medico (Nome,CRM) VALUES
('Mario', '00001'),
('Andre', '00002'),
('Caio', '00003');

INSERT INTO Atendimento (Local, Data, PacienteID, CRMMedico)VALUES
('Etec Ermelinda', '2022-05-25 08:30:05',1,'00003'),
('Postinho Santana', '2022-05-27 10:00:05',2,'00003'),
('Etec Ermelinda', '2022-06-15 13:34:05',3,'00002'),
('Postinho Santana', '2022-07-01 07:30:05',3,'00002'),
('Etec Ermelinda', '2022-08-14 14:30:05',1,'00001'),
('Postinho Santana', '2022-09-12 15:30:05',2,'00001');

SELECT * FROM Atendimento
INNER JOIN Paciente
ON Atendimento.PacienteID = Paciente.ID
INNER JOIN Medico
ON Atendimento.CRMMedico = Medico.CRM
WHERE Medico.Nome = 'Andre';