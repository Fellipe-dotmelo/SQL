SELECT
FirstName AS [NOME],
MiddleName AS [NOME DO MEIO],
LastName AS [SOBRENOME],
AddressLine1 AS [ENDERECO 1],
AddressLine2 AS [ENDERECO 2]
FROM DBO.DimCustomer
WHERE AddressLine2 IS NOT NULL
AND MiddleName IS NOT NULL