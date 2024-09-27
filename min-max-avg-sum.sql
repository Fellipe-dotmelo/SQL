/* Funções de agregação
GROUP BY
COUNT
MIN
MAX
SUM
AVG
*/

SELECT *
FROM FactResellerSales

SELECT 
MIN(ExtendedAmount) AS [VALOR MÍNIMO]
FROM FactResellerSales

SELECT 
MAX(ExtendedAmount) AS [VALOR MÁXIMO]
FROM FactResellerSales

SELECT 
AVG(ExtendedAmount) AS [VALOR MÉDIO]
FROM FactResellerSales

SELECT 
SUM(ExtendedAmount) AS [VALOR TOTAL]
FROM FactResellerSales
