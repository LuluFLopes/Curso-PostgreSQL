-- Refazendo a tabela "aluno" --

drop table aluno;

create table aluno (
	id serial primary key,
	nome varchar(255) not null
);

insert into aluno (nome) values ('Diogo'),
								('Vinícius');



-- Criando tabela para relacionar curso e aluno --

create table aluno_curso (
aluno_id integer,
curso_id integer,
primary key (aluno_id, curso_id) -- Chave primária composta --
);

-- Inserindo dados na tabela --

insert into aluno_curso (aluno_id, curso_id) values (1,1);

insert into aluno_curso (aluno_id, curso_id) values (2,1);

insert into aluno_curso (aluno_id, curso_id) values (3,1); -- Ausência de chave estrangeira permite inserir um aluno não cadastrado --

-- Recriando tabela com chave estrangeira --
drop table aluno_curso;

create table aluno_curso (
aluno_id integer,
curso_id integer,
primary key (aluno_id, curso_id),
	foreign key (aluno_id)
	references aluno(id),
	foreign key (curso_id)
	references curso(id)
);

-- Tentando inserir novamente --

insert into aluno_curso (aluno_id, curso_id) values (1,1);

insert into aluno_curso (aluno_id, curso_id) values (2,1);

insert into aluno_curso (aluno_id, curso_id) values (3,1); -- Erro ao tentar inserir --

/*ERROR:  insert or update on table "aluno_curso" violates foreign key constraint "aluno_curso_aluno_id_fkey"
DETAIL:  Key (aluno_id)=(3) is not present in table "aluno".*/