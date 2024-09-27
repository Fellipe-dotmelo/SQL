/* Funções de agregação
GROUP BY
COUNT
MIN
MAX
SUM
AVG
*/

SELECT
ProductKey,
MIN(ExtendedAmount) AS [MÍNIMO VENDA],
MAX(ExtendedAmount) AS [MÁXIMO VENDA],
SUM(ExtendedAmount) AS [TOTAL VENDA],
AVG(ExtendedAmount) AS [MÉDIA VENDA]
FROM FactResellerSales
GROUP BY ProductKey

SELECT
EmployeeKey,
MIN(ExtendedAmount) AS [MÍNIMO VENDA],
MAX(ExtendedAmount) AS [MÁXIMO VENDA],
SUM(ExtendedAmount) AS [TOTAL VENDA],
AVG(ExtendedAmount) AS [MÉDIA VENDA]
FROM FactResellerSales
GROUP BY EmployeeKey
ORDER BY [TOTAL VENDA]