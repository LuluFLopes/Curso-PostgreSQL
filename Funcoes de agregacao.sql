-- COUNT - Retorna a quantidade de registros
-- SUM -   Retorna a soma dos registros
-- MAX -   Retorna o maior valor dos registros
-- MIN -   Retorna o menor valor dos registros
-- AVG -   Retorna a média dos registros


-- Utilizando o "count" --

select count(id)
from funcionarios;


-- Utilizando o "sum" --

select sum(id)
from funcionarios;


-- Utilizando o "max" --

select max(id)
from funcionarios;


-- Utilizando o "min" --

select min(id)
from funcionarios;


-- Utilizando o "avg" --

select round(avg(id), 0) -- Round arrendonda em casas decimais --
from funcionarios;