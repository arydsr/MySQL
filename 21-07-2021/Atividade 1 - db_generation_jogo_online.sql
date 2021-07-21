create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_classe (descricao, ativo) values ("Mago",true);
insert into tb_classe (descricao, ativo) values ("Atirador",true);
insert into tb_classe (descricao, ativo) values ("Tank",true);
insert into tb_classe (descricao, ativo) values ("Assassino",true);
insert into tb_classe (descricao, ativo) values ("Suporte",true);
insert into tb_classe (descricao, ativo) values ("Soldado",true);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
categoria varchar (255) not null,
habilidade varchar (255) not null,
poderatk int,
poderdef int,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, categoria, habilidade, poderatk, poderdef, classe_id) values ("Luo Yi", "Elemental", "Mágica", 2500, 2200, 1);
insert into tb_personagem (nome, categoria, habilidade, poderatk, poderdef, classe_id) values ("Franco", "Marcial", "Física", 1800, 3000, 3);
insert into tb_personagem (nome, categoria, habilidade, poderatk, poderdef, classe_id) values ("Estes", "Elemental", "Mágica", 1500, 2000, 5);
insert into tb_personagem (nome, categoria, habilidade, poderatk, poderdef, classe_id) values ("Layla", "Tecnológico", "Física", 2800, 1500, 2);
insert into tb_personagem (nome, categoria, habilidade, poderatk, poderdef, classe_id) values ("Angela", "Tecnológico", "Mágica", 2000, 2000, 5);
insert into tb_personagem (nome, categoria, habilidade, poderatk, poderdef, classe_id) values ("Hayabusa", "Marcial", "Física", 3500, 1500, 4);
insert into tb_personagem (nome, categoria, habilidade, poderatk, poderdef, classe_id) values ("Valir", "Elemental", "Mágica", 2700, 2200, 1);
insert into tb_personagem (nome, categoria, habilidade, poderatk, poderdef, classe_id) values ("Hylos", "Elemental", "Mágica", 1700, 3000, 3);
insert into tb_personagem (nome, categoria, habilidade, poderatk, poderdef, classe_id) values ("Tigreal", "Luz", "Física", 1750, 3000, 3);
insert into tb_personagem (nome, categoria, habilidade, poderatk, poderdef, classe_id) values ("Rafaela", "Luz", "Mágica", 1550, 2000, 5);

select * from tb_personagem;

select * from tb_personagem where poderatk > 2000;

select * from tb_personagem where poderdef between 1000 and 2000;

select * from tb_personagem where nome like "L%";

select tb_personagem.nome, tb_personagem.poderatk, tb_personagem.poderdef, tb_classe.descricao
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_personagem.habilidade, tb_personagem.poderatk, tb_personagem.poderdef, tb_classe.descricao
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where classe_id = 3;