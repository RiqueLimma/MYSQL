create database db_escola;

use db_escola;

create table tb_secretaria (

    id bigint auto_increment primary key,
    alunos VARCHAR(255),
    faltas bigint(255),
    notas decimal (5, 2),
	historico varchar(255)
 
);

insert into tb_secretaria (alunos, faltas, notas, historico) values ("Bruna",10, 9.0, "Ótimo");
insert into tb_secretaria (alunos, faltas, notas, historico) values("Pamela",09, 10.0, "Ótimo");
insert into tb_secretaria (alunos, faltas, notas, historico) values("Marcos",400, 3.0, "Péssimo");
insert into tb_secretaria (alunos, faltas, notas, historico) values("Allan",350, 4.0, "Ruim");

insert into tb_secretaria (alunos, faltas, notas, historico) values ("Antonio",300, 4.5, "Ruim");
insert into tb_secretaria (alunos, faltas, notas, historico) values("Leandro",08, 10.0, "Ótimo");
insert into tb_secretaria (alunos, faltas, notas, historico) values("Ryan",200, 4.0, "Ruim");
insert into tb_secretaria (alunos, faltas, notas, historico) values("Tonny",10, 9.0, "Péssimo");

select*from tb_secretaria;

select * from tb_secretaria where notas >= 7;
select * from tb_secretaria where notas < 7;

update tb_secretaria set   notas = 10 where id = 8;


