
CREATE TABLE funcionarios (
  ID_MATRICULA INT(20) PRIMARY KEY,
  NOME VARCHAR(255) NOT NULL,
  CPF VARCHAR(11) NOT NULL,
  ORGAO VARCHAR(100) NOT NULL,
  CARGO VARCHAR(100) NOT NULL,
  FUNCAO VARCHAR(100) NOT NULL,
  SITUACAO VARCHAR(50) NOT NULL,
  COMPETENCIA_MES INT(11) NOT NULL,
  COMPETENCIA_ANO INT(11) NOT NULL,
  SALARIO_BRUTO DECIMAL(10,2) NOT NULL,
  VALOR_IRPF DECIMAL(7,2) NOT NULL,
  VALOR_BRUTO DECIMAL(10,2) NOT NULL,
  VALOR_LIQUIDO DECIMAL(10,2) NOT NULL
);

DESC funcionarios;