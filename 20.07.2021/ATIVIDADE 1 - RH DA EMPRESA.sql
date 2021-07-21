create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
cargo varchar(255),
idade int,
salario decimal(8,2),
primary key(id)
);

insert into tb_funcionarios(nome, cargo, idade, salario) values("Ary de Sá", "Desenvolvedor Back-end Jr.", 29, 5000.00);
insert into tb_funcionarios(nome, cargo, idade, salario) values("Jéssica Discola", "Desenvolvedora Front-end Jr.", 29, 5000.00);
insert into tb_funcionarios(nome, cargo, idade, salario) values("Gabriel Reis", "Desenvolvedor Back-end Jr.", 20, 5000.00);
insert into tb_funcionarios(nome, cargo, idade, salario) values("Felipe Ferreira", "Desenvolvedor Back-end Jr.", 29, 5000.00);
insert into tb_funcionarios(nome, cargo, idade, salario) values("Nathalia Ribeiro", "Desenvolvedora Back-end Jr.", 29, 5000.00);
insert into tb_funcionarios(nome, cargo, idade, salario) values("Marcos", "Auxiliar de Serviços Gerais", 23, 1200.00);
insert into tb_funcionarios(nome, cargo, idade, salario) values("Gustavo", "Auxiliar de Serviços Gerais", 23, 1200.00);
insert into tb_funcionarios(nome, cargo, idade, salario) values("Flávia", "Office Girl", 23, 1250.00);

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000.00;

select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set cargo = "Demitida" where id = 8;