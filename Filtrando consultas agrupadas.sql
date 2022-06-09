-- Se tentarmos utilizar where em funções agregadas, não será possível filtrar -- 

select 
	curso.nome,
	count(aluno.id)
	from curso
	left join aluno_curso on aluno_curso.curso_id = curso.id
	left join aluno on aluno.id = aluno_curso.aluno_id
	where count(curso.nome)
	group by 1;

    /* ERROR:  aggregate functions are not allowed in WHERE */


 -- Para realizar filtros em funções agregadas, devemos utilizar o "having" --

select 
	curso.nome,
	count(aluno.id)
	from curso
	left join aluno_curso on aluno_curso.curso_id = curso.id
	left join aluno on aluno.id = aluno_curso.aluno_id
	group by 1
	having count(aluno.id) = 0; 


    -- Exemplo de select que pega funcionários com campos duplicados --

    select 
	nome,
	count(id)
	from funcionarios
	group by nome
	having count(nome);