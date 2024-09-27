CREATE DATABASE bd_estudo_caso_vendas default charset utf8 default collate utf8_general_ci,
use bd_estudo_caso_vendas,
create table tb_forn(
    forn_cod int not null primary key,
    forn_nome varchar (60) null,
    forn_tel varchar (60) null
),
create table tb_depto(
    depto_cod int not null primary key,
    depto_desc varchar (60) null
),
create table tb_func(
    func_cod int not null primary key,
    func_depto int not null,
    func_nome varchar (50) not null,
    func_cpf varchar (18) not null
),
create table tb_prod(
    prod_cod int not null primary key,
    prod_forn_cod int not null,
    prod_desc varchar (60) not null,
    prod_vlr decimal null
),
create table tb_compra(
    compra_cod int not null primary key,
    compra_cli_cod int not null,
    compra_func_cod int not null,
    compra_qtde_prod int not null
),
create table tb_cli(
    cli_cod int not null primary key,
    cli_nome varchar(60) null,
    cli_cpf varchar(18) null,
    cli_end_rua varchar(40) null,
    cli_end_num varchar(5) null,
    cli_end_bairro varchar(30) null,
    cli_end_cep varchar(9) null
),
create table tb_cli_tel(
    tel_cod int not null primary key,
    tel_cli_cod int not null,
    tel_num varchar(13) not null
),
create table tb_prod_comp(
    prod_cod int not null,
    compra_cod int not null
),