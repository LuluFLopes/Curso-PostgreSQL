-- Inserindo aluno sem matricula em cursos --

insert into aluno (nome) values ('Nico'); -- Desta maneira, ao tentar acessar pelo "join" convencional, não será possível visualizar o "Nico" --

-- Inserindo novo curso --

insert into curso (id,nome) values ('Nico'); 

-- A tabela aluno tem a informação do aluno sem curso, na estrutura do select, ela é a tabela a esquerda. Para acessar o aluno sem curso é necessário usar o "left join" --

select aluno.nome as "Nome do Aluno", curso.nome as "Nome do Curso"
	from aluno
	left join aluno_curso
	on aluno_curso.aluno_id = aluno.id
	left join curso
	on aluno_curso.curso_id = curso.id;


-- Nesse caso o curso "CSS" aparecerá sem alunos matriculados por estarmos acessando o conteúdo da tabela a direita "right join"--

select aluno.nome as "Nome do Aluno", curso.nome as "Nome do Curso"
	from aluno
	right join aluno_curso
	on aluno_curso.aluno_id = aluno.id
	right join curso
	on aluno_curso.curso_id = curso.id;


-- Nesse caso o curso "CSS" aparecerá sem alunos matriculados e o aluno "Nico" irá aparecer sem estar matriculado em nenhum curso pois estamos acessando as duas tabelas "full join"--

select aluno.nome as "Nome do Aluno", curso.nome as "Nome do Curso"
	from aluno
	full join aluno_curso
	on aluno_curso.aluno_id = aluno.id
	full join curso
	on aluno_curso.curso_id = curso.id;

-- Cruzamento das informações nas duas tabelas com o "cross join" --

select aluno.nome as "Nome do Aluno", curso.nome as "Nome do Curso"
	from aluno
	cross join curso;