create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(

id bigint auto_increment,
cardapio varchar (255),
tamanho varchar (255),
primary key (id)
);

insert into tb_categoria ( cardapio, tamanho) values ("Salgada", "Grande");
insert into tb_categoria ( cardapio, tamanho) values ("Doce", "Média");
insert into tb_categoria ( cardapio, tamanho) values ("Salgado", "Média");
insert into tb_categoria ( cardapio, tamanho) values ("Brotinho", "Grande");
insert into tb_categoria ( cardapio, tamanho) values ("Doce", "Grande");


create table tb_pizza(

id bigint auto_increment,
sabor varchar (255),
borda varchar (255),
preco bigint (255),
categoria bigint (255),
primary key (id),
foreign key (categoria) references tb_categoria (id)
);

insert into tb_pizza ( sabor, borda, preco, categoria) values ("Mussarela", "Catupiry", 40.00, 1);
insert into tb_pizza ( sabor, borda, preco, categoria) values ("M&M", "Chocolate", 65.00, 2);
insert into tb_pizza ( sabor, borda, preco, categoria) values ("Romeu e Julieta", "Goiabada", 50.00, 5);
insert into tb_pizza ( sabor, borda, preco, categoria) values ("Calabresa", "Cheddar", 45.00, 3);
insert into tb_pizza ( sabor, borda, preco, categoria) values ("Chocolate Branco", "Chocolate ao Leite", 75.00, 5);

insert into tb_pizza ( sabor, preco, categoria) values ("Carne seca",35.00, 4);
insert into tb_pizza ( sabor, preco, categoria) values ("Portuguesa", 40.00, 4);
insert into tb_pizza ( sabor, borda, preco, categoria) values ("Portuguesa", "Catupiry", 60.00, 1);
insert into tb_pizza ( sabor, borda, preco, categoria) values ("Bahiana", "Cheddar", 80.00, 1);
insert into tb_pizza ( sabor, borda, preco, categoria) values ("Sonho de Valsa", "Cholate ao Leite", 55.00, 5);

select * from tb_categoria;

select * from tb_pizza;

select * from tb_pizza where preco between 30.00 and 60.00;

select * from tb_pizza where sabor like "%c%";

select tb_pizza.sabor, tb_pizza.borda, tb_pizza.preco, tb_pizza.categoria
from tb_pizza inner join tb_categoria on categoria  = tb_pizza.categoria;

select tb_pizza.sabor, tb_pizza.borda, tb_pizza.preco, tb_pizza.categoria
from tb_pizza inner join tb_categoria on categoria  = tb_pizza.categoria and cardapio = "Doce";





