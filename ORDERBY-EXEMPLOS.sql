/*ORDERNAÇÃO CRESCENTE*/
SELECT *
FROM DimEmployee
ORDER BY FirstName

/*ORDENAÇÃO DECRESCENTE*/
SELECT FirstName
FROM DimEmployee
ORDER BY FirstName DESC

SELECT
EmployeeKey,
FirstName,
MiddleName,
LastName
FROM DimEmployee
ORDER BY EmployeeKey