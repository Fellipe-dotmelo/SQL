/*
WHERE -> TIRANDO DADOS NULOS
*/

SELECT
FirstName AS [NOME],
MiddleName AS [NOME DO MEIO],
LastName AS [SOBRENOME],
AddressLine1  AS [ENDERECO 01],
AddressLine2  AS [ENDERECO 02]
FROM DimCustomer

WHERE AddressLine2 IS NULL
AND MiddleName IS NOT NULL
