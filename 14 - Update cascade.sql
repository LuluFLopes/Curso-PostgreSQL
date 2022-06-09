-- Ao tentar alterar o id do aluno, ocorrerá um erro pois o número está vinculado a outras tabelas --

update aluno set id = 10 where id = 2;

/*ERROR:  update or delete on table "aluno" violates foreign key constraint "aluno_curso_aluno_id_fkey" on table "aluno_curso"
DETAIL:  Key (id)=(2) is still referenced from table "aluno_curso".*/

-- Recriando a tabela, podemos adicionar o "cascade" para o update, fazendo assim temos a opção de fazer o update nas tabelas relacionadas em cascata --

drop table aluno_curso;

create table aluno_curso (
aluno_id integer,
curso_id integer,
primary key (aluno_id, curso_id),
	foreign key (aluno_id)
	references aluno(id) 
	on delete cascade
	on update cascade,
	foreign key (curso_id)
	references curso(id)
	on delete cascade
	on update cascade
);

-- Tentando alterar novamente o update será feito em "cascade" e não haverá erros --

update aluno set id = 10 where id = 2;
