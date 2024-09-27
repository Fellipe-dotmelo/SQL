CREATE DATABASE DBTESTE
default charset utf8
default collate utf8_general_ci;

/*
1. Criar arquivo / database com nome dbteste
2. Criar tabelas com seguintes nomes (servidores1,
servidores2, 
servidores3, 
servidores4, 
servidores5, 
servidores6) com as colunas abaixo:
*/

/*
inserir quantidade de 100 registros para cada tabela
Realizar consulta dos registro de cada tabela e exportar relatório em PDF
*/

USE DBTESTE;

create table servidores1 (
    NOME varchar (60),
    CPF_FORMATADO varchar (60),
    DC_EMPRESA varchar (60),
    DC_CARGO varchar (30),
    DC_FUNCAO varchar (30),
    DC_GRUPO_SITFUNC varchar (30),
    CO_MES_REFERENCIA int,
    CO_EXERCICIO int,
    VL_LIQUIDO varchar (60)
);

create table servidores2 (
    NOME varchar (60),
    CPF_FORMATADO varchar (60),
    DC_EMPRESA varchar (60),
    DC_CARGO varchar (30),
    DC_FUNCAO varchar (30),
    DC_GRUPO_SITFUNC varchar (30),
    CO_MES_REFERENCIA int,
    CO_EXERCICIO int,
    VL_LIQUIDO varchar (60)
);

create table servidores3 (
    NOME varchar (60),
    CPF_FORMATADO varchar (60),
    DC_EMPRESA varchar (60),
    DC_CARGO varchar (30),
    DC_FUNCAO varchar (30),
    DC_GRUPO_SITFUNC varchar (30),
    CO_MES_REFERENCIA int,
    CO_EXERCICIO int,
    VL_LIQUIDO varchar (60)
);

create table servidores4 (
    NOME varchar (60),
    CPF_FORMATADO varchar (60),
    DC_EMPRESA varchar (60),
    DC_CARGO varchar (30),
    DC_FUNCAO varchar (30),
    DC_GRUPO_SITFUNC varchar (30),
    CO_MES_REFERENCIA int,
    CO_EXERCICIO int,
    VL_LIQUIDO varchar (60)
);

create table servidores5 (
    NOME varchar (60),
    CPF_FORMATADO varchar (60),
    DC_EMPRESA varchar (60),
    DC_CARGO varchar (30),
    DC_FUNCAO varchar (30),
    DC_GRUPO_SITFUNC varchar (30),
    CO_MES_REFERENCIA int,
    CO_EXERCICIO int,
    VL_LIQUIDO varchar (60)
);

create table servidores6 (
    NOME varchar (60),
    CPF_FORMATADO varchar (60),
    DC_EMPRESA varchar (60),
    DC_CARGO varchar (30),
    DC_FUNCAO varchar (30),
    DC_GRUPO_SITFUNC varchar (30),
    CO_MES_REFERENCIA int,
    CO_EXERCICIO int,
    VL_LIQUIDO varchar (60)
);

SELECT * FROM SERVIDORES1;
SELECT * FROM SERVIDORES2;
SELECT * FROM SERVIDORES3;
SELECT * FROM SERVIDORES4;
SELECT * FROM SERVIDORES5;
SELECT * FROM SERVIDORES6;