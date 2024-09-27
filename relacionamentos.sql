-- JOIN OU INNER JOIN -> Relaciona dados que contenham informações iguais, somente informações IGUAIS.
-- LEFT JOIN -> Prioriza a primeira tabela, dados a ESQUERDA.
-- RIGHT JOIN -> Prioriza a segunda tabela, dados a DIREITA.
-- FULL JOIN -> Traz todos os dados de ambas as tabelas.

SELECT *
FROM Vendas AS TABELA1
JOIN Ordens AS TABELA2
ON TABELA1.ORDER_ID = TABELA2.ID

SELECT 
T1.id,
T1.quantity,
T2.customer_id,
T2.status

FROM Vendas AS T1
LEFT JOIN Ordens AS T2
ON T1.ORDER_ID = T2.ID
