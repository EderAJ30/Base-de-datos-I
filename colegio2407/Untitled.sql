SHOW databases;

USE libros2407;

select database();

show tables;

insert into libro values
(null, NULL, 'CIEN AÑOS DE SOLEDAD', null),
(null, NULL, 'CIEN AÑOS DE SOLEDAD1', null),
(null, NULL, 'CIEN AÑOS DE SOLEDAD2', null),
(null, NULL, 'CIEN AÑOS DE SOLEDAD3', null),
(null, NULL, 'CIEN AÑOS DE SOLEDAD4', '');

truncate table libro;

create table revista like libro;
desc revista;

show tables;

insert into revista select * from libro;

select * from revista;

create temporary table libros_tmp as 
select id_libro * 100 as id_libro, titulo from libro;

select * from libros_tmp;

desc libros_tmp;

show create table libro;

CREATE TEMPORARY TABLE libro_tmp2 (
  id_libro int NOT NULL AUTO_INCREMENT,
  id_escritor int DEFAULT NULL,
  titulo varchar(300) NOT NULL,
  texto text,
  PRIMARY KEY (id_libro),
  UNIQUE KEY uk_titulo (titulo),
  KEY id_escritor (id_escritor)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

desc libro_tmp2;

select * from libros_tmp;
select * from libro2_tmp2;


create database test_2407;

show tables from test_2407;
show tables;

rename table libros2407.revista to libros2407.enciclopedia;


