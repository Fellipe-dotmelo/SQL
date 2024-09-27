CREATE DATABASE govgdf default charset utf8 default collate utf8_general_ci,
use govgdf,
CREATE TABLE Remuneracao_2013_01(
	NOME VARCHAR(60),
	CPF_FORMATADO CHAR(11),
	DC_EMPRESA VARCHAR(70),
	DC_CARGO VARCHAR(40),
	DC_FUNCAO VARCHAR(40),
	DC_GRUPO_SITFUNC VARCHAR(40),
	CO_MES_REFERENCIA INT,
	CO_EXERCICIO INT,
	VL_LIQUIDO DECIMAL(8, 2)
),
desc remuneracao_2013_01,
select
	*
from
	remuneracao_2013_01
where
	DC_CARGO like '%professor%',
select
	count(*)
from
	remuneracao_2013_01,