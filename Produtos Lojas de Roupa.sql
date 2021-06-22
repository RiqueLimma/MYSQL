create database db_ecommerce;

use db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    bones VARCHAR(255),
    celulares VARCHAR(255),
    tennis VARCHAR(255),
    precos DECIMAL(9,2 )
);

insert into tb_produtos (bones, celulares, tennis, precos) values ("Cheers", "Xaiomi", "Adidas", 1500.00);
insert into tb_produtos (bones, celulares, tennis, precos) values("Buffalo", "Sansung", "Nike", 500.00);
insert into tb_produtos (bones, celulares, tennis, precos) values("Ferrari", "Motorola", "Plasma", 600.00);
insert into tb_produtos (bones, celulares, tennis, precos) values("Cayboy", "S10", "Nike Air Max", 400.00);

insert into tb_produtos (bones, celulares, tennis, precos) values("BMW", "Ihpone 4", 1414, 700.00);
insert into tb_produtos (bones, celulares, tennis, precos) values("SPFC", "Redmi 7", "Mishuno", 1500.00);
insert into tb_produtos (bones, celulares, tennis, precos) values("Generation", "S20", "Jota pê", 500.00);
insert into tb_produtos (bones, celulares, tennis, precos) values("Vida que Segue", "Redmi 5", "Nike", 600.00);

SELECT 
    *
FROM
    tb_produtos;

select * from tb_produtos where precos > 500;
select * from tb_produtos where precos < 500;


update tb_produtos set   bones = "Lakes" where id = 8;