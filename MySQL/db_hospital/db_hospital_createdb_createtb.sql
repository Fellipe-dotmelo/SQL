-- criando database;
CREATE DATABASE IF NOT EXISTS hospital;
USE hospital;

-- CRIANDO TABELAS
CREATE TABLE IF NOT EXISTS `convenio` (
  `id_convenio` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255),
  `CNPJ` int,
  `tempo_carencia` timestamp
);
CREATE TABLE IF NOT EXISTS `especialidade` (
    `id_especialidade` int PRIMARY KEY AUTO_INCREMENT,
    `nome` varchar(255)
);
CREATE TABLE IF NOT EXISTS `consulta` (
   `id_consulta` int PRIMARY KEY AUTO_INCREMENT,
   `especialidade_id` int,
   FOREIGN KEY (especialidade_id) REFERENCES `especialidade`(`id_especialidade`),
   `id_medico` varchar(255),
   `id_paciente` varchar(255),
   `valor` float,
   `data_consulta` timestamp,
   `hora_consulta` time,
   `id_convenio` int,
   FOREIGN KEY (id_convenio) REFERENCES `convenio`(`id_convenio`)
);

CREATE TABLE IF NOT EXISTS `medico` (
    `id_medico` int PRIMARY KEY AUTO_INCREMENT,
    `especialidade` int,
    FOREIGN KEY (especialidade) REFERENCES `especialidade`(`id_especialidade`),
    `nome` varchar(255),
    `CPF` varchar(255),
    `CRM` int,
    `telefone` varchar(255)
);
CREATE TABLE IF NOT EXISTS `receita` (
  `id_receita` int PRIMARY KEY AUTO_INCREMENT,
  `paciente` varchar(255),
  `medico` varchar(255),
  `consulta` varchar(255),
  `quantidade` varchar(255),
  `medicamento` varchar(255)
);
CREATE TABLE IF NOT EXISTS `paciente` (
  `id_paciente` int PRIMARY KEY AUTO_INCREMENT,
  `rg_paciente` varchar(11),
  `cpf_paciente` varchar(11),
  `nome` varchar(255),
  `email_paciente` varchar(255),
  `data_nascimento` varchar(255),
  `telefone` varchar(255),
  `endereco` varchar(255),
  `id_convenio` int,
  FOREIGN KEY (id_convenio) REFERENCES `convenio`(`id_convenio`)
);
CREATE TABLE IF NOT EXISTS `enfermeiro` (
  `id_enfermeiro` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255),
  `CPF` int,
  `CRE` int
);

CREATE TABLE IF NOT EXISTS `internacao` (
  `id_internacao` int PRIMARY KEY AUTO_INCREMENT,
  `data_entrada` datetime,
  `data_prev_alta` datetime,
  `data_alta` datetime,
  `procedimento` varchar(255),
  `enfermeiro_id` int,
  FOREIGN KEY (enfermeiro_id) REFERENCES `enfermeiro`(`id_enfermeiro`)
);

CREATE TABLE IF NOT EXISTS `tipo_quarto` (
  `id_tipoquarto` int PRIMARY KEY AUTO_INCREMENT,
  `descricao` varchar(255),
  `valor_diaria` float
);

CREATE TABLE IF NOT EXISTS `quarto` (
  `id_quarto` int PRIMARY KEY AUTO_INCREMENT,
  `numero` int,
  `id_tipoquarto` int,
  FOREIGN KEY (`id_tipoquarto`) REFERENCES `tipo_quarto` (`id_tipoquarto`)
);

CREATE TABLE IF NOT EXISTS `internacao_enfermeiro` (
  `id_internacao` int,
  `id_enfermeiro` int,
  PRIMARY KEY (`id_internacao`, `id_enfermeiro`),
  FOREIGN KEY (`id_internacao`) REFERENCES `internacao` (`id_internacao`),
  FOREIGN KEY (`id_enfermeiro`) REFERENCES `enfermeiro` (`id_enfermeiro`)
);