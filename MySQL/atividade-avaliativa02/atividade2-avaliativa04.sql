SELECT
    tb_compra.compra_cod,
    tb_prod.prod_desc,
    tb_cli.cli_nome
FROM
    bd_estudo_caso_vendas.tb_compra
    INNER JOIN bd_estudo_caso_vendas.tb_prod_comp ON tb_compra.compra_cod = tb_prod_comp.compra_cod
    INNER JOIN bd_estudo_caso_vendas.tb_prod ON tb_prod.prod_cod = tb_prod_comp.compra_cod
    INNER JOIN bd_estudo_caso_vendas.tb_cli ON tb_compra.compra_cli_cod = cli_cod,
    use bd_estudo_caso_vendas,
SELECT
    *
FROM
    TB_FUNC
    INNER JOIN tb_depto ON depto_cod = func_depto,
select
    compra_cod,
    cli_nome,
    func_nome
from
    tb_compra
    inner join tb_func on func_cod = compra_func_cod
    inner join tb_cli on cli_cod = compra_cli_cod,