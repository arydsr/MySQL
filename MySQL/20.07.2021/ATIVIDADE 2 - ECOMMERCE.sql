create database db_ecommerce;

use db_ecommerce;

create table tb_ecommerce(
id bigint auto_increment,
codigo int,
produto varchar(255),
marca varchar(255),
departamento varchar(255),
preco decimal(8,2),
primary key(id)
);

insert into tb_ecommerce(codigo, produto, marca, departamento, preco) values(293826, "Smart TV 32'", "SAMSUNG", "Televisores", 1300.00);
insert into tb_ecommerce(codigo, produto, marca, departamento, preco) values(293029, "Notebook", "Dell", "Informática", 5500.00);
insert into tb_ecommerce(codigo, produto, marca, departamento, preco) values(988398, "Toalha", "Santista", "Cama, mesa e banho", 35.00);
insert into tb_ecommerce(codigo, produto, marca, departamento, preco) values(909371, "Smartphone Moto One Vision", "MOTOROLA", "Telefonia", 1500.00);
insert into tb_ecommerce(codigo, produto, marca, departamento, preco) values(883625, "Barbie Buttlerfly", "Matel", "Brinquedos", 150.00);

select * from tb_ecommerce;

select * from tb_ecommerce where preco > 500.00;

select * from tb_ecommerce where preco < 500.00;

update tb_ecommerce set produto = "Toalha de banho" where id = 3;