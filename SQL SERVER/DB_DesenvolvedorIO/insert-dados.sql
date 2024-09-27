INSERT INTO Alunos (Nome, Cpf, Cidade, Estado, DataNascimento)
VALUES 
    ('Rafael', '00000000001', 'Aracaju', 'SE', '2000-01-01'),
    ('Eduardo', '00000000002', 'São Paulo', 'SP', '2000-01-02'),
    ('Bruno', '00000000003', 'São Paulo', 'SP', '2000-01-03'),
    ('Tiago', '00000000004', 'Rio de Janeiro', 'RJ', '2000-01-04'),
    ('Heloysa', '00000000005', 'Aracaju', 'SE', '2000-01-05');

INSERT INTO Categorias (Descricao)
VALUES 
    ('Acesso a Dados'),
    ('Segurança'),
    ('WEB');


INSERT INTO Cursos (Descricao, CategoriaId, TotalHoras, Valor)
VALUES
    ('EF Core', 1, 17, 300),
    ('SQL Server', 1, 5, 200),
    ('ASP.NET Core Enterprise', 3, 5, 200),
    ('Fundamentos de IdentityServer4', 2, 5, 200);


INSERT INTO AlunosCursos (AlunoId, CursoId)
VALUES 
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 1),
    (4, 4),
    (5, 1),
    (5, 2),
    (5, 3);

SELECT * FROM AlunosCursos;

SELECT * FROM Alunos;
SELECT Cidade, Estado FROM Alunos;
SELECT DISTINCT Cidade, Estado FROM Alunos;

SELECT * FROM Alunos
ORDER BY Nome;