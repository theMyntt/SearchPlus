CREATE DATABASE ClubeDeLiteratura;

USE ClubeDeLiteratura;

-- Tables

CREATE TABLE Clube (
	ID_Clube INTEGER PRIMARY KEY NOT NULL,
	Nome VARCHAR(30) NOT NULL
);

CREATE TABLE Integrantes (
	ID_Integrante NUMERIC(6) PRIMARY KEY NOT NULL,
	Clube_ID_Clube INTEGER,
	Nome VARCHAR(50) NOT NULL,
	RM NUMERIC(6) NOT NULL,
	DataNasc DATE NOT NULL,
	Periodo VARCHAR(30) NOT NULL,
	Participacao INTEGER NOT NULL,
	Ult_Part DATE,
	FOREIGN KEY (Clube_ID_Clube) REFERENCES Clube(ID_Clube)
);

CREATE TABLE Gestores (
	ID_Gestores NUMERIC(4) PRIMARY KEY NOT NULL,
	Clube_ID_Clube INTEGER NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	RM NUMERIC(6) NOT NULL,
	DataNasc DATE NOT NULL,
	FOREIGN KEY (Clube_ID_Clube) REFERENCES Clube(ID_Clube)
);

-- Inserts
-- DATE = YYYY/MM/DD

INSERT INTO Clube (ID_Clube, Nome) VALUES 
	(1, 'Clube de Literatura'),
	(2, 'Clube de Cultura'),
	(3, 'Clube de Teatro'),
	(4, 'Clube de Slã');

INSERT INTO Gestores(ID_Gestores, Clube_ID_Clube, Nome, RM, DataNasc) VALUES
	(0001, 1, 'Alexander', 221007, '2005/10/04'),
	(0002, 2, 'Isaac', 221697, '2005/06/26'),
	(0003, 3, 'Gabrel Araújo', 231125, '2008/02/29'),
	(0004, 4, 'Vinicius Marques', 231135,'2007/07/27');

INSERT INTO Integrantes(ID_Integrante, Clube_ID_Clube, Nome, RM, DataNasc, Periodo, Participacao, Ult_Part) VALUES 
	(1, null, 'Alexander', 221007, '2005/10/04', '2BI', 0, null),
	(2, null, 'Isaac', 221697, '2005/06/26', '2BI', 0, null),
	(3, null, 'Vinicius Marques', 231135,'2007/07/27', '1BI', 0, null),
    (4, null, 'Gabriel Araújo', 231125, '2008/02/29', '1BI', 0, null),
    (5, null, 'Ricardo Rabelo', 201826, '2004/10/24', '2BI', 0, null),
    (6, null, 'Maryane Ferreira', 231756, '2007/08/13', '1BD', 0, null),
    (7, null, 'Nikolas dos Santos', 231170, '2008/03/11', '1AMT', 0, null),
    (8, null, 'Nicolas Alvez', 231320, '2007/07/01', '1AE', 0, null),
    (9, null, 'Maria Castro', 23130, '2008/05/31', '1BD', 0, null);

-- Selects

SELECT * FROM Clube;
SELECT * FROM Gestores;
SELECT * FROM Integrantes;