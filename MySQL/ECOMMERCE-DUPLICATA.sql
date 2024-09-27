USE ECOMMERCE,
CREATE TABLE DUPLICATA (
    NUMERO INTEGER NOT NULL,
    NOME CHAR(40),
    VALOR DECIMAL(10, 2),
    VENCIMENTO DATE,
    BANCO CHAR(10),
    PRIMARY KEY(NUMERO)
),
INSERT INTO
    DUPLICATA (NUMERO, NOME, VALOR, VENCIMENTO, BANCO)
VALUES
    (
        100100,
        'abc papelaria',
        5000.00,
        '2017-01-20',
        'itau'
    ),
    (
        100110,
        'livraria fernandes',
        2500.00,
        '2017-01-22',
        'itau'
    ),
    (
        100120,
        'livraria fernandes',
        1500.00,
        '2016-01-22',
        'bradesco'
    ),
    (
        100130,
        'abc papelaria',
        8000.00,
        '2016-10-15',
        'santander'
    ),
    (
        200130,
        'Ler e saber',
        11000.00,
        '2018-09-26',
        'itau'
    ),
    (
        250350,
        'papelaria silva',
        1500.00,
        '2018-01-26',
        'bradesco'
    ),
    (
        250360,
        'Livros mm',
        500.00,
        '2018-12-18',
        'santander'
    ),
    (
        259370,
        'Livros mm',
        3488.08,
        '2018-02-25',
        'santander'
    ),
    (
        258388,
        'papelaria silva',
        3588.88,
        '2018-04-26',
        'banco do brasil'
    ),
    (
        453360,
        'livros e cia',
        1500.89,
        '2018-01-15',
        'itau'
    ),
    (
        453365,
        'Livres mm',
        5488.08,
        '2018-06-15',
        'bradesco'
    ),
    (
        453370,
        'papelaria silva',
        2350.00,
        '2017-12-22',
        'itau'
    ),
    (
        453380,
        'livros e cia',
        1550.0,
        '2017-02-21',
        'banco do brasil'
    ),
    (
        980130,
        'abe papelaria',
        4080.00,
        '2016-12-11',
        'itau'
    ),
    (
        985502,
        'papel e afins',
        2500.00,
        '2016-03-12',
        'itau'
    ),
    (
        888132,
        'LER E SABER',
        2500.00,
        '2017-03-05',
        'itau'
    ),
    (
        985001,
        'RISK',
        3500.00,
        '2010-01-12',
        'BRADESCO'
    ),
UPDATE
    DUPLICATA
SET
    BANCO = 'SANTANDER'
WHERE
    NUMERO = '985502',
UPDATE
    DUPLICATA
SET
    BANCO = 'BB'
WHERE
    NUMERO = '100120',
SELECT
    *
FROM
    DUPLICATA,
    --
DELETE FROM
    DUPLICATA
WHERE
    NUMERO = 888132,
    --
DELETE FROM
    DUPLICATA
WHERE
    NUMERO = 985001,
    --
DELETE FROM
    DUPLICATA
WHERE
    NUMERO = 985502,
    --
INSERT INTO
    DUPLICATA (NUMERO, NOME, VALOR, VENCIMENTO, BANCO)
VALUES
    (
        770710,
        'LIVRARIA FERNANDES',
        2500.30,
        '2016-09-15',
        'SANTANDER'
    ),
    (
        985001,
        'ABC PAPELARIA',
        3000.00,
        '2016-09-11',
        'ITAU'
    ),
    (
        985002,
        'PAPEL E AFINS',
        3000.00,
        '2016-03-12',
        'SANTANDER'
    ),
DELETE FROM
    DUPLICATA
WHERE
    NUMERO = 707110,
SELECT
    *
FROM
    DUPLICATA
WHERE
    NUMERO = 453365,
SELECT
    *
FROM
    DUPLICATA
ORDER BY
    NOME,
SELECT
    NOME,
    BANCO,
    VALOR,
    VENCIMENTO
FROM
    DUPLICATA
ORDER BY
    VENCIMENTO,
SELECT
    *
FROM
    duplicata
WHERE
    NUMERO = 100120,
UPDATE
    DUPLICATA
SET
    BANCO = 'BANCO DO BRASIL'
WHERE
    NUMERO = 100120,