-- Tables

CREATE TABLE Clube (
	ID_Clube INTEGER PRIMARY KEY NOT NULL,
	Nome VARCHAR(30) NOT NULL
);

CREATE TABLE Integrantes (
	ID_Integrante NUMERIC(6) PRIMARY KEY NOT NULL,
	Clube_ID_Clube INTEGER NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	RM NUMERIC(6) NOT NULL,
	DataNasc DATE NOT NULL,
	Periodo VARCHAR(30) NOT NULL,
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

INSERT INTO Clube (ID_Clube) VALUES 
	(1, 'Clube de Literatura'),
	(2, 'Clube de Cultura'),
	(3, 'Clube de Teatro'),
	(4, 'Clube de Slã');

INSERT INTO Gestores(ID_Gestores, Clube_ID_Clube, Nome, RM, DataNasc) VALUES
	(0001, 1, 'Alexander', 221007, '2005/10/04'),
	(0002, 2, 'Isaac', 221697, '2005/06/26'),
	(0003, 3, 'Gabrel Araújo', 231125, '2008/02/29');

-- Selects

SELECT * FROM Clube;
SELECT * FROM Gestores;
SELECT * FROM Integrantes;