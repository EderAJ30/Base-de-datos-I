-- ERICK JESUS BACO ALVITER
show variables like '%dir';

CREATE DATABASE libros2407;

SHOW databases;

-- Instrucción para conectarse a una base de datos
USE libros2407;

select database();

-- ERICK JESUS BACO ALVITER
create table escritor(
	id_escritor int not null auto_increment primary key,
    nombre varchar(100) not null,
    apellidos varchar(100) not null,
    pais varchar(30), 
    nacionalidad varchar(30) not null default 'MEXICANA'
    
);

show tables;

-- ERICK JESUS BACO ALVITER
create table libro(
	id_libro int not null auto_increment,
    id_escritor int null,
    titulo varchar(300) not null,
    texto text null,
    primary key(id_libro),
    unique index uk_titulo(titulo),
    -- con esto se hace correctamente la llave foranea con integridad referencial 
    foreign key (id_escritor) references escritor(id_escritor) on delete set null on update cascade
);

-- ver los campos de una tabla
show tables;
show columns from escritor;
describe escritor;
desc escritor;

-- ver indices de una tabla, llaves
show index from escritor;
show index from libro;


-- show create table escritor;

CREATE TABLE IF NOT EXISTS`escritor` (
  `id_escritor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `pais` varchar(30) DEFAULT NULL,
  `nacionalidad` varchar(30) NOT NULL DEFAULT 'MEXICANA',
  PRIMARY KEY (`id_escritor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

select * from escritor;

alter table escritor add materno varchar(50) null;
alter table escritor drop materno;

-- ERICK JESUS BACO ALVITER
alter table escritor 
change apellidos paterno varchar(50) not null, 
-- after + "campo" es el nuevo orden que tendrá el campo
add materno varchar(50) null after paterno,
modify pais int;

-- modificar una llave primaria, primero necesita eliminar el autoincrement 
-- alter table escritor drop primary key;

-- ERICK JESUS BACO ALVITER
-- indice unico de tabla, no representa un cambio de estados
alter table escritor
add unique key uk_nombre(nombre, paterno, materno);

desc escritor;
show index from escritor;

desc libro;

/* eliminar la tabla escritor no se permite porque ... mientras que drop libros si se permite
además se puede eliminar la base de datos completa sin que se pida confirmación
drop table escritor;
drop table libro;
drop database libros2407; */

SHOW TABLES;

-- primera forma de insert
INSERT INTO escritor VALUES (NULL, 'GABRIEL', 'GARCIA', 'MARQUEZ', 60, 'COLOMBIA');

INSERT INTO escritor VALUES (NULL, 'GABRIEL', 'GARCIA', 'MARQUEZ', 60, 'COLOMBIA');

INSERT INTO escritor (nombre,paterno,nacionalidad) VALUES ('JUAN NEPOMUCENO' , 'RULFO' , NULL);

INSERT INTO escritor VALUES (3, 'JUAN', 'NEPOMUCENO', 'RULFO', 52, 'MEXICANA');
-- los valores descritos se insertan con el orden especificado
INSERT INTO escritor (nombre,paterno) VALUES ('AMPARO','DAVILA');

INSERT INTO escritor (pais ,paterno,nombre) VALUES (52 , 'GARRO' , 'ELENA');

alter table escritor
modify nacionalidad varchar(30) null default 'MEXICANA';

-- segunda forma de insertar
INSERT INTO escritor SET
id_escritor = 100, nombre = 'ISAAC', paterno = 'ASIMOV', pais = 1, nacionalidad = 'ESTADOUNIDENSE';
-- si se modifica un autoincrementable el siguiente continua después del salto
INSERT INTO escritor SET
nombre = 'OCTAVIO', paterno = 'PAZ';

SELECT * FROM escritor;

desc libro;

-- una sola instrucción para 4 acciones
INSERT INTO libro VALUES
(NULL, 1, 'CIEN AÑOS DE SOLEDAD', NULL),
(NULL, 1, 'EL AMOR EN LOS TIEMPOS DE COLERA', NULL),
(NULL, 100, 'YO ROBOT', NULL),
(NULL, 100, 'LA FUNDACION', NULL);

SELECT * FROM libro;

INSERT INTO libro VALUES (NULL, 300, 'EL LLANO EN LLAMAS','');
INSERT INTO libro VALUES (NULL, 3, 'EL LLANO EN LLAMAS','');

SHOW VARIABLES like '%safe%';
set sql_safe_updates = 0;


-- modificar y eliminar, verificación de la integridad referencial
update escritor set pais = 52 where pais is null;

update escritor set id_escritor = id_escritor + 1000;

DELETE FROM escritor WHERE id_escritor = 1003;

-- formas de eliminar el contenido
-- diferencia: truncate si reinicia los autoincrements mientras que delete no
DELETE FROM escritor;
TRUNCATE TABLE escritor;

SELECT * FROM escritor;
SELECT * FROM libro;






