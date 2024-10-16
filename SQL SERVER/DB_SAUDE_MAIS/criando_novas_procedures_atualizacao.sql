/ / Atualiza os valores de um Paciente CREATE PROCEDURE AtualizarPaciente @ID INT,
@EMAIL VARCHAR(200),
,
,
,
,
@SENHA VARCHAR(200),
,
,
,
,
@NOME VARCHAR(200),
,
,
,
,
@CPF CHAR(11),
,
,
,
,
@RG CHAR(9),
,
,
,
,
@TELEFONE CHAR(11),
,
,
,
,
@DATA_NASCIMENTO DATE AS BEGIN
UPDATE
  Paciente
SET
  NOME = @NOME,
  CPF = @CPF,
  RG = @RG,
  TELEFONE = @TELEFONE,
  DATA_NASCIMENTO = @DATA_NASCIMENTO
WHERE
  ID = @ID;

DECLARE @IDUsuario int;

/ / DECLARA UMA VARIAVEL TEMPORARIA PARA ARMAZENAR O ID DO PACIENTE
SELECT
  @IDUsuario = ID_USUARIO
FROM
  Paciente
WHERE
  ID = @ID;

/ / AQUI O ID DO USUARIO SER � IGUAL AO USUARIO REFERENCIADO DO PACIENTE SELECIONADO PELO ID
UPDATE
  Usuario
SET
  EMAIL = @EMAIL,
  SENHA = @SENHA
WHERE
  ID = @IDUsuario;

END
GO
  / / Atualiza os valores de um Medico CREATE PROCEDURE AtualizarMedico @ID INT,
  @EMAIL VARCHAR(200),
,
,
,
,
  @SENHA VARCHAR(200),
,
,
,
,
  @NOME VARCHAR(200),
,
,
,
,
  @CRM CHAR(7),
,
,
,
,
  @ID_CLINICA INT,
  @ID_ESPECIALIDADE INT AS BEGIN
UPDATE
  Medico
SET
  NOME = @NOME,
  CRM = @CRM,
  ID_CLINICA = @ID_CLINICA,
  ID_ESPECIALIDADE = @ID_ESPECIALIDADE
WHERE
  ID = @ID;

DECLARE @IDUsuario int;

SELECT
  @IDUsuario = ID_USUARIO
FROM
  Paciente
WHERE
  ID = @ID;

;

UPDATE
  Usuario
SET
  EMAIL = @EMAIL,
  SENHA = @SENHA
WHERE
  ID = @IDUsuario;

END
GO
  CREATE PROCEDURE AtualizarEspecialidade @ID INT,
  @NOME VARCHAR(200),
,
,
,
  AS BEGIN
UPDATE
  Especialidade
SET
  NOME = @NOME
WHERE
  ID = @ID;

END
GO
  CREATE PROCEDURE AtualizarClinica @ID INT,
  @NOME_FANTASIA VARCHAR(200),
,
,
,
,
  @CEP CHAR(8),
,
,
,
,
  @ENDERECO VARCHAR(250),
,
,
,
,
  @NUMERO INT,
  @RAZAO_SOCIAL VARCHAR(200),
,
,
,
  AS BEGIN
UPDATE
  Clinica
SET
  NOME_FANTASIA = @NOME_FANTASIA,
  CEP = @CEP,
  ENDERECO = @ENDERECO,
  NUMERO = @NUMERO,
  RAZAO_SOCIAL = @RAZAO_SOCIAL
WHERE
  ID = @ID;

END
GO
  / / Atualiza todas as informa � � es de uma consulta CREATE PROCEDURE AtualizarConsulta @ID INT,
  @DESCRICAO TEXT,
  @DATA_CONSULTA DATETIME,
  @STATUS_CONSULTA INT,
  @ID_MEDICO INT AS BEGIN
UPDATE
  Consulta
SET
  DESCRICAO = @DESCRICAO,
  DATA_CONSULTA = @DATA_CONSULTA,
  STATUS_CONSULTA = @STATUS_CONSULTA,
  ID_MEDICO = @ID_MEDICO
WHERE
  ID = @ID;

END
GO