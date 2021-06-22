create database db_game_online;

use db_game_online;

create table tb_classe(

id bigint auto_increment,
nome varchar (255),
habilidade varchar(255),
primary key (id)
);

insert into tb_classe (nome, habilidade) values ("Feiticeiro", "Magia");
insert into tb_classe (nome, habilidade) values ("Arqueiro", "Arco e flecha");
insert into tb_classe (nome, habilidade) values ("Guerreiro", "Espada");
insert into tb_classe (nome, habilidade) values ("Cavaleiro", "Cavalgar");
insert into tb_classe (nome, habilidade) values ("Ninja", "Camuflagem");

select * from tb_classe;


create table tb_personagens(
id bigint auto_increment,
nome varchar (255),
nivel bigint (255),
ataque bigint(255),
defesa bigint(255),
classe_id bigint(255),
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Harry", 1000, 2000, 2500, 1);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Jonny", 5000, 1000, 1500, 2);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Seya", 100, 200, 500, 4);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Jhow", 3000, 2000, 500, 5);

insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Athur", 5000, 3000, 7500, 4);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Kim", 6000, 3000, 2500, 5);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("San", 7000, 2000, 200, 5);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Jeh", 7000, 8000, 4500,2);


select * from tb_personagens;

select * from tb_classe;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;