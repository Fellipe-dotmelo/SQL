create user 'fellipemelo' @'localhost' identified by '123456',
create user 'fernanda' @'localhost' identified by '123456',
create user 'jefferson' @'localhost' identified by '123456',
create user 'lazaro' @'localhost' identified by '123456',
create user 'phelipe' @'localhost' identified by '123456',
create user 'marcos' @'localhost' identified by '123456',
create user 'hudson' @'localhost' identified by '123456',
SELECT
  user,
  host
FROM
  mysql.user,
  -- permissão global de consulta
  grant
select
  on *.* to fellipemelo @localhost,
  grant
insert
  on bd_estudo_caso_vendas.* to fellipemelo @localhost,
  grant
insert
  on bd_estudo_caso_vendas.tb_func to fellipemelo @localhost,
  grant
select
  (depto_cod, depto_desc),
update
(depto_desc) on bd_estudo_caso_vendas.tb_depto to fellipemelo @localhost,