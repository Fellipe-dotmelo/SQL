-- iniciando transação
start transaction;

-- inserindo cliente    
insert into tb_cli(cli_cod, cli_nome, cli_cpf, cli_end_rua, cli_end_num, cli_end_bairro, cli_end_cep)
values(2, 'cliente dois', '99988877708', 'Rua teste', '199', 'bairro teste', '722222222');

-- inserindo compra
insert into tb_compra(compra_cod, compra_cli_cod, compra_func_cod, compra_qtd_prod)
	values(2, 2, 1, 2);

-- inserindo produto
insert into tb_prod(prod_cod, prod_forn_cod, prod_desc, prod_vlr)
	values(4, '1', 'Quatro', 20);

insert into tb_prod(prod_cod, prod_forn_cod, prod_desc, prod_vlr)
	values(5, '1', 'Cinco', 30);

-- inserindo numero de venda
insert into tb_prod_comp(prod_cod, compra_cod)
	values(4, 2);

insert into tb_prod_comp(prod_cod, compra_cod)
	values(4, 2);

commit