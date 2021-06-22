create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(

id bigint auto_increment,
medicamentos varchar(255),
Comprimidos bigint (255),
Gotas int,
criança varchar (255),
primary key (id)
);

insert into tb_categoria ( medicamentos, comprimidos) values ("Dor de Cabeça", 120);
insert into tb_categoria ( medicamentos, criança) values ("Vitamina", "Criança" );
insert into tb_categoria ( medicamentos) values ("Desodorante");
insert into tb_categoria ( medicamentos, comprimidos) values ("Sem Dipirona", 120);
insert into tb_categoria ( medicamentos, comprimidos) values ("Amoxilina", 10);

create table tb_produtos(

id bigint auto_increment,
nome varchar (255),
preco decimal(6, 2),
categoria bigint,
primary key (id),
foreign key (categoria) references tb_categoria (id)
);

insert into tb_produtos (nome, preco, categoria) values ("Dipirona", 10.00, 1);
insert into tb_produtos (nome, preco, categoria) values ("complexo B", 40.00, 2);
insert into tb_produtos (nome, preco, categoria) values ("Paracetamol", 50.00, 4);
insert into tb_produtos (nome, preco, categoria) values ("Dorflex", 150.00, 1);
insert into tb_produtos (nome, preco, categoria) values ("Rexona Man", 30.00, 3);

insert into tb_produtos (nome, preco, categoria) values ("Dipirona Gotas", 50.00, 1);
insert into tb_produtos (nome, preco, categoria) values ("Vita B12", 60.00, 2);
insert into tb_produtos (nome, preco, categoria) values ("Monange", 40.00, 3);
insert into tb_produtos (nome, preco, categoria) values ("Desodorante Avon", 10.00, 3);
insert into tb_produtos (nome, preco, categoria) values ("Rexona", 17.00, 3);

select * from tb_categoria;

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%b%";

select tb_produtos.nome, tb_produtos.preco,tb_produtos.categoria
from tb_produtos inner join tb_categoria on categoria  = tb_produtos.categoria;

select tb_produtos.nome, tb_produtos.preco,tb_produtos.categoria
from tb_produtos inner join tb_categoria on categoria  = tb_produtos.categoria where medicamentos = "Dor de Cabeça" ;







