-- SELECIONANDO DATA EM ANO, MÊS E DIA
SELECT 
	SalesOrderNumber,
	OrderDate,
	YEAR(OrderDate) AS [ANO],
	MONTH(OrderDate) AS [MÊS],
	DAY(OrderDate) AS [DIA]

FROM FactResellerSales