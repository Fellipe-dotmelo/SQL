CREATE DATABASE SAUDE_MAIS;

USE SAUDE_MAIS;

CREATE TABLE Usuario(
	ID INT PRIMARY KEY IDENTITY,
	EMAIL VARCHAR(200),
,
,
,
	NOT NULL UNIQUE,
	SENHA VARCHAR(200),
,
,
,
	NOT NULL,
	TIPO_USUARIO INT NOT NULL
),
,
,
,
;

CREATE TABLE Paciente(
	ID INT PRIMARY KEY IDENTITY,
	ID_USUARIO INT FOREIGN KEY REFERENCES Usuario(ID),
,
,
,
	NOT NULL,
	NOME VARCHAR(200),
,
,
,
	NOT NULL,
	CPF CHAR(11),
,
,
,
	UNIQUE NOT NULL,
	RG CHAR(9),
,
,
,
	UNIQUE NOT NULL,
	TELEFONE CHAR(11),
,
,
,
	NOT NULL,
	DATA_NASCIMENTO DATE NOT NULL
),
,
,
,
;

CREATE TABLE Especialidade(
	ID INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(200),
,
,
,
	NOT NULL
),
,
,
,
;

CREATE TABLE Clinica(
	ID INT PRIMARY KEY IDENTITY,
	NOME_FANTASIA VARCHAR(200),
,
,
,
	UNIQUE NOT NULL,
	ENDERECO VARCHAR(250),
,
,
,
	NOT NULL,
	NUMERO INT NOT NULL,
	CEP CHAR(8),
,
,
,
	UNIQUE NOT NULL,
	RAZAO_SOCIAL VARCHAR(200),
,
,
,
	UNIQUE NOT NULL
),
,
,
,
;

CREATE TABLE Medico(
	ID INT PRIMARY KEY IDENTITY,
	ID_USUARIO INT FOREIGN KEY REFERENCES Usuario(ID),
,
,
,
	NOT NULL,
	NOME VARCHAR(200),
,
,
,
	NOT NULL,
	CRM CHAR(7),
,
,
,
	NOT NULL,
	ID_CLINICA INT FOREIGN KEY REFERENCES Clinica(ID),
,
,
,
	NOT NULL,
	ID_ESPECIALIDADE INT FOREIGN KEY REFERENCES Especialidade(ID),
,
,
,
	NOT NULL
),
,
,
,
;

CREATE TABLE Consulta(
	ID INT PRIMARY KEY IDENTITY,
	ID_MEDICO INT FOREIGN KEY REFERENCES Medico(ID),
,
,
,
	NOT NULL,
	ID_PACIENTE INT FOREIGN KEY REFERENCES Paciente(ID),
,
,
,
	NOT NULL,
	DATA_CONSULTA DATETIME NOT NULL,
	DESCRICAO TEXT,
	STATUS_CONSULTA INT NOT NULL
),
,
,
,
;