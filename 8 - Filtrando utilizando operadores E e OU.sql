-- Utilizando o operador "AND" na pesquisa --
	select *
	from aluno
	where nome like 'D%' 
	and cpf is not null;

    -- Utilizando o operador "OR" na pesquisa --
	select *
	from aluno
	where nome like 'Diogo' 
	or nome like 'Rodrigo'
	or nome like 'Nico%';
