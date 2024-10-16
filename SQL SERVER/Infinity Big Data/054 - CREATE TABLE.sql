CREATE DATABASE TESTE

USE TESTE

-- CRIA TABELAS
CREATE TABLE VENDAS(
	ID INT PRIMARY KEY NOT NULL,
	PRODUCT_ID INT NOT NULL,
	CLIENTE VARCHAR(50),
	DATA_COMPRA DATE NULL,
	VALOR_TOTAL MONEY NOT NULL
)
GO

-- VISUALIZA A ESTRUTURA DA TABELA
sp_help VENDAS;

-- SELECIONA DADOS DA TABELA
SELECT * FROM VENDAS

--APAGA TABELA
DROP TABLE VENDAS

INSERT INTO VENDAS(ID, PRODUCT_ID, CLIENTE, DATA_COMPRA, VALOR_TOTAL) 
VALUES(2, 29, 'Marta', '19/12/2023', 110),
(3, 38, 'Luana', '06/08/2020', 385),
(4, 37, 'Frida', '01/06/2016', 493),
(5, 28, 'Daniela', '31/08/2024',186),
(6, 18, 'Romário', '05/09/2023',20),
(7, 24, 'Marcelo', '11/04/2024',2663),
(8, 44, 'Cristiano', '07/01/2024',164),
(9, 23, 'Everton', '09/12/2022',2795),
(10, 6, 'Gabriela', '06/10/2023',15),
(11, 44, 'Luan', '25/03/2024',82),
(12, 28, 'Luana', '15/10/2021', 186)

CREATE TABLE PRODUTO(
	ID INT NOT NULL PRIMARY KEY,
	NOME_PRODUTO VARCHAR(100) NOT NULL,
	CATEGORY_ID INT NOT NULL
)
GO

INSERT INTO PRODUTO(ID, NOME_PRODUTO, CATEGORY_ID)
VALUES(0,'Sapato',0),
(1,'Bolsa',0),
(2,'Calça',0),
(3,'Camisa',0),
(4,'Vestido',0),
(5,'Perfume',1),
(6,'Creme de Barbear',1),
(7,'Hidratante',1),
(8,'Shampoo',1),
(9,'Protetor Solar',1),
(10,'Geladeira',2),
(11,'Fogão',2),
(12,'TV',2),
(13,'Máquina de Lavar',2),
(14,'Máquina de Secar',2),
(15,'O Romance Exagerado',3),
(16,'Suspense Demais',3),
(17,'Terror Aterrorizante',3),
(18,'A Comédia Engraçada',3),
(19,'A História de SQL',3),
(20,'Ai-Fone',4),
(21,'Galáxia R10',4),
(22,'Chiai-homi',4),
(23,'Ruaei',4),
(24,'Nóquia',4),
(25,'Mouse',5),
(26,'Teclado',5),
(27,'Pen-Drive',5),
(28,'Impressora',5),
(29,'HD Externo',5),
(30,'Poltrona',6),
(31,'Almofada',6),
(32,'Cadeira',6),
(33,'Sofá',6),
(34,'Mesa',6),
(35,'Video-Game',7),
(36,'Máquina Fotográfica',7),
(37,'Notebook',7),
(38,'PC',7),
(39,'Secador de Cabelo',7),
(40,'Chuteira',8),
(41,'Tornozeleira',8),
(42,'Raquete',8),
(43,'Bola',8),
(44,'Pebolim',8),
(45,'Futebol 2020',9),
(46,'Iôiô',9),
(47,'Peão',9),
(48,'Bey-Blade',9),
(49,'Casinha de Boneca',9)

SELECT * FROM PRODUTO

CREATE TABLE CATEGORIA(
	ID INT NOT NULL PRIMARY KEY,
	NOME_CATEGORIA VARCHAR(150) NOT NULL
)
GO

INSERT INTO CATEGORIA(ID, NOME_CATEGORIA) 
VALUES(0,'Moda e Acessórios'),
(1,'Cosméticos e Perfumaria'),
(2,'Eletrodomésticos'),
(3,'Livros'),
(4,'Celulares'),
(5,'Informática'),
(6,'Casa e Decoração'),
(7,'Eletrônicos'),
(8,'Esporte e Lazer'),
(9,'Brinquedos e Games')


SELECT * FROM VENDAS
SELECT * FROM PRODUTO
SELECT * FROM CATEGORIA

SELECT
TB_VENDAS.ID AS [ID_VENDAS],
TB_VENDAS.CLIENTE,

TB_PRODUTO.ID AS [ID_PRODUTO],
TB_PRODUTO.NOME_PRODUTO,

TB_CATEGORIA.ID AS [ID_CATEGORIA],
TB_CATEGORIA.NOME_CATEGORIA

FROM VENDAS AS TB_VENDAS
JOIN PRODUTO AS TB_PRODUTO
ON TB_VENDAS.PRODUCT_ID = TB_PRODUTO.ID
JOIN CATEGORIA AS TB_CATEGORIA
ON TB_PRODUTO.CATEGORY_ID = TB_CATEGORIA.ID

