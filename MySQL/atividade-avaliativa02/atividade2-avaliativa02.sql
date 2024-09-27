-- Alocando funcionários a departamentos
alter table
  tb_func
add
  index fk_func_depto_idx (func_depto asc),
  -- continuando
alter table
  tb_func
add
  constraint fk_func_depto foreign key(func_depto) references tb_depto(depto_cod) on delete no action on update no action,
  -- registrando compras por funcionários
alter table
  tb_compra
add
  index fk_compra_func_idx (compra_func_cod),
alter table
  tb_compra
add
  constraint fk_compra_func foreign key(compra_func_cod) references tb_func(func_cod) on delete no action on update no action,
  -- cliente realizando compra
alter table
  tb_compra
add
  index fk_compra_cli_idx (compra_cli_cod asc),
alter table
  tb_compra
add
  constraint fk_compra_cli foreign key (compra_cli_cod) references tb_cli (cli_cod) on delete no action on update no action,
  -- um produto é fornecido por um fornecedor
alter table
  tb_prod
add
  constraint fk_prod_forn foreign key (prod_forn_cod) references tb_forn(forn_cod) on delete no action on update no action,
  -- cliente possui muitos telefones
alter table
  tb_cli_tel
add
  index fk_cli_tel_idx (tel_cli_cod asc),
alter table
  tb_cli_tel
add
  constraint fk_cli_tel foreign key (tel_cli_cod) references tb_cli(cli_cod) on delete no action on update no action,
  -- as compras possuem muitos produtos
alter table
  tb_prod_comp
add
  index fk_prod_comp_compra_idx (compra_cod asc),
alter table
  tb_prod_comp
add
  index fk_prod_comp_prod_idx (prod_cod asc),
alter table
  tb_prod_comp
add
  constraint fk_prod_comp_compra foreign key (compra_cod) references tb_compra(compra_cod) on delete no action on update no action,
alter table
  tb_prod_comp
add
  constraint fk_prod_comp_prod foreign key (prod_cod) references tb_prod (prod_cod) on delete no action on update no action,