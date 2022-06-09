-- Select antes de dar o update para verificar se estou alterando o regeistro correto -- 
select * 
from aluno
where id = 1;

-- Comando Update --
update aluno 
	set nome = 'Nico', 
 		cpf = '10987654321', 
 		observacao = 'Teste', 
 		idade = 38,
 		dinheiro = 15.23,
 		altura = 1.90,
 		ativo = false,
 		data_nascimento = '1980-01-15',
 		hora_aula = '13:00:00',
 		matriculado_em = '2020-01-02 15:00:00'
 			where id = 1;