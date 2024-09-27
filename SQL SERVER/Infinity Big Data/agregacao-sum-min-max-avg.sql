/* Fun��es de agrega��o
GROUP BY
COUNT
MIN
MAX
SUM
AVG
*/

SELECT
ProductKey,
MIN(ExtendedAmount) AS [M�NIMO VENDA],
MAX(ExtendedAmount) AS [M�XIMO VENDA],
SUM(ExtendedAmount) AS [TOTAL VENDA],
AVG(ExtendedAmount) AS [M�DIA VENDA]
FROM FactResellerSales
GROUP BY ProductKey

SELECT
EmployeeKey,
MIN(ExtendedAmount) AS [M�NIMO VENDA],
MAX(ExtendedAmount) AS [M�XIMO VENDA],
SUM(ExtendedAmount) AS [TOTAL VENDA],
AVG(ExtendedAmount) AS [M�DIA VENDA]
FROM FactResellerSales
GROUP BY EmployeeKey
ORDER BY [TOTAL VENDA]