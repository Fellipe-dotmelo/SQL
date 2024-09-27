CREATE DEFINER = `root` @`localhost` TRIGGER `bd_exercicio`.`tb_funcionario_after_insert`
AFTER
INSERT
    ON `tb_funcionario` FOR EACH ROW BEGIN DECLARE QTD_FUNC_DEPTO INT,
    IF (NEW.trab_depto_cod IS NOT NULL) THEN
SELECT
    * COUNT(func_codigo)