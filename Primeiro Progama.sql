-- Criar Banco de Dados
-- imcremento automatico e tambem força a digitar no id
-- "not null" força a pessoa a digitar o campo
-- Ultimo Atributo não precisa de vírgula
-- Declara a chave primária

create database db_quitanda; 


use db_quitanda; -- Declarar o use pra executar dentro do banco

create  table tb_produtos( 



id bigint auto_increment ,		
nome varchar(255) not null, 
preco decimal (2) not null,             

primary key(id)

);

insert into tb_produtos(nome, preco) values("Maça", 5.00);
insert into tb_produtos(nome, preco) values("Banana", 3.00);
insert into tb_produtos(nome, preco) values("Batata", 4.50);
insert into tb_produtos(nome, preco) values("Cheiro Verde", 2.50);
insert into tb_produtos(nome, preco) values("Morango", 8.00);

insert into tb_produtos(nome, preco) values("Kiwi", 15.00);

select * from tb_produtos;

-- altera o modo pra 2 casas decimal
alter table tb_produtos modify preco decimal (5, 2); 
alter table tb_produtos add decricao varchar(255); -- adiciona campo 
alter table tb_produtos drop decricao; -- drop apagar o campo

-- comando que fal alteração
update tb_produtos set preco = 4.50 where id = 3; 
update tb_produtos set preco = 3.50 where id = 4;

-- Apaga Item  da tabela

delete from tb_produtos where id = 5;

select nome from tb_produtos; -- Mostrar todos os produtos


select * from tb_produtos where id = 2; -- Mostrar so um produto
select * from tb_produtos where nome = "Maça"; -- Busca produtos pelo nome

select * from tb_produtos where preco > 5; -- Mostrar o maior ou menos conforme o simbolo de maior ou menos

-- Casa esqueça de colocar a chave primária na sua tabela 
alter table tb_produtos add primary key(id); 
