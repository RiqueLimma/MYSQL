create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(

id bigint auto_increment,
kilos varchar(255),
tipo varchar (255),
primary key (id)
);

insert into tb_categoria (kilos, tipo) values ("Por Kilos", "Frutas congeladas" );
insert into tb_categoria (kilos, tipo) values ("Por Kilos", "Frutas" );
insert into tb_categoria (kilos, tipo) values ("Gramas", "Caixinha" );
insert into tb_categoria (kilos, tipo) values ("Gramas", "Frutas Frescas" );
insert into tb_categoria (kilos, tipo) values ("Gramas", "Frutas Secas" );

create table tb_produtos(

id bigint auto_increment,
nome varchar (255),
preco decimal(6, 2),
qtproduto int,
dtvalidade date,
categoria bigint,
primary key (id),
foreign key (categoria) references tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria) values ("Frutas Vermelhas", 30.00, 200, "2021-08-16", 1);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria) values ("Morango", 10.00, 50, "2021-08-20", 3);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria) values ("Kiwi", 30.00, 200,"2021-08-16", 3);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria) values ("Pitaya", 40.00, 300, "2021-08-20", 2);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria) values ("Caqui", 10.00, 400, "2021-08-21", 2);

insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria) values ("Lichia", 20.00,  500, "2021-08-25", 4);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria) values ("Morango", 40.00, 200, "2021-08-30", 1);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria) values ("Uva Passa", 20.00, 200, "2021-09-20", 5);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria) values ("Uva Verde", 10.00, 40, "2021-09-21", 4);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria) values ("Maça", 10.00,  50, "2021-09-25", 3);

select * from tb_categoria;

select * from tb_produtos;

select * from tb_produtos where preco > 30.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%c%";

select tb_produtos.nome, tb_produtos.preco,tb_produtos.categoria, tb_produtos.qtproduto, tb_produtos.dtvalidade
from tb_produtos inner join tb_categoria on categoria  = tb_produtos.categoria;

select tb_produtos.nome, tb_produtos.preco,tb_produtos.categoria, tb_produtos.qtproduto, tb_produtos.dtvalidade
from tb_produtos inner join tb_categoria on categoria  = tb_produtos.categoria where tipo = "Frutas congeladas" ;