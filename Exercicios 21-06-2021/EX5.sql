create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(

id bigint auto_increment,
ferramentas varchar(255),
tipos varchar (255),
primary key (id)
);

insert into tb_categoria (ferramentas, tipos) values ("Furradeiras", "Eletrica" );
insert into tb_categoria (ferramentas, tipos) values ("Furradeira", "Tomada" );
insert into tb_categoria (ferramentas, tipos) values ("Vap", "Profissional" );
insert into tb_categoria (ferramentas, tipos) values ("Pregos", "Uso Geral" );
insert into tb_categoria (ferramentas, tipos) values ("Parafuso", "Uso geral" );

create table tb_produtos(

id bigint auto_increment,
nome varchar (255),
preco decimal(6, 2),
qtproduto int,
categoria bigint,
primary key (id),
foreign key (categoria) references tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Makita", 150.00, 200, 1);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Pregos De Aço", 5.00, 500, 4);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Makita", 300.00, 20, 2);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Phico", 400.00, 30, 1);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Prego de ferro", 4.00, 40, 2);

insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Vap phico", 200.00,  5, 3);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Furat ", 100.00, 2, 1);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Decker", 20.00, 200, 1);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Parafuso 08 ", 10.00, 40, 5);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Parafuso 10 ", 10.00, 40, 5);

select * from tb_categoria;

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%c%";

select tb_produtos.nome, tb_produtos.preco,tb_produtos.categoria, tb_produtos.qtproduto
from tb_produtos inner join tb_categoria on categoria  = tb_produtos.categoria;

select tb_produtos.nome, tb_produtos.preco,tb_produtos.categoria, tb_produtos.qtproduto
from tb_produtos inner join tb_categoria on categoria  = tb_produtos.categoria where ferramentas = "Furradeiras" ;