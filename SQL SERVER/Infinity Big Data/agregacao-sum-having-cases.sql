-- SELECIONA POR ID_VENDEDOR A SOMA TOTAL DE VENDAS DE CADA VENDEDOR
SELECT
EmployeeKey AS [ID VENDEDOR],
SUM(ExtendedAmount) AS [TOTAL VENDA]

-- SELECIONA O VENDEDOR COM VENDA ACIMA DE 5 MILH�ES
FROM FactResellerSales 
GROUP BY EmployeeKey
HAVING SUM(ExtendedAmount) > 5000000

-- CONTA QUANTAS VEZES O NOME APARECE
-- SELECIONA O SEXO MASCULINO
-- SELECIONA OS NOMES QUE APARECEM MAIS DE 3X
SELECT 
FIRSTNAME AS NOME,
COUNT(FIRSTNAME) AS CONTAGEM

FROM DimEmployee
WHERE Gender = 'M'

GROUP BY FirstName
HAVING COUNT(FirstName) > 3

	