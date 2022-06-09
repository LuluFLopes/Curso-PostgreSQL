-- Cláusula "distinct" retira os nomes repetidos --

select distinct nome
from funcionarios
order by nome;


-- Se houver um sobrenome, é possível adicionar ele na pesquisa e caso haja nomes iguals com sobrenome diferente, será listado --

select distinct 
nome, 
sobrenome
from funcionarios
order by nome;


-- Caso queira fazer a contagem dos nomes repetidos, será necessário retirar o distinct e utilizar o "group by" --

select distinct 
nome, 
sobrenome,
count(id)
from funcionarios
order by nome;

/* ERROR:  column "funcionarios.nome" must appear in the GROUP BY clause or be used in an aggregate function
LINE 2: nome, */


-- Utilizando "group by" --

select
nome, 
sobrenome,
count(id)
from funcionarios
group by nome, sobrenome
order by nome;


-- Utilizando parâmetros númericos (Número das colunas) --

select
nome, 
sobrenome,
count(id)
from funcionarios
group by 1, 2
order by nome;


-- Da mesma maneira podemos usar os parâmetros númericos para acessar as colunas quando há interação de tabelas --

select curso.nome,
    count(aluno.id)
    from aluno
    join aluno_curso on aluno.id = aluno_curso.aluno_id
    join curso on curso.id = aluno_curso.curso_id
    group by 1
    order by 1;
