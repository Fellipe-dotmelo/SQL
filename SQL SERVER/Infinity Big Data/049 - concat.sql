-- CONCAT - JUNTA TEXTOS
-- TRANSLATE - SUBSTITU� CARACTERES (MAIS DE 1 POR CRIT�RIO)
-- REPLACE - SUBSTITU� CARACTERES (SOMENTE 1 POR REPLACE)

SELECT
CONCAT('voc� � um ', 'bom aluno') AS DESCREVE

SELECT TOP 5
FirstName AS [NOME],
LastName AS [SOBRENOME],
CONCAT(FirstName, ' ', LastName) AS [NOME COMPLETO],
CONCAT('O e-mail de ', FirstName, ' �: ', EmailAddress) AS [E-MAIL],
CONCAT('O endere�o de ', FirstName, ' �: ', AddressLine1) AS [ENDERE�O],
Gender AS [G�NERO],
TotalChildren AS [TOTAL CRIAN�AS]

FROM DimCustomer