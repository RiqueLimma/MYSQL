create database db_generation_game_online;

use db_generation_game_online;

create table tb_categoria (

id bigint(8) auto_increment,
nome varchar(255) not null,
genero varchar(255) not null,
primary key (id)

);

insert into tb_categoria (nome, genero) values ("Ultimate Ninja Storm", "RPG");
insert into tb_categoria (nome, genero) values ("Dragon Ball", "luta");
insert into tb_categoria (nome, genero) values ("Ultimate Ninja Storm", "RPG");
insert into tb_categoria (nome, genero) values ("Ultimate Ninja Storm", "RPG");
insert into tb_categoria (nome, genero) values ("Dragon Ball", "luta");

create table tb_personagens (

id bigint(8) auto_increment,
nome_1 varchar(255) not null,
ataque bigint,
defesa bigint,
categoria bigint,
primary key (id),
foreign key (categoria) references tb_categoria (id)
);

insert into tb_personagens (nome_1, ataque, defesa, categoria) values ("Naruto uzumaki ", 3000, 2000, 1);
insert into tb_personagens (nome_1, ataque, defesa, categoria) values ("Goku", 5000, 6000, 2);
insert into tb_personagens (nome_1, ataque, defesa, categoria) values ("Kakashi", 6000, 4000, 3);
insert into tb_personagens (nome_1, ataque, defesa, categoria) values ("Hinata", 1000, 3000, 4);

insert into tb_personagens (nome_1, ataque, defesa, categoria) values ("Goran", 5000, 4000, 5);
insert into tb_personagens (nome_1, ataque, defesa, categoria) values ("Madinbu", 3000, 2000, 2);
insert into tb_personagens (nome_1, ataque, defesa, categoria) values ("Goten", 1500, 2000, 2);
insert into tb_personagens (nome_1, ataque, defesa, categoria) values ("Pain", 5000, 4000, 1);

select * from tb_categoria;

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where preco between 30.00 and 60.00;

select * from tb_personagens where sabor like "%c%";

select tb_personagens.nome_1, tb_personagens.ataque, tb_personagens.defesa, tb_personagens.categoria
from tb_personagens inner join tb_categoria on categoria  = tb_personagens.categoria;

select tb_personagens.nome_1, tb_personagens.ataque, tb_personagens.defesa, tb_personagens.categoria
from tb_personagens inner join tb_categoria on categoria  = tb_personagens.categoria;

select tb_personagens.nome_1, tb_personagens.ataque, tb_personagens.defesa, tb_personagens.categoria
 from tb_personagens inner join tb_categoria on categoria  = tb_personagens.categoria and nome = "Ultimate Ninja Storm";







