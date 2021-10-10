-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Matricula (
id_mat BIGINT(10) PRIMARY KEY,
data DATETIME,
id_alu BIGINT(10),
id_dis BIGINT(10)
)

CREATE TABLE Aluno (
id_alu BIGINT(10) PRIMARY KEY,
nome VARCHAR(100),
data_nascimento DATETIME
)

CREATE TABLE Disciplina (
id_dis BIGINT(10) PRIMARY KEY,
carga_horaria INTEGER,
nome VARCHAR(100)
)

ALTER TABLE Matricula ADD FOREIGN KEY(id_alu) REFERENCES Aluno (id_alu) ON DELETE CASCADE
ALTER TABLE Matricula ADD FOREIGN KEY(id_dis) REFERENCES Disciplina (id_dis) ON UPDATE CASCADE
