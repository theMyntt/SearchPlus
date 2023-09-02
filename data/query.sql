CREATE DATABASE CDL;

USE CDL;

-- Tables

CREATE TABLE Integrantes (
	ID_Integrante NUMERIC(6) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	RM NUMERIC(6) NOT NULL,
	DataNasc DATE NOT NULL,
	Periodo VARCHAR(30) NOT NULL,
	Participacao INTEGER NOT NULL,
	Ult_Part DATE,
	CONSTRAINT Integrantes_PK PRIMARY KEY (ID_Integrante)
);

CREATE TABLE Gestores (
	ID_Gestores NUMERIC(4) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	RM NUMERIC(6) NOT NULL,
	DataNasc DATE NOT NULL,
	CONSTRAINT Gestores_PK PRIMARY KEY (ID_Gestores)
);

-- Inserts
-- DATE = YYYY/MM/DD

INSERT INTO Gestores(ID_Gestores, Nome, RM, DataNasc) VALUES
	(1, 'Alexander', 221007, '2005/10/04'),
	(2, 'Isaac', 221697, '2005/06/26'),
	(3, 'Gabrel Araújo', 231125, '2008/02/29'),
	(4, 'Vinicius Marques', 231135,'2007/07/27');

INSERT INTO Integrantes(ID_Integrante, Nome, RM, DataNasc, Periodo, Participacao, Ult_Part) VALUES 
	(1,'Alexander', 221007, '2005/10/04', '2BI', 0, null),
	(2,'Isaac', 221697, '2005/06/26', '2BI', 0, null),
	(3,'Vinicius Marques', 231135,'2007/07/27', '1BI', 0, null),
    (4,'Gabriel Araújo', 231125, '2008/02/29', '1BI', 0, null),
    (5,'Ricardo Rabelo', 201826, '2004/10/24', '2BI', 0, null),
    (6,'Maryane Ferreira', 231756, '2007/08/13', '1BD', 0, null),
    (7,'Nikolas dos Santos', 231170, '2008/03/11', '1AMT', 0, null),
    (8,'Nicolas Alvez', 231320, '2007/07/01', '1AE', 0, null),
    (9,'Maria Castro', 231030, '2008/05/31', '1BD', 0, null),
	(10, 'Rayssa Assis', 231129, '2007/04/19', '1BI', 0, null),
	(11, 'Nicolas Matheus', 231071, '2006/06/20', '1AE', 0, null),
	(12, 'Isabel Cortez', 211671, '2007/08/16', '1BI', 0, null),
	(13, 'Vinicius de Jesus', 231116, '2007/07/16', '1BI', 0, null);

-- Selects

SELECT * FROM Gestores;
SELECT * FROM Integrantes;