select 
	compra_cod,
	cli_nome,
	func_nome
from tb_compra
inner join tb_func
	on func_cod = compra_func_cod
inner join tb_cli
	on cli_cod = compra_cli_cod;