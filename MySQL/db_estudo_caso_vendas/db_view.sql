CREATE VIEW `VIEW_COMPRA_PRODUTO_CLIENTE_AA`
AS
SELECT tb_compra.compra_cod, prod_desc, cli_nome
	FROM `bd_estudo_caso_vendas`.`tb_compra`
    INNER JOIN `bd_estudo_caso_vendas`.`tb_prod_comp`
		ON tb_compra.compra_cod = tb_prod_comp.prod_cod
	INNER JOIN `bd_estudo_caso_vendas`.`tb_prod`
		ON tb_prod.prod_cod = tb_prod_comp.prod_cod
    INNER JOIN `bd_estudo_caso_vendas`.`tb_cli`
		ON compra_cli_cod = cli_cod;
        
SELECT * FROM `VIEW_COMPRA_PRODUTO_CLIENTE_AA`;