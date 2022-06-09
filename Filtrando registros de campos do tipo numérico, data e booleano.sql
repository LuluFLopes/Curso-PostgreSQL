-- Utilizando o operador "is" na pesquisa --
	select *
	from aluno
	where cpf is null;

    -- Utilizando o operador "is not" na pesquisa --
	select *
	from aluno
	where cpf is not null;

    -- Utilizando o operador "=" na pesquisa --
	select *
	from aluno
	where idade = 35; 

    -- Utilizando o operador "<> ou !=" na pesquisa --
	select *
	from aluno
	where idade <> 36;

    -- Utilizando o operador ">=" na pesquisa --
	select *
	from aluno
	where idade >= 35;
		
    -- Utilizando o operador "<=" na pesquisa --
	select *
	from aluno
	where idade <= 35;
		
    -- Utilizando o operador ">" na pesquisa --
	select *
	from aluno
	where idade > 35;
    
    -- Utilizando o operador "<" na pesquisa --
	select *
	from aluno
	where idade < 35;

    -- Utilizando o operador "between" na pesquisa --
	select *
	from aluno
	where idade between 10 and 35;
