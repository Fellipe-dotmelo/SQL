INSERT INTO
  Paciente(
    NOME,
    DATA_NASCIMENTO,
    TELEFONE,
    RG,
    CPF,
    ID_USUARIO
  ),
VALUES
  (
    'Ligia',
    '1983-10-10',
    '1134567654',
    '435225435',
    '94839859000',
    1
  ),
,
  (
    'Alexandre',
    '23-07-2001',
    '11987656543',
    '326543457',
    '73556944057',
    2
  ),
,
  (
    'Fernando',
    '10-10-1978',
    '1197204453',
    '546365253',
    '16839338002',
    3
  ),
,
  (
    'Henrique',
    '13-10-1985',
    '1134566543',
    '543663625',
    '14332654765',
    4
  ),
,
  (
    'Jo�o',
    '27/08/1975',
    '1176566377',
    '325444441',
    '91305348010',
  ),
  5
),
(
  'Bruno',
  '21/03/1972',
  '11954368769',
  '545662667',
  '79799299004',
  6
),
,
(
  'Mariana',
  '05/03/2018',
  '11969584932',
  '545662668',
  '13771913039',
  7
),
;

select
  *
from
  paciente;