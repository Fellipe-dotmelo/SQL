/*4- Criar tabela*/

CREATE TABLE funcionarios (
	matricula int, 
    data_nascimento date, 
    sexo enum('M', 'F'),
    naturalidade varchar(20),
    lotacao varchar(20),
    cpf  varchar(11)
) default charset = utf8;

/*5- Descrever/Mostrar tabela*/
DESC funcionarios;

USE governodf;

DROP database governodf;