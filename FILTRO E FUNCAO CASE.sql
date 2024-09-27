-- FUN��O CASE (CASO QUANDO) CRIANDO COLUNA CONDICIONAL

-- CASE = CASO
-- WHEN = QUANDO
-- THEN = ENT�O

SELECT 
EnglishProductSubcategoryName AS SUBCATEGORIA,
CASE
WHEN EnglishProductSubcategoryName IN('Mountain Bikes', 'Road Bikes', 'Touring Bikes')  THEN 'Sport'

ELSE 'SEM_CATEGORIA'
END AS CATEGORIA

FROM DimProductSubcategory
--> FILTRANDO PARA FACILITAR MUDAN�AS
SELECT 
EnglishProductSubcategoryName

FROM DimProductSubcategory
WHERE EnglishProductSubcategoryName LIKE '%Frames%'
ORDER BY EnglishProductSubcategoryName
