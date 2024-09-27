-- CREATE SCHEMA `bd_exercicio`,
USE `bd_exercicio`,
-- Criação das tabelas
CREATE TABLE `bd_exercicio`.`tb_funcionario`(
	`func_codigo` int not null primary key,
	`func_nome` varchar(60) null,
	`func_cpf` varchar(13) null,
	`forn_end` varchar(90) null,
	`forn_salario` numeric,
	`ger_depto_cod` int,
	`trab_depto_cod` int,
	`proj_cod` int
),
CREATE TABLE `bd_exercicio`.`tb_departamento`(
	`depto_codigo` int not null primary key,
	`depto_nome` varchar(60) null,
	`local_cod` int
),
CREATE TABLE `bd_exercicio`.`tb_projeto`(
	`proj_codigo` int not null primary key,
	`proj_numero` int,
	`depto_cod` int,
	`local_cod` int
),
CREATE TABLE `bd_exercicio`.`tb_local`(
	`local_codigo` int not null primary key,
	`local_desc` varchar(60) null
),
-- Indice e FK de funcionário/gerência e departamento
ALTER TABLE
	`bd_exercicio`.`tb_funcionario`
ADD
	INDEX `fk_ger_depto_cod_idx` (`ger_depto_cod` ASC),
ALTER TABLE
	`bd_exercicio`.`tb_funcionario`
ADD
	CONSTRAINT `fk_ger_depto_cod` FOREIGN KEY (`ger_depto_cod`) REFERENCES `bd_exercicio`.`tb_departamento` (`depto_codigo`),
	-- Indice e FK de funcionário/trabalha_para/departamento
ALTER TABLE
	`bd_exercicio`.`tb_funcionario`
ADD
	INDEX `fk_trab_depto_cod_idx` (`trab_depto_cod` ASC),
ALTER TABLE
	`bd_exercicio`.`tb_funcionario`
ADD
	CONSTRAINT `fk_trab_depto_cod` FOREIGN KEY (`trab_depto_cod`) REFERENCES `bd_exercicio`.`tb_departamento` (`depto_codigo`),
	-- Indice e FK de funcionário/trabalha_para/projeto
ALTER TABLE
	`bd_exercicio`.`tb_funcionario`
ADD
	INDEX `fk_proj_depto_cod_idx` (`proj_cod` ASC),
ALTER TABLE
	`bd_exercicio`.`tb_funcionario`
ADD
	CONSTRAINT `fk_proj_cod` FOREIGN KEY (`proj_cod`) REFERENCES `bd_exercicio`.`tb_projeto` (`proj_codigo`),
	-- Indice e FK de local/atributo multivalorado
ALTER TABLE
	`bd_exercicio`.`tb_departamento`
ADD
	INDEX `fk_local_depto_cod_idx` (`local_cod` ASC),
ALTER TABLE
	`bd_exercicio`.`tb_departamento`
ADD
	CONSTRAINT `fk_depto_local_cod` FOREIGN KEY (`local_cod`) REFERENCES `bd_exercicio`.`tb_local` (`local_codigo`),
	-- Indice e FK de local/atributo multivalorado
ALTER TABLE
	`bd_exercicio`.`tb_projeto`
ADD
	INDEX `fk_local_proj_cod_idx` (`local_cod` ASC),
ALTER TABLE
	`bd_exercicio`.`tb_projeto`
ADD
	CONSTRAINT `fk_proj_local_cod` FOREIGN KEY (`local_cod`) REFERENCES `bd_exercicio`.`tb_local` (`local_codigo`),
	-- Inserindo dados na tabela local
INSERT INTO
	`bd_exercicio`.`tb_local`(local_codigo, local_desc)
VALUES
	(1, 'São Paulo'),
INSERT INTO
	`bd_exercicio`.`tb_local`(local_codigo, local_desc)
VALUES
	(2, 'Minas Gerais'),
INSERT INTO
	`bd_exercicio`.`tb_local`(local_codigo, local_desc)
VALUES
	(3, 'Rio de Janeiro'),
	-- Inserindo dados na tabela departamento
INSERT INTO
	`bd_exercicio`.`tb_departamento`(depto_codigo, depto_nome, local_cod)
VALUES
	(1, 'TI', 1),
	(2, 'RH', 2),
	(3, 'ADM', 3),
	-- Inserindo dados na tabela projeto
INSERT INTO
	`bd_exercicio`.`tb_projeto`(proj_codigo, proj_numero, depto_cod, local_cod)
VALUES
	(1, 11, 1, 1),
	(2, 22, 2, 2),
	-- Inserindo funcionário que trabalha no DEPTO 1 e PROJETO 1 SEM GERENCIAR NENHUM DEPARTAMENTO
	-- Inserindo funcionário que trabalha e gerência o DEPTO 2 e também trabalha no PROJETO 2
INSERT INTO
	`bd_exercicio`.`tb_funcionario`(
		func_codigo,
		func_nome,
		func_cpf,
		forn_end,
		forn_salario,
		ger_depto_cod,
		trab_depto_cod,
		proj_cod
	)
VALUES
	(
		1,
		'José Silva',
		'12312312344',
		'Endereco',
		2000,
		null,
		1,
		1
	),
	(
		2,
		'Ana Silva',
		'12345678944',
		'Endereco',
		3000,
		2,
		2,
		2
	),
	-- inner join 
select
	func_nome,
	depto_nome,
	proj_numero
from
	`bd_exercicio`.`tb_funcionario`
	inner join `bd_exercicio`.`tb_departamento` on depto_codigo = trab_depto_cod
	inner join `bd_exercicio`.`tb_projeto` on proj_codigo = proj_cod