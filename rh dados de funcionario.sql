create database db_rh;

use db_rh;

create table tb_funcionario(

id bigint auto_increment primary key,
nome varchar(255) ,
login bigint(100),
senha bigint(15),
salario decimal (6, 2),
setor varchar(100) 
);

insert into tb_funcionario (nome, login, senha, salario, setor) values("Luis", 1929, 1234, 1000.00, "Restaurante");
insert into tb_funcionario (nome, login, senha, salario, setor) values("Rosi", 2020, 5678, 500.00, "Recepção");
insert into tb_funcionario (nome, login, senha, salario, setor) values("Manuel", 2121, 1010, 6000.00, "Gorvenança");
insert into tb_funcionario (nome, login, senha, salario, setor) values("Marcos", 2222, 1111, 2000.00, "Cozinha");
insert into tb_funcionario (nome, login, senha, salario, setor) values("Luiza", 2323, 1414, 3000.00, "Mensageiro");



select * from tb_funcionario where salario > 2000;

select * from tb_funcionario where salario < 2000;

update tb_funcionario set salario = 700 where id = 1;

select*from tb_funcionario;


