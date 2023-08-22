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
	--(5, null, 'Ricardo Rabelo', 201826, '2004/10/24', 'Tarde - DS', 0, null),
	--(1, null, 'Alexander', 221007, '2005/10/04', 'Tarde - DS', 0, null);
	--(2, null, 'Isaac', 221697, '2005/06/26', 'Tarde - DS', 0, null);
	(3, 'Vinicius Marques', 231135, 'Tarde - DS', 0, null);

-- Selects

SELECT * FROM Clube;
SELECT * FROM Gestores;
SELECT * FROM Integrantes;