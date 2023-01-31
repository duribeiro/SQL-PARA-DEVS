INSERT INTO alunos(nome, cpf, cidade, estado, data_nascimento) VALUES
    ('Rafael', '00000000001', 'Aracaju', 'SE', '2000-01-01'),
    ('Eduardo', '00000000002', 'São Paulo', 'SP', '2000-02-02'),
    ('Bruno', '00000000003', 'São Paulo', 'SP', '2000-03-03'),
    ('Tiago', '00000000004', 'Rio de Janeiro', 'RJ', '2000-04-04'),
    ('Heloysa', '00000000005', 'Aracaju', 'SE', '2000-05-05');

INSERT INTO categorias(descricao) VALUES
    ('Acesso a dados'),
    ('Segurança'),
    ('Web');

INSERT INTO cursos(descricao, categoria_id, total_horas, valor) VALUES
    ('EF Core', 1, 17, 300),
    ('SQL Server', 1, 5, 200),
    ('ASP.NET Core Enterprise', 3, 5, 200),
    ('Fundamentos de IdentityServer4', 2, 5, 200);

INSERT INTO alunos_cursos(aluno_id, curso_id) VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 1),
    (4, 4),
    (5, 1),
    (5, 2),
    (5, 3);