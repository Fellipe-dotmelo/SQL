/* Fun��es de agrega��o
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
MIN(ExtendedAmount) AS [VALOR M�NIMO]
FROM FactResellerSales

SELECT 
MAX(ExtendedAmount) AS [VALOR M�XIMO]
FROM FactResellerSales

SELECT 
AVG(ExtendedAmount) AS [VALOR M�DIO]
FROM FactResellerSales

SELECT 
SUM(ExtendedAmount) AS [VALOR TOTAL]
FROM FactResellerSales
