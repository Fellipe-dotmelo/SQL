SELECT DISTINCT
TACESSOS.user_id [ID_USER],
TCOMPRAS.user_name [NOME],
TCOMPRAS.user_id AS [ID_USER_COMPRAS],
TACESSOS.type AS [ACESSO]

FROM ACESSOS AS TACESSOS
RIGHT JOIN COMPRAS AS TCOMPRAS ON TACESSOS.user_id = TCOMPRAS.user_id
-- RIGHT JOIN PRIORIZA O QUE EST� NA TABELA A DIREITA.
WHERE TACESSOS.user_id IS NOT NULL --SELECIONANDO APENAS QUEM TEVE ACESSO.