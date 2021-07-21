create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Higiene Pessoal",true);
insert into tb_categoria (descricao, ativo) values ("Mamãe e bebê",true);
insert into tb_categoria (descricao, ativo) values ("Medicamentos",true);
insert into tb_categoria (descricao, ativo) values ("Doces",true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
marca varchar (255) not null,
tamanho varchar (255) not null,
quantidadeEstoque int,
preco double,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Dipirona", "Dorflex", "20 comprimidos", 50, 19.99, 3);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Lenço Umidecido", "Johnsons Baby", "20 Unidades", 25, 19.99, 2);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Creme para Assadura", "Bepantol", "30g", 100, 19.99, 2);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Fralda", "Turma da Mônica", "60 unidades", 90, 19.99, 2);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Acido Acetilsalicilico", "Aspirina", "10 comprimidos", 30, 31.99, 3);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Sabonete Liquido", "L'occitane verbena", "500ml", 10, 219.99, 1);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Bala", "Halls", "28g", 50, 1.99, 4);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Patilha", "Valda Friends", "25g", 50, 4.99, 4);

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "B%";

select tb_produto.nome, tb_produto.preco, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.preco, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where categoria_id = 3;


