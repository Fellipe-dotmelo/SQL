/ / / Inser � � o / / / / / Cria um usuario com os parametros @email e @senha e define o tipo como paciente / / Em seguida,
cria um paciente e coloca esse monte de dados nele CREATE PROCEDURE InserirPaciente @EMAIL VARCHAR(200),
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
INSERT INTO
  Usuario(EMAIL, SENHA, TIPO_USUARIO),
,
,
,
VALUES
  (@EMAIL, @SENHA, 1),
,
,
,
;

/ / SCOPE_IDENTITY: Recebe o ID do ultimo registro inserido em qualquer banco de dados (
  nesse caso,
  como o ultimo registro � do unsuario inserido,
  ele cria um paciente e j � anexa ele ao usu
),
,
,
,
rio
),
,
,
INSERT INTO
  Paciente(
    ID_USUARIO,
    NOME,
    CPF,
    RG,
    TELEFONE,
    DATA_NASCIMENTO
  ),
,
,
,
VALUES
  (
    SCOPE_IDENTITY(),
,
,
,
,
    @NOME,
    @CPF,
    @RG,
    @TELEFONE,
    @DATA_NASCIMENTO
  ),
,
,
,
;

END
GO
  / / Cria um usuario com os parametros @email e @senha e define o tipo como medico / / Em seguida,
  cria um Medico e coloca esse monte de dados nele CREATE PROCEDURE InserirMedico @EMAIL VARCHAR(200),
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
INSERT INTO
  Usuario(EMAIL, SENHA, TIPO_USUARIO),
,
,
,
VALUES
  (@EMAIL, @SENHA, 2),
,
,
,
;

INSERT INTO
  Medico(
    ID_USUARIO,
    NOME,
    CRM,
    ID_CLINICA,
    ID_ESPECIALIDADE
  ),
,
,
,
VALUES
  (
    SCOPE_IDENTITY(),
,
,
,
,
    @NOME,
    @CRM,
    @ID_CLINICA,
    @ID_ESPECIALIDADE
  ),
,
,
,
;

END
GO
  / / Cria um usuario com os parametros @email e @senha e define o tipo como administrador CREATE PROCEDURE InserirAdmin @EMAIL VARCHAR(200),
,
,
,
,
  @SENHA VARCHAR(200),
,
,
,
  AS BEGIN
INSERT INTO
  Usuario(EMAIL, SENHA, TIPO_USUARIO),
,
,
,
VALUES
  (@EMAIL, @SENHA, 100),
,
,
,
;

END
GO
  / / Cria uma clinica CREATE PROCEDURE InserirClinica @NOME_FANTASIA VARCHAR(200),
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
INSERT INTO
  Clinica(
    NOME_FANTASIA,
    CEP,
    ENDERECO,
    NUMERO,
    RAZAO_SOCIAL
  ),
,
,
,
VALUES
  (
    @NOME_FANTASIA,
    @CEP,
    @ENDERECO,
    @NUMERO,
    @RAZAO_SOCIAL
  ),
,
,
,
;

END
GO
  / / Cria uma Consulta CREATE PROCEDURE InserirConsulta @DESCRICAO TEXT,
  @DATA_CONSULTA DATETIME,
  @STATUS_CONSULTA INT,
  @ID_PACIENTE INT,
  @ID_MEDICO INT AS BEGIN
INSERT INTO
  Consulta(
    DESCRICAO,
    DATA_CONSULTA,
    STATUS_CONSULTA,
    ID_PACIENTE,
    ID_MEDICO
  ),
,
,
,
VALUES
  (
    @DESCRICAO,
    @DATA_CONSULTA,
    @STATUS_CONSULTA,
    @ID_PACIENTE,
    @ID_MEDICO
  ),
,
,
,
;

END
GO
  / / Cria uma especialidade CREATE PROCEDURE InserirEspecialidade @NOME VARCHAR(200),
,
,
,
  AS BEGIN
INSERT INTO
  Especialidade(NOME),
,
,
,
VALUES
  (@NOME),
,
,
,
;

END