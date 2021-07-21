create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Brotinho",true);
insert into tb_categoria (descricao, ativo) values ("Pequena",true);
insert into tb_categoria (descricao, ativo) values ("Média",true);
insert into tb_categoria (descricao, ativo) values ("Grande",true);
insert into tb_categoria (descricao, ativo) values ("família",true);
insert into tb_categoria (descricao, ativo) values ("Gigante",true);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar (255) not null,
borda varchar (255) not null,
cobertura varchar (255) not null,
adicional varchar (255) not null,
preco double,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (sabor, borda, cobertura, adicional, preco, categoria_id) values ("Mussarela", "Borda de Catupiry", "Catupiry", "Não", 15.99, 1);
insert into tb_pizza (sabor, borda, cobertura, adicional, preco, categoria_id) values ("Calabresa", "Borda de Cheddar", "Catupiry", "Não", 45.99, 5);
insert into tb_pizza (sabor, borda, cobertura, adicional, preco, categoria_id) values ("Portuguesa", "Sem borda", "Sem Cobertura", "Bacon", 69.99, 6);
insert into tb_pizza (sabor, borda, cobertura, adicional, preco, categoria_id) values ("Chocolate", "Borda de Catupiry", "Sem Cobertura", "Não", 20.99, 2);
insert into tb_pizza (sabor, borda, cobertura, adicional, preco, categoria_id) values ("Romeu e Julieta", "Borda de Catupiry", "Sem Cobertura", "Não", 20.99, 2);
insert into tb_pizza (sabor, borda, cobertura, adicional, preco, categoria_id) values ("Palmito", "Borda de Cheddar", "Cheddar", "Bacon", 45.99, 5);
insert into tb_pizza (sabor, borda, cobertura, adicional, preco, categoria_id) values ("Presunto", "Borda de Catupiry", "Cheddar", "Não", 39.99, 3);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like "C%";

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where categoria_id = 2;
