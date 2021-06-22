create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(

id bigint auto_increment,
cursos varchar(255),
tipos varchar (255),
primary key (id)
);

insert into tb_categoria (cursos, tipos) values ("Inglês", "Online" );
insert into tb_categoria (cursos, tipos) values ("Progamação", "Online" );
insert into tb_categoria (cursos, tipos) values ("Manutenção", "Presencial" );
insert into tb_categoria (cursos, tipos) values ("Espanhol", "Online" );
insert into tb_categoria (cursos, tipos) values ("Francês", "Online" );

create table tb_produtos(

id bigint auto_increment,
nome varchar (255),
preco decimal(6, 2),
qtproduto int,
categoria bigint,
primary key (id),
foreign key (categoria) references tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Wish Up", 50.00, 2, 1);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("CSA", 200.00, 50, 4);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Uninove", 300.00, 200, 3);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Igor Aulas Particular", 30.00, 1, 5);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("ArcoSul",100.00 , 40, 3);

insert into tb_produtos (nome, preco, qtproduto, categoria) values (" Via ", 200.00, 500.00 , 2);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("LesteCusos ", 100.00, 2, 1);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("VivaLaViva", 250.00, 200, 1);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Cursos Em Videos ", 400.00, 40, 2);
insert into tb_produtos (nome, preco, qtproduto, categoria) values ("Java avançado", 60.00, 40, 2);

select * from tb_categoria;

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%j%";

select tb_produtos.nome, tb_produtos.preco,tb_produtos.categoria, tb_produtos.qtproduto
from tb_produtos inner join tb_categoria on categoria  = tb_produtos.categoria;

select tb_produtos.nome, tb_produtos.preco,tb_produtos.categoria, tb_produtos.qtproduto
from tb_produtos inner join tb_categoria on categoria  = tb_produtos.categoria where cursos = "Progamação" ;