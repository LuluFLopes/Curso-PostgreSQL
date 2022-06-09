-- Select antes de dar o update para verificar se estou alterando o registro correto -- 
select * 
from aluno
where nome = 'Nico';

-- Comando delete --
delete 
from aluno 
where nome ='Nico';