-- Utilizando a cláusula "Limit", é possível acessar apenas os 5 primeiros registros da tabela --

select *
from funcionarios 
limit 5;


-- Também podemos trazer com a tabela ordenada por algum parâmetro --

select *
from funcionarios 
order by nome
limit 5;


-- Também podemos pular alguns registros utilizando "offset" --

select *
from funcionarios 
order by id
limit 5
offset 1; -- O índice é a quantidade de registros a serem pulados a partir do primeiro --
