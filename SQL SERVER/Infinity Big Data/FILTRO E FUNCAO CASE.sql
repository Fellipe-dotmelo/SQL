-- FUNÇÃO CASE (CASO QUANDO) CRIANDO COLUNA CONDICIONAL

-- CASE = CASO
-- WHEN = QUANDO
-- THEN = ENTÃO

SELECT 
EnglishProductSubcategoryName AS SUBCATEGORIA,
CASE
WHEN EnglishProductSubcategoryName IN('Mountain Bikes', 'Road Bikes', 'Touring Bikes')  THEN 'Sport'

ELSE 'SEM_CATEGORIA'
END AS CATEGORIA

FROM DimProductSubcategory
--> FILTRANDO PARA FACILITAR MUDANÇAS
SELECT 
EnglishProductSubcategoryName

FROM DimProductSubcategory
WHERE EnglishProductSubcategoryName LIKE '%Frames%'
ORDER BY EnglishProductSubcategoryName
