/*ORDERNA��O CRESCENTE*/
SELECT *
FROM DimEmployee
ORDER BY FirstName

/*ORDENA��O DECRESCENTE*/
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