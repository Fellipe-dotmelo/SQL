-- SELECIONANDO DATA EM ANO, M�S E DIA
SELECT 
	SalesOrderNumber,
	OrderDate,
	YEAR(OrderDate) AS [ANO],
	MONTH(OrderDate) AS [M�S],
	DAY(OrderDate) AS [DIA]

FROM FactResellerSales