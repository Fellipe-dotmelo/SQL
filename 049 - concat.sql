-- CONCAT - JUNTA TEXTOS
-- TRANSLATE - SUBSTITUÍ CARACTERES (MAIS DE 1 POR CRITÉRIO)
-- REPLACE - SUBSTITUÍ CARACTERES (SOMENTE 1 POR REPLACE)

SELECT
CONCAT('você é um ', 'bom aluno') AS DESCREVE

SELECT TOP 5
FirstName AS [NOME],
LastName AS [SOBRENOME],
CONCAT(FirstName, ' ', LastName) AS [NOME COMPLETO],
CONCAT('O e-mail de ', FirstName, ' é: ', EmailAddress) AS [E-MAIL],
CONCAT('O endereço de ', FirstName, ' é: ', AddressLine1) AS [ENDEREÇO],
Gender AS [GÊNERO],
TotalChildren AS [TOTAL CRIANÇAS]

FROM DimCustomer