SELECT
EmployeeKey,
SUM(ExtendedAmount) AS [TOTAL VENDA]

FROM FactResellerSales 
GROUP BY EmployeeKey
HAVING SUM(ExtendedAmount) > 4000000