/* - Tipos de dados mais usados.
integer
real
serial
numeric

varchar(n)
char(n)
text

boolean

date
time
timestamp
*/

--  Criação de Tabelas --
 CREATE TABLE aluno(
    id SERIAL,
        nome VARCHAR(255),
        cpf CHAR(11),
        observação TEXT,
        idade INTEGER,
        dinheiro NUMERIC(10,2),
        altura REAL,
        ativo BOOLEAN,
        data_nascimento DATE,
        hora_aula TIME,
        matriculado_em TIMESTAMP
);

