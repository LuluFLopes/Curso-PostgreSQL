-- Explicação sobre os campos aceitarem valores nullos --
create table curso (
	id integer,
	nome varchar(255)
);
insert into curso (id, nome) values (null, null);

select * from curso;

-- Refazendo a tabela e acrescentando "not null"--
drop table curso;

create table curso (
	id integer not null,
	nome varchar(255) not null
);

-- Tentando inserir nullos --
insert into curso (id, nome) values (null, null),
                                    (1, null),
                                    (null, 'HTML');

-- Inserindo corretamente --
insert into curso (id, nome) values (null, null),
                                    (1, null),
                                    (null, 'HTML');

-- Inserindo novo curso e adicionando a mesma Id --
insert into curso (id, nome) values (1,'JavaScript');	

-- Visualizando a duplicidade de Id --
select * from curso;

-- Refazendo a tabela novamente e acrescentando "unique" --
drop table curso;

create table curso (
	id integer not null unique,
	nome varchar(255) not null
);

-- Tentando inserir novamente os dois cursos com a mesma id --

insert into curso (id, nome) values (1,'HTML');	

insert into curso (id, nome) values (1,'JavaScript');

/*ERROR:  duplicate key value violates unique constraint "curso_id_key"
DETAIL:  Key (id)=(1) already exists.*/

-- Corrigindo inserção --

insert into curso (id, nome) values (2,'JavaScript');

-- Refazendo a tabela novamente e acrescentando "primary key"/ Mantendo as características de not null e unique --
drop table curso;

create table curso (
	id integer primary key,
	nome varchar(255) not null
);

-- Tentando inserir novamente --

insert into curso (id, nome) values (1,'HTML'); -- Correta --

insert into curso (id, nome) values (1,'JavaScript'); -- Incorreta --

/*ERROR:  duplicate key value violates unique constraint "curso_pkey"
DETAIL:  Key (id)=(1) already exists.*/

insert into curso (id, nome) values (2,'JavaScript'); -- Correta --

