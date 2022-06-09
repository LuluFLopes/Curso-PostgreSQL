-- Inserindo nome a serem filtrados --
	insert into aluno (nome) values ('Vinicius Dias'),
									('Nico Steppat'),
									('João Roberto'),
									('Diego');



    -- Utilizando o operador "=" na pesquisa --
	select * 
	from aluno
	where nome = 'Diogo';

-- Utilizando o operador "<> ou !=" na pesquisa --
	select * 
	from aluno
	where nome <> 'Diogo';

    -- Utilizando o operador "like e _" na pesquisa --
	select * 
	from aluno
	where nome like '_iogo';

  -- Utilizando o operador "like e _" na pesquisa --ss
	select * 
	from aluno
	where nome like '_iogo';

    -- Utilizando o operador "not like e _" na pesquisa --
	select * 
	from aluno
	where nome not like 'Di_go';

    -- Utilizando o operador "like e %" na pesquisa --
	select * 
	from aluno
	where nome like 'D%'; -- where nome like 'S%' | where nome like '% %' | where nome like '%i%a%' --

