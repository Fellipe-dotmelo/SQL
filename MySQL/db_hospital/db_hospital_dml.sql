 -- Adicionando chaves estrangeiras na tabela `receita`
ALTER TABLE receita
ADD COLUMN especialidade_id int,
ADD COLUMN medico_id int,
ADD COLUMN consulta_id int,
ADD FOREIGN KEY (especialidade_id) REFERENCES especialidade(id_especialidade),
ADD FOREIGN KEY (medico_id) REFERENCES medico(id_medico),
ADD FOREIGN KEY (consulta_id) REFERENCES consulta(id_consulta);

 
 -- ALGUNS AJUSTES, SETANDO FOREIGN KEY, ADICIONADO COLUNA E ATUALIZANDO PACIENTE.
 
 
ALTER TABLE consulta ADD FOREIGN KEY (id_convenio) REFERENCES convenio(id_convenio);
UPDATE paciente SET id_convenio = 1 WHERE nome = 'Ana';

-- SETANDO MAIS UMA COLUNA NA TABELA MÉDICO - PARTE 4
ALTER TABLE medico ADD COLUMN em_atividade VARCHAR(20);
UPDATE medico SET em_atividade = 'Inativo' WHERE id_medico = 1;
UPDATE medico SET em_atividade = 'Em atividade' WHERE id_medico = 2;
UPDATE medico SET em_atividade = 'Inativo' WHERE id_medico = 3;
UPDATE medico SET em_atividade = 'Em atividade' WHERE id_medico = 4;
UPDATE medico SET em_atividade = 'Em atividade' WHERE id_medico = 5;
UPDATE medico SET em_atividade = 'Em atividade' WHERE id_medico = 6;
UPDATE medico SET em_atividade = 'Em atividade' WHERE id_medico = 7;
UPDATE medico SET em_atividade = 'Em atividade' WHERE id_medico = 8;
UPDATE medico SET em_atividade = 'Em atividade' WHERE id_medico = 9;
UPDATE medico SET em_atividade = 'Em atividade' WHERE id_medico = 10;
ALTER TABLE medico ALTER COLUMN em_atividade SET DEFAULT 'Em atividade';