CREATE DATABASE FaculdadeDB;
USE FaculdadeDB;

CREATE TABLE Curso (
    ID_Curso INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Codigo VARCHAR(10),
    Duracao_Semestres INT
);

CREATE TABLE Aluno (
    ID_Aluno INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Matricula VARCHAR(20),
    CPF CHAR(11),
    Email VARCHAR(100),
    ID_Curso INT,
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

CREATE TABLE Professor (
    ID_Professor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Matricula VARCHAR(20),
    Area_Formacao VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Disciplina (
    ID_Disciplina INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Codigo VARCHAR(20),
    Carga_Horaria INT,
    ID_Curso INT,
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

CREATE TABLE Turma (
    ID_Turma INT AUTO_INCREMENT PRIMARY KEY,
    ID_Disciplina INT,
    ID_Professor INT,
    Semestre VARCHAR(10),
    Ano INT,
    FOREIGN KEY (ID_Disciplina) REFERENCES Disciplina(ID_Disciplina),
    FOREIGN KEY (ID_Professor) REFERENCES Professor(ID_Professor)
);

CREATE TABLE Nota (
    ID_Nota INT AUTO_INCREMENT PRIMARY KEY,
    ID_Aluno INT,
    ID_Turma INT,
    Nota DECIMAL(4,2),
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Turma) REFERENCES Turma(ID_Turma)
);
