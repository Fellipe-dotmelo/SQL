INSERT INTO
	bd_estudo_caso_vendas.tb_depto(depto_cod, depto_desc)
VALUES
(1, 'Vendas'),
INSERT INTO
	bd_estudo_caso_vendas.tb_depto(depto_cod, depto_desc)
VALUES
(2, 'Administrativo'),
select
	*
from
	tb_depto,
INSERT INTO
	bd_estudo_caso_vendas.tb_func(func_cod, func_depto, func_nome, func_cpf)
VALUES
	(1, 1, 'Iolanda', '12345678900'),
	(2, 2, 'Martin', '11122233344'),
select
	*
from
	tb_func,
INSERT INTO
	bd_estudo_caso_vendas.tb_forn(forn_cod, forn_nome, forn_tel)
VALUES
	(1, 'Fornecedor UM', '1122998877'),
	(2, 'Fornecedor DOIS', '1122998866'),
INSERT INTO
	bd_estudo_caso_vendas.tb_prod(prod_cod, prod_forn_cod, prod_desc, prod_vlr)
VALUES
	(1, 1, 'Produto UM', 10),
	(2, 2, 'Produto DOIS', 20),
	(3, 1, 'Produto TRÊS', 30),
select
	*
from
	tb_prod,
INSERT INTO
	bd_estudo_caso_vendas.tb_cli(
		cli_cod,
		cli_nome,
		cli_cpf,
		cli_end_rua,
		cli_end_num,
		cli_end_bairro,
		cli_end_cep
	)
VALUES
	(
		1,
		'Produto UM',
		'12112122199',
		'Rua Teste',
		'199',
		'Bairro Teste',
		'12109222'
	),
INSERT INTO
	bd_estudo_caso_vendas.tb_cli_tel(tel_cod, tel_cli_cod, tel_num)
VALUES
	(1, 1, '1133333333'),
INSERT INTO
	bd_estudo_caso_vendas.tb_compra(
		compra_cod,
		compra_cli_cod,
		compra_func_cod,
		compra_qtd_prod
	)
VALUES
	(1, 1, 1, 2),
INSERT INTO
	bd_estudo_caso_vendas.tb_prod_comp(prod_cod, compra_cod)
VALUES
	(1, 1),
	(2, 1),