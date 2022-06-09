-- Utilizando "join" para unir tabelas --

select aluno.nome as "Nome do Aluno", curso.nome as "Nome do Curso"
	from aluno
	join aluno_curso
	on aluno_curso.aluno_id = aluno.id
	join curso
	on aluno_curso.curso_id = curso.id;
	
    -- Inserindo mais um curso para o aluno 2, executar novamente o select acima --

insert into aluno_curso (aluno_id, curso_id) values (2,2); 