#desativando o safe udpdates 
set sql_safe_updates = 0;

#deletando os funcionarios
delete from funcionarios;

#selecionando a tabela funcionario 
select * from funcionarios;

#contagem de funcionarios agrupados por departamento
select id_departamento , count(*) as total_funcionarios
from funcionarios
group by id_departamento;

#contagem de funcionarios agrupados por departamento que recebem acima de 10000
select id_departamento , count(*) as total_funcionarios
from funcionarios
where salario > 10000
group by id_departamento;

#contagem dos funcionarios agrupados por derpatamento que recebem 5000 e 10000
select id_departamento , count(*) as total_funcionarios
from funcionarios
where salario between 5000 and 10000
group by id_departamento;


