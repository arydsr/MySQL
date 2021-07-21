create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Frutas", true);
insert into tb_categoria(descricao, ativo) values ("Verduras", true);
insert into tb_categoria(descricao, ativo) values ("Legumes", true);
insert into tb_categoria(descricao, ativo) values ("Sucos", true);
insert into tb_categoria(descricao, ativo) values ("Lácteos", true);

create table tb_produto (
id bigint auto_increment,
produto varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvencimento date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Maçã", 9.90, 12, '2021-08-02', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Iogurt Nestlé", 9.90, 20, '2022-01-03', 5);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Alface Americana", 2.50, 3, '2021-08-05', 2);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Pimentão", 6.00, 4, '2021-08-28', 3);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Nan", 65.90, 2, '2021-09-24', 5);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Pera", 13.00, 3, '2021-10-07', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Batata", 3.00, 2, '2021-09-10', 3);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Brócolis", 8.00, 6, '2021-09-10', 2);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where produto like "C%";

select tb_produto.produto, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.produto, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id and tb_categoria.descricao = "Legumes";
