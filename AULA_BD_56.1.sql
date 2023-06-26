#criar tabela departamento no meu banco de dados 
create table departamento(
	id int auto_increment,
	nome varchar(60),
    primary key (id)
 );
 
 # inserir financeiro na tabela departamento 
insert into departamento values(1 , "Financeiro" );  

 # inserir vendas na tabela departamento
insert into departamento values(2 , "Vendas" );

 # inserir desenvolvimento de produtos na tabela departamento 
insert into departamento values(3 , "Desenvolvimento de Produtos" );  

 # inserir ti na tabela departamento 
insert into departamento values(4 , "Ti" );

 # inserir jurudico na tabela departamento 
insert into departamento values(5 , "Juridico" );

 # inserir qualidade na tabela departamento 
insert into departamento values(6 , "Qualidade" ); 

 # inserir adiministracao  na tabela departamento 
insert into departamento values(7 , "Administracao" );

 # inserir atendimento ao cliente  na tabela departamento 
insert into departamento values(8 , "Atendimento ao Cliente" );

 # inserir recursos humanos  na tabela departamento 
insert into departamento values(9 , "Recursos Humanos" );

 # inserir marketing na tabela departamento 
insert into departamento values(10 , "Marketing" );

  # inserir producao na tabela departamento 
insert into departamento values(11 , "Producao" );

 # inserir executivo na tabela departamento 
insert into departamento values(12 , "Executivo" ); 

 # inserir gerente financeiro  na tabela departamento 
insert into departamento values(13 , "Gerente financeiro" );

 # inserir gerente de markenting na tabela departamento 
insert into departamento values(14 , "Gerente de markenting" );

 # inserir gerente de producao  na tabela departamento 
insert into departamento values(15 , "Gerente de producao" );

#EXCLUIR UMA TABELA 
DROP TABLE DEPARTAMENTO;

#alterando a tabela de funcionarios
#adicionando a coluna id_departamento como chave estrangeirA
#fazendo referencia a tabela departamento 
alter table funcionarios
add column id_departamento int,
add constraint fk_funcionarios_departamento
foreign key (id_departamento) references departamento(id);

#selecionar a tabela de funcionario 
select * from funcionarios;

#selecionar a tabela de departamento
select * from departamento;

#atualizando o cadastrando do funcionario que possui o id igual a 1
update funcionarios 
set id_departamento = 1 
where id = 1;

#atualizando o cadastro dos funcionarios que possui o id  igual a 2,3,4 e 5  no departamento "vendas" 
update funcionarios
set id_departamento = 2
where id = 2 or  id  = 3 or id = 4 or id = 5; 

#trazer o funcionario cuja o id seja 1 
select * from funcionarios 
where id = 1;

#atualizando o cadastro dos funcionarios que possui o id  igual a 6,7,8, e 9   no departamento "ti"
update funcionarios
set id_departamento = 4
where id = 6 or  id  = 7 or id = 8 or id = 9; 

#atualizando o cadastro dos funcionarios que possui o id  igual 10,11,12 e 13   no departamento "juridico" 
update funcionarios
set id_departamento = 5
where id = 10 or  id  = 11 or id = 12 or id = 13; 

#atualizando o cadastro dos funcionarios que possui o id  igual a 14,15,16 e 17   no departamento "recursos humanos"  
update funcionarios
set id_departamento = 9
where id = 14 or  id  = 15 or id = 16 or id = 17; 

#descobrindo id do funcionario com o maior salario 
select * from funcionarios where  salario order by salario desc;

#atualizar o  funcionarios com maior salario para departamento "executtivo"
update funcionarios set id_departamento  = 12 where id = 44;

#atualizar o funcionario com segundo maior salario para departamento "gerente financeiro"
update funcionarios set id_departamento  = 13 where id = 413;

#atualizar o funcionario com terceiro maior salario para departamento "gerente de producao"
update funcionarios set id_departamento  = 15 where id = 642;

#atualizar o funcionario com quarto  maoir salario para departamento "gerente de marketing"
update funcionarios set id_departamento  = 14 where id = 462;
 
 



