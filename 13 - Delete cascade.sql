-- Ao tentar deletar um aluno que já está matriculado em um curso, um erro irá ocorrer por conta do vínculo entre as tabelas --

delete from aluno where id = 1;

/*ERROR:  update or delete on table "aluno" violates foreign key constraint "aluno_curso_aluno_id_fkey" on table "aluno_curso"
DETAIL:  Key (id)=(1) is still referenced from table "aluno_curso".*/


-- Criando a tabela novamente, conseguimos retirar a restrição default e utilizar a "cascade" para excluir dados relacionados --

create table aluno_curso (
aluno_id integer,
curso_id integer,
primary key (aluno_id, curso_id),
	foreign key (aluno_id)
	references aluno(id) 
	on delete cascade, -- O padrão seria "restrict" --
	foreign key (curso_id)
	references curso(id)
	on delete cascade
);

-- Inserindo alunos nos cursos novamente --

insert into aluno_curso (aluno_id, curso_id) values (1,1);

insert into aluno_curso (aluno_id, curso_id) values (2,1);

insert into aluno_curso (aluno_id, curso_id) values (3,1); 

insert into aluno_curso (aluno_id, curso_id) values (2,2);


-- Utilizar o delete agora é possível por que os campos tem a instrução de deletar em cascata --

delete from aluno where id = 1;

select aluno.nome as "Nome do Aluno", curso.nome as "Nome do Curso"
	from aluno
	join aluno_curso
	on aluno_curso.aluno_id = aluno.id
	join curso
	on aluno_curso.curso_id = curso.id;
