create table if not exists banco(
	numero integer not null,
	nome varchar(50) not null,
	ativo boolean not null default true,
	data_criacao timestamp not null default current_timestamp,
	primary key (numero)
),
create table if not exists agencia(
	banco_numero integer not null,
	numero integer not null,
	nome varchar(80) not null,
	ativo boolean not null default true,
	data_criacao timestamp not null default current_timestamp,
	primary key (banco_numero, numero),
	foreign key (banco_numero) references banco (numero)
),
create table if not exists cliente (
	numero bigserial primary key,
	nome varchar(120) not null,
	email varchar(250) not null,
	ativo boolean not null default true,
	data_crfacao timestamp not null default current_timestamp
),
create table if not exists conta_corrente(
	banco_numero integer not null,
	agencia_numero integer not null,
	numero bigint not null,
	digito smallint not null,
	cliente_numero bigint not null,
	ativo boolean not null default true,
	data_criacao timestamp not null default current_timestamp,
	primary key(
		banco_numero,
		agencia_numero,
		numero,
		digito,
		cliente_numero
	),
	foreign key(banco_numero, agencia_numero) references agencia(banco_numero, numero),
	foreign key(cliente_numero) references cliente(numero)
),
create table if not exists tipo_transacao(
	id smallserial primary key,
	nome varchar(50) not null,
	ativo boolean not null default true,
	data_criacao timestamp not null default current_timestamp
),

CREATE TABLE IF NOT EXISTS cliente_transacoes (
	id BIGSERIAL PRIMARY KEY,
	banco_numero INTEGER NOT NULL,
	agencia_numero INTEGER NOT NULL,
	conta_corrente_numero BIGINT NOT NULL,
	conta_corrente_digito SMALLINT NOT NULL,
	cliente_numero BIGINT NOT NULL,
	tipo_transacao_id SMALLINT NOT NULL,
	valor NUMERIC(15,2) NOT NULL,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (banco_numero,agencia_numero,conta_corrente_numero,conta_corrente_digito,cliente_numero) 
	REFERENCES conta_corrente(banco_numero,agencia_numero,numero,digito,cliente_numero)
);