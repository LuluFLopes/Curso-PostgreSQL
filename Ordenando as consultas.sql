-- Criando as tabelas a serem ordenadas --

create table funcionarios(
    id SERIAL primary key,
    matricula VARCHAR(10),
    nome VARCHAR(255),
    sobrenome VARCHAR(255)
);


-- Inserindo as informações na tabela --

insert into funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');
insert into funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');
insert into funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');
insert into funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');
insert into funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');
insert into funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');


-- Ordenando por nome --

select *
from funcionarios
order by nome;


-- Ordenando por nome e ordem decrescente --

select *
from funcionarios
order by nome desc;


-- Ordenando por nome e matricula --

select *
from funcionarios
order by nome, matricula;


-- Utilizando parâmetro númerico (Número da coluna) para ordenar --

select *
from funcionarios
order by 4; -- É possível inserir mais de um parâmetro também (Ex: 1,2,3) | Também consigo misturar nome da coluna com os números (nome, 4) --


-- Evitando abiguidade referenciando qual tabela está sendo acessada --

select 
aluno.id as "Id do Aluno"
aluno.nome as "Nome do Aluno", 
curso.id as "Id do Curso",
curso.nome as "Nome do Curso"
	from aluno
	join aluno_curso
	on aluno_curso.aluno_id = aluno.id
	join curso
	on aluno_curso.curso_id = curso.id
    order by aluno.nome; -- Informando a tabela referência para ordenação --
