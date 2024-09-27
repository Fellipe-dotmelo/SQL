-- JOIN OU INNER JOIN -> Relaciona dados que contenham informações iguais, somente informações IGUAIS.
-- LEFT JOIN -> Prioriza a primeira tabela, dados a ESQUERDA.
-- RIGHT JOIN -> Prioriza a segunda tabela, dados a DIREITA.
-- FULL JOIN -> Traz todos os dados de ambas as tabelas.

SELECT
-- selecionando tabela de vendas
TVendas.id AS [ID_Vendas],
TVendas.quantity AS [QUANTIDADE],
TVendas.total_price AS [PREÇO TOTAL],

-- selecionando tabela de ordens
TOrdens.created_at,
TOrdens.status,

-- selecionando a  tabela de produtos
TProduto.name AS [NOME DO PRODUTO],
TProduto.price AS [PREÇO DO PRODUTO],

-- selecionando a tabela de categoria
TCategoria.name AS [NOME DA CATEGORIA],

-- selecionando a tabela de clientes
TClientes.first_name AS [NOME],
TClientes.last_name AS [SOBRENOME],
TClientes.email AS [E-MAIL]

FROM Vendas AS TVendas
LEFT JOIN Ordens AS TOrdens ON TVendas.ORDER_ID = TOrdens.ID
LEFT JOIN Produto AS TProduto ON TVendas.product_id = TProduto.id
LEFT JOIN Categoria AS TCategoria ON TProduto.category_id = TCategoria.id
LEFT JOIN Clientes AS TClientes ON TOrdens.customer_id = TClientes.id
