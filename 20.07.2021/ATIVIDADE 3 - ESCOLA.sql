create database db_escola;

use db_escola;

create table tb_escola(
id bigint auto_increment,
aluno varchar(255),
idade int,
genero varchar(255),
serie varchar(255),
materia varchar(255),
nota decimal(8,2),
matricula varchar(255),
primary key(id)
);

insert into tb_escola(aluno, idade, genero, serie, materia, nota, matricula) values("João", 15, "Masculino", "9º ano", "Matemática", 7.0, "Bolsista");
insert into tb_escola(aluno, idade, genero, serie, materia, nota, matricula) values("Maria", 15, "Feminino", "9º ano", "Matemática", 5.0,  "Bolsista");
insert into tb_escola(aluno, idade, genero, serie, materia, nota, matricula) values("Pedro", 14, "Masculino", "9º ano", "Matemática", 6.5,  "Bolsista");
insert into tb_escola(aluno, idade, genero, serie, materia, nota, matricula) values("Aline", 14, "Feminino", "9º ano", "Matemática", 9.0,  "Bolsista");
insert into tb_escola(aluno, idade, genero, serie, materia, nota, matricula) values("Ana", 15, "Feminino", "9º ano", "Matemática", 10.0,  "Bolsista");

select * from tb_escola;

select * from tb_escola where nota > 7.00;

select * from tb_escola where nota < 7.00;

select * from tb_escola where nota = 7.00;