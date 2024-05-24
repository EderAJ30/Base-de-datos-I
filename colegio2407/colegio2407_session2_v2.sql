-- usar la base de datos 2407
use colegio2407;
show tables;

-- selecciona todos los alumnos
select * from alumnos;

-- recupera la fecha y hora actual del sistema 
select sysdate(), user(), database();

-- muestra varias variables relacionadas con directorios, como basedir
show variables like '%dir%';
SELECT @@basedir, @@datadir;

set @nombre = 'Eder Avalos Juarez';

select @nombre;

-- operaciones aritmeticas
select 'hola mundo' as saludo,
24*7 multiplicacion,
24+5 suma,
24-7 as resta,
24/7 division;

-- recuperar y mostrar datos específicos de la tabla alumnos, realizando operaciones y formateos sobre los datos recuperados. 
select clave_alu, nombre, ap_paterno, peso, peso * 1000 as pesogr, estatura, estatura * 100 estaturacm,
sysdate() fecha, lower(nombre) minusculas 
from alumnos;

-- GROUP BY revisa que sexo hay entre los alumnos
select sexo from alumnos group by sexo;

-- selecciona la ciudad de los alumnos y agrupa por sexo
select sexo, ciudad from alumnos group by sexo, ciudad;

-- El resultado muestra cuántos alumnos hay de cada sexo. con nreg 
select sexo, count(*) nreg
from alumnos
group by sexo;

-- mostrando solo aquellos grupos que tienen más de un registro.
select ciudad, sexo, count(*) nreg
from alumnos
where sexo != ''
group by ciudad, sexo
having count(*) > 1
order by 1, 2;

-- información sobre la cantidad de registros, la suma, 
-- el máximo, el mínimo y el promedio de peso para cada ciudad donde el peso promedio es mayor a 60
select ciudad, count(*) nreg, sum(peso) suma, max(peso) maximo,
min(peso) minimo, avg(peso) promedio 
from alumnos
where peso > 0
group by ciudad
HAVING avg(peso) >60
order by 6 DESC;

-- la cantidad de registros, la suma, el máximo, el mínimo y el promedio del peso para cada combinación de ciudad y sexo
select ciudad, sexo, count(*) nreg, sum(peso) suma, max(peso) maximo,
min(peso) minimo, avg(peso) promedio,
max(nombre) maxnom, min(nombre) minnom
from alumnos
group by ciudad, sexo;

-- numero total de registros
select count(*) nreg, count(nombre), count(sexo), count(ciudad)
from alumnos;

-- devolverá todos los registros de la tabla alumnos que cumplan 
-- simultáneamente con las condiciones de tener sexo femenino, vivir en Querétaro y tener un peso mayor que cero.
select *
from alumnos
where (sexo = 'f' AND ciudad = 'queretaro') AND peso >0;

-- alumnos donde la cuidad sea nulla
select * from alumnos
where ciudad IS NULL;

-- todos los registros de la tabla alumnos donde la columna ciudad sea NULL, 
-- una cadena vacía ('') o la cadena 'null'.
select * from alumnos
where (ciudad IS NULL OR ciudad= '' or ciudad = 'null');

-- dondde la ciudad no sea nulla
select * from alumnos
where ciudad IS NOT NULL;

-- Esta consulta devolverá todos los registros de la tabla alumnos donde el nombre sea 'OCTAVIO', 'ARGELIA', 'OSCAR' o 'GUADALUPE'.
select * from alumnos
where (nombre = 'OCTAVIO' or nombre = 'ARGELIA' or nombre = 'OSCAR' or nombre = 'GUADALUPE');

-- donde el nombre no sea 'OCTAVIO', 'ARGELIA', 'OSCAR' o 'GUADALUPE'.
select * from alumnos
where NOT (nombre = 'OCTAVIO' or nombre = 'ARGELIA' or nombre = 'OSCAR' or nombre = 'GUADALUPE');

-- devolverá todos los registros de la tabla alumnos donde el nombre es igual a 'OCTAVIO', 'ARGELIA', 'OSCAR', 'GUADALUPE' o 'ANDRES'.
select * from alumnos
where nombre IN ('OCTAVIO', 'ARGELIA', 'OSCAR', 'GUADALUPE', 'ANDRES');

-- mayor o igual a 69
select *
from alumnos 
where peso >= 60 AND 69
order by peso;

-- devolverá todos los registros de la tabla alumnos donde el peso esté en el rango de 60 a 69, ordenados por peso de forma ascendente.
select *
from alumnos 
where peso BETWEEN 60 AND 69
order by peso;

-- devolverá todos los registros de la tabla alumnos donde 
-- el nombre esté en el rango alfabético entre 'b' y 'c', ordenados alfabéticamente por nombre.
select *
from alumnos 
where nombre BETWEEN 'b' AND 'c'
order by nombre;

-- devolverá todos los registros de la tabla 
-- alumnos donde el nombre no esté en el rango alfabético entre 'a' y 'b', ordenados alfabéticamente por nombre.
select *
from alumnos 
where nombre NOT BETWEEN 'a' AND 'b'
order by nombre;

-- like% --
select nombre, ciudad, curp, email
from alumnos;

-- Saca solo los nombres de Jose --
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where nombre like '%jose%'; 

-- empieza con jose --
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where nombre like 'jose%'; 

-- Termina con jose --
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where nombre like '%jose'; 

-- 4 Caracteres --
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where nombre like '____'; 

-- 2 caracteres genericos, uno con a y otro caracter generico
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where nombre like '__a_';

-- 4 Caracteres con A --
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where nombre like '__a_%'; 

-- Caracteres  con dos y tres nombres--
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where nombre like '% % %'; 

-- Caracteres para ver correos--
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where email like '%@%'; 

-- Caracteres para ver correos con mx--
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where email like '%@%.mx';

-- saca la ubi de los alumnos --
select distinct ciudad from alumnos order by 1;

-- Caracteres para ver correos con mx--
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where ciudad like '%quer%' or ciudad like '%qro%';

-- personas que nacieron en df por el curp
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where curp like '___________DF%';

-- personas mujeres que nacieron en df por el curp
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where curp like '__________MDF%';

-- mujeres nacidas en el 92 
select nombre, ap_paterno, ciudad, curp, email
from alumnos
where curp like '____92____MDF%';

-- personas con el nreg
select ciudad, count(*) nreg
from alumnos
group by ciudad
order by 1;

--  funcion con if para sacaer queretaro si es que es verdadero 
select ciudad, 
if(ciudad like '%quer%', 'QUERETARO', ciudad)
from alumnos;

-- seleccionará la columna ciudad de la tabla alumnos, 
-- y si el valor de ciudad contiene 'quer' (mayúsculas o minúsculas), lo reemplazará con 'QUERETARO'.
select ciudad, 
if(ciudad like '%quer%' OR ciudad like '%quer%', 
'QUERETARO', ciudad)
from alumnos;

-- IF ANIDADO PARA UNA CONSULTA 
select ciudad, sexo,
if(ciudad like '%quer%' OR ciudad like '%quer%', 
'QUERETARO', ciudad),
if(sexo = 'M', 'MASCULINO', if(sexo = 'F', 'FEMENINO',
'SIN SEXO'))
from alumnos;

-- muestra la ciudad actualizada como 'QUERETARO' si la condición se cumple, y de lo contrario, muestra la ciudad original.
select if(ciudad like '%quer%' OR ciudad like '%qro%', 
'QUERETARO', ciudad) ciudad, count(*) nreg 
from alumnos
group by if(ciudad like '%quer%' OR ciudad like '%qro%', 
'QUERETARO', ciudad)
order by 1;

-- abre una copia de la tabla amuno
create temporary table alumnos_tmp as
SELECT * FROM alumnos;

select * from alumnos_tmp;

select distinct ciudad from alumnos_tmp;

-- cambia todas las ciudad que tengan qro a queretaro
update alumnos_tmp set ciudad = 'QUERETARO'
where ciudad like '%quer%' or ciudad like '%qro%';

-- con ese comando se quita el seguro para actualizar o cambiar valores de tabala
show variables like '%safe%';
set sql_safe_updates = 0;

-- está contando el número de registros agrupados por ciudad después de realizar una transformación en la columna de la ciudad, 
-- actualizándola a 'QUERETARO' si contiene '%quer%' o '%qro%'.
select ciudad, count(*) from
(select nombre, ap_paterno, curp, email, if(ciudad like '%quer%' OR ciudad like '%qro%', 
'QUERETARO', ciudad) ciudad
from alumnos) a
group by ciudad;

-- consulta anidada
select ciudad, count(*) nreg from
(select nombre, ap_paterno, curp, email, if(ciudad like '%quer%' OR ciudad like '%qro%', 
'QUERETARO', ciudad) ciudad
from alumnos) a
group by ciudad
having count(*) > 1;

-- consulta anidada sobre consulta anidada
select * from
(select ciudad, count(*) nreg from
(select nombre, ap_paterno, curp, email, if(ciudad like '%quer%' OR ciudad like '%qro%', 
'QUERETARO', ciudad) ciudad
from alumnos) a
group by ciudad ) x
where nreg > 1;

-- evalua la expresion regular
select nombre, curp, sexo from alumnos where nombre rlike 'jose';

-- igual evalua la expresion regular
select nombre, curp, sexo from alumnos where nombre regexp 'jose';

-- que empiezan con jose
select disct nombre from alumnos where nombre rlike '^jose$';

-- terminan con jose
select disct nombre, curp, sexo from alumnos where nombre rlike 'jose$';

-- nombres distintos que contengan jose adrian ale
select disct nombre, curp, sexo from alumnos where nombre rlike '(jose|aDrian|ale)';

-- nombres distintos que comienzen con jose contrngal las letras adrian o que contenga ale
select  distinct nombre, curp, sexo from alumnos where nombre rlike '(^jose|[aDrian]|ale)';

-- que esten dentro del corchete que empeizen con f y l
select distinct nombre from alumnos where nombre rlike '^[FL]';
select distinct nombre from alumnos where nombre rlike '^[ACD]';
select distinct nombre from alumnos where nombre rlike '^[FL]';

-- que terminen cin r y z
select distinct nombre from alumnos where nombre rlike '[R-Z]$';

-- empiece con acd y termine con roz directa
select distinct nombre from alumnos where nombre rlike '^[ACD]|[roz]$';

-- otra manera de hacer lo mismo
select distinct nombre from alumnos where nombre rlike '^[ACD].*[roz]$';

-- collate hacer una bsuqeda entre coleccion de datos
-- utf8_bin coleccion en la que se trabaja
-- collete puede distinguir entre mayusculas y minusculas
select distinct email from alumnos where email COLLATE utf8_bin rlike '^[A-Z]';
select distinct email from alumnos where email COLLATE utf8_bin rlike '^[a-z]';

-- nombres exactamente con 7 caracteres
select distinct nombre from alumnos where nombre rlike '^.{7}$';

-- que tiene al menos 7 caracteres
select distinct nombre from alumnos where nombre rlike '^.{7}';

-- empiecen con cualquier cadena de cuatro caracteres + espacio + terminar con cualquier cadena de 7 caracteres
select distinct nombre from alumnos where nombre rlike '^.{4} .{7}$';

-- contenga 3 veces la letra A en cualquier posicion
select distinct nombre from alumnos where nombre rlike '^(?:[^aA]*[aA]){3}[^aA]*$';

-- email que contenga numeros
select distinct email from alumnos where email rlike '[0-9]';

-- algo de la familia digitos 
select distinct email from alumnos where email rlike '[[:digit:]]';

-- cualquier cadena que no termine o inicie con un digito no contenga digitos 
select distinct email from alumnos where email rlike '^[0-9]*$';

-- correos que no empiecen con @ que contengan dentro de la cadena y no hayan dos seguidas que tengan punto  y despues al menos dos caracteres
-- validarlo
select distinct email from alumnos where email rlike '^[^@]+@[^@]+\.[a-zA-Z]{2,}$';

-- curps que sean validos alv
select distinct curp from alumnos where curp rlike '[A-Z][AEIOUX][A-Z]{2}[0-9]{2}[0-1][0-9][0-3][0-9][MH][A-Z]{2}[^AEIOU]{3}[0-9A-Z][0-9]';

-- funciones de cadena

-- concatena lo que indicas  y te manda una sola cosa
select concat(ap_paterno, ' ', ap_materno, ' ',nombre,'-',sexo,'*',peso) alumno from alumnos;

-- _ws concatena con todo lo demas
select concat_ws(' ', ap_paterno,ap_materno,nombre) alumno from alumnos;
select concat_ws(ciudad, ap_paterno,ap_materno,nombre) alumno from alumnos;

-- concatena los campos y muestra solo los que tiene mar 
select concat_ws(' ', ap_paterno,ap_materno,nombre) alumno 
from alumnos 
where concat_ws(' ', ap_paterno,ap_materno,nombre)
like '%MAR%'
order by alumno;

-- funciones de transformacion

-- devuelve los valores modificados pero no los modifica 
select distinct nombre, ucase(nombre), lcase(nombre), lower(nombre)
from alumnos;

-- funciones que extraen left n num de la izuqierda, right n numeros de la derecha, substr trae n lo restante, substr los siguientes, mid de los siguentes caracteres
select distinct nombre, left(nombre, 3), right(nombre, 3), substr(nombre, 3,3), mid(nombre,3,3)
from alumnos 
order by nombre;

-- locate duevuelve
select distinct nombre, locate(' ', nombre), locate(' ',nombre,5)
from alumnos;

-- devolverá los nombres distintos de la tabla alumnos junto con la posición del primer espacio en cada nombre, 
-- excluyendo aquellos nombres que no contienen espacios
select distinct nombre, locate(' ', nombre)
from alumnos
where locate(' ',nombre) > 0;

-- evolverá los nombres distintos de la tabla alumnos junto con la posición del primer y segundo espacio en cada nombre, 
-- excluyendo aquellos nombres que no contienen al menos un espacio.
select distinct nombre, locate(' ', nombre),
locate(' ', nombre, locate(' ', nombre)+1)
FROM alumnos 
where locate(' ',nombre) > 0;

-- devolverá los nombres distintos de la tabla alumnos junto con el primer nombre (nf1) y el segundo nombre (nf2) 
-- si existen, excluyendo aquellos nombres que no contienen al menos un espacio.
select distinct nombre, locate(' ', nombre),
if(locate(' ',nombre) > 0,
	left(nombre, locate(' ', nombre)-1),
    nombre) nf1,
mid (nombre, locate(' ', nombre) + 1) n2,
if(locate(' ', nombre) > 0,
	mid(nombre, locate(' ', nombre) +1),
    '') nf2
FROM alumnos 
where locate(' ',nombre) > 0
order by nombre;

-- dividir los nombres en dos partes (nf1 y nf2) si contienen al menos un espacio, y devolver el nombre completo si no contiene espacios.
SELECT DISTINCT nombre, locate(' ', nombre),
-- left(nombre,locate(' ', nombre) - 1) n1,
if(locate(' ', nombre) > 0,
	left(nombre,locate(' ', nombre)-1 ), nombre)nf1,
-- MID(nombre, locate(' ', nombre) + 1) n2,
IF(locate(' ', nombre) > 0,
	MID(nombre, locate(' ', nombre) + 1),
    ' ')NF2
FROM alumnos
ORDER BY nombre;

-- devolverá nombres distintos de la tabla de alumnos junto con el nombre repetido cuatro veces en una columna y asteriscos 
-- repetidos el número de veces que tiene cada nombre en otra columna.
select distinct nombre, repeat(nombre, 4), repeat('*', length(nombre))
from alumnos order by 1;

-- devolverá la longitud máxima de los nombres, apellidos paternos, apellidos maternos y nombres de ciudad en la tabla de alumnos.
select max(length(nombre)), max(length(ap_paterno)),
max(length(ap_materno)), max(length(ciudad))
from alumnos;

-- devolverá nombres distintos de la tabla de alumnos, donde cada nombre se complementa 
-- con asteriscos para alcanzar una longitud total de 30 caracteres.
select distinct 
concat(nombre, repeat('*', 30 - length(nombre)))
from alumnos order by 1;

-- generará una columna llamada Datos que contendrá los campos concatenados con el 
-- separador repetido para alcanzar longitudes específicas en cada campo. 
set @sep = '';
SELECT  
concat(concat(nombre, repeat(@sep, 30 - length(nombre))),
concat(ap_paterno, repeat(@sep, 30 - length(ap_paterno))),
concat(ap_materno, repeat(@sep, 30 - length(ap_materno))),
concat(ifnull(ciudad,''), repeat(@sep, 35 - length(ifnull(ciudad,'')))),
concat(curp, repeat(@sep, 18 - length(curp))),
concat(sexo, repeat(@sep, 1 - length(sexo)))
) Datos
FROM alumnos order by 1;

-- archivos
set @sep = ' ';
SELECT  
concat(concat(nombre, repeat(@sep, 30 - length(nombre))),
concat(ap_paterno, repeat(@sep, 30 - length(ap_paterno))),
concat(ap_materno, repeat(@sep, 30 - length(ap_materno))),
concat(ifnull(ciudad,''), repeat(@sep, 35 - length(ifnull(ciudad,'')))),
concat(curp, repeat(@sep, 18 - length(curp))),
concat(sexo, repeat(@sep, 1 - length(sexo)))
) Datos
into outfile '/Users/ederaj30/Downloads/BASEDEDATOS/archivos/datos.txt'
fields terminated by ''
lines terminated by ''
FROM alumnos order by 1;

-- fuciones de fecha
select sysdate(), curdate(), curtime();

SHOW VARIABLES LIKE '%time_name';
set lc_time_names = 'es_MX';

-- proporcionará información detallada sobre la fecha y hora actuales en varios formatos diferentes.
select sysdate(), date_format(sysdate(),'%Y') anio,
date_format(sysdate(),'%m') mes, date_format(sysdate(), '%d') d,
date_format(sysdate(),'%y') anio2,
date_format(sysdate(), '%Y-%m-%d') fecha,
date_format(sysdate(), '%H-%i-%s') hora,
date_format(sysdate(), 'Dia %j del año') diaanio,
date_format(sysdate(), 'Semana no. %u') semana,
date_format(sysdate(), 'Nombre mes %M, dia de la semana %W %a');

-- Esta consulta proporcionará información detallada sobre la fecha almacenada en la columna fedita de la tabla alumnos en varios formatos diferentes.
select nombre, fedita, date_format(fedita,'%Y') anio,
date_format(fedita,'%m') mes, date_format(fedita, '%d') d,
date_format(fedita,'%y') anio2,
date_format(fedita, '%Y-%m-%d') fecha,
date_format(fedita, '%H-%i-%s') hora,
date_format(fedita, 'Dia %j del año') diaanio,
date_format(fedita, 'Semana no. %u') semana,
date_format(fedita, 'Nombre mes %M, dia de la semana %W %a')
from alumnos;

-- Esta consulta devolverá el número de alumnos por año, ordenado cronológicamente por año.
select  date_format(fedita, '%Y') anio, count(*) nalu
from alumnos
group by date_format(fedita, '%Y')
order by 1;

-- devolverá el número de alumnos por año y mes, incluyendo el nombre completo del mes, y estará ordenado cronológicamente por año.
select  date_format(fedita, '%Y') anio, 
date_format(fedita, '%m') mes,
date_format(fedita, '%M') nombremes,
count(*) nalu
from alumnos
group by date_format(fedita, '%Y'),
date_format(fedita, '%m'),
date_format(fedita, '%M')
order by 1;

-- cambios en 2017
select clave_alu, nombre, ap_paterno, ap_materno, fedita
from alumnos
where date_format(fedita, '%Y') = '2017';

-- devolverá los detalles de los alumnos cuya fecha de edición sea en o antes de marzo de 2017, ordenados por fecha.
select clave_alu, nombre, ap_paterno, ap_materno, fedita
from alumnos
where date_format(fedita, '%Y') = '2017'
and date_format(fedita, '%m') <= '03'
order by 5;

-- a hora de la fecha de edición en diferentes representaciones, 
-- ya sea en formato de 12 horas o de 24 horas, con o sin segundos, y con el indicador de AM/PM
select nombre, fedita,
date_format(fedita, '%H') hora,
date_format(fedita, '%r') h12,
date_format(fedita, '%T') h24,
date_format(fedita, '%h, %p') h1224
from alumnos;

--
select nombre, fedita, day(fedita), year(fedita), month(fedita),
monthname(fedita), week(fedita), quarter(fedita), hour(fedita),
minute(fedita), second(fedita), dayofyear(fedita)
from alumnos;

-- Esta consulta devolverá los nombres y las fechas de edición de los alumnos en un formato personalizado que 
-- muestra el día del mes, el nombre del mes, el año, la hora y las horas.
select nombre, fedita, 
date_format(fedita, '%d de %M del año %Y a las %H horas') f
from alumnos;

set @f = '2023-12-31 23:59:59';

-- Esta consulta devolverá la fecha @f aumentada en 1 segundo, 1 minuto, 1 hora, 1 día, 1 mes, 1 año, 1 trimestre y 1 semana, respectivamente.
select
date_add(@f, interval 1 second) mas1seg,
date_add(@f, interval 1 minute) mas1min,
date_add(@f, interval 1 hour) mas1hr,
date_add(@f, interval 1 day) mas1d,
date_add(@f, interval 1 month) mas1m,
date_add(@f, interval 1 year) mas1y,
date_add(@f, interval 1 quarter) mas1tri,
date_add(@f, interval 1 week) mas1w;

-- devolverá la fecha @f disminuida en 1 segundo, 1 minuto, 1 hora, 1 día, 1 mes, 1 año, 1 trimestre y 1 semana, respectivamente.
select
date_add(@f, interval -1 second) mas1seg,
date_add(@f, interval -1 minute) mas1min,
date_add(@f, interval -1 hour) mas1hr,
date_add(@f, interval -1 day) mas1d,
date_add(@f, interval -1 month) mas1m,
date_add(@f, interval -1 year) mas1y,
date_add(@f, interval -1 quarter) mas1tri,
date_add(@f, interval -1 week) mas1w;

-- Esto devolverá la fecha @f disminuida en 1 segundo.
select
date_sub(@f, interval 1 second) menos1s;

-- Esto devolverá la fecha @f aumentada en 1 segundo.
select
date_sub(@f, interval -1 second) menos1s;

-- proporcionará el nombre y la fecha de edición de cada alumno, junto con el número de días, horas y semanas 
-- transcurridos desde la fecha de edición hasta la fecha actual.
select nombre , fedita, datediff(sysdate(),fedita)ndias,
(datediff(sysdate(), fedita) * 24) nhoras,
(datediff(sysdate(), fedita) * 7) nsem
from alumnos;

-- consulta proporcionará el nombre y la fecha de edición de cada alumno, junto con diferentes medidas de la 
-- diferencia de tiempo entre la fecha de edición y la fecha actual, en semanas, horas, meses y años.
select nombre , fedita,
(datediff(sysdate(), fedita) /7)nsem,
(datediff(sysdate(), fedita) *24)nhoras,
timestampdiff(month, fedita, sysdate()) diffmes,
timestampdiff(week, fedita, sysdate()) diffw,
timestampdiff(hour, fedita, sysdate()) diffh,
timestampdiff(year, fedita, sysdate()) diffy
from alumnos;

-- devolverá el nombre, la fecha de edición y los componentes específicos de la fecha (día, mes, año y semana) para cada alumno en la tabla alumnos.
select nombre , fedita,
extract(day from fedita) dia,
extract(year from fedita) anio,
extract(month from fedita) mes,
extract(week from fedita) semana
from alumnos;

-- proporcionará el nombre, la fecha de edición, la diferencia en días, 
-- la diferencia en años, y la diferencia en años, meses y días para cada alumno en la tabla alumnos.
select nombre , fedita,
datediff(sysdate(), fedita) dif,
timestampdiff(year,fedita, sysdate()) diffanio,
from_days(datediff(sysdate(),fedita)) fdiff,
date_format(from_days(datediff(sysdate(),fedita)),'%Y años, %m mes y %d dias') f
from alumnos;

select * from niveles, grados order by 1;

select * from niveles;
select * from grados;

select * from alumnos;
select * from pagos;

-- aqui se crea los a p y c
select count(*) from alumnos a, pagos, p;
select count(*) from alumnos a, pagos, cursos c;

-- devolverá todas las columnas de ambas tablas para aquellos registros donde las claves de los alumnos coincidan en ambas 
-- tablas, ordenadas por la primera columna de la tabla alumnos.
select * 
from alumnos a, pagos p
where a.clave_alu = p.clave_alu
order by 1;

-- para aquellos registros donde las claves de los alumnos coincidan en ambas tablas, ordenados por la clave del alumno.
select a.clave_alu, nombre, ap_paterno, ap_materno, p.*
from alumnos a, pagos p
where a.clave_alu = p.clave_alu
order by 1;

-- proporcionará una lista de alumnos con sus pagos y los cursos asociados, ordenada por la clave del alumno.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, pago, fecha_pago, c.abreviatura curso
from alumnos a, pagos p, cursos c
where (a.clave_alu = p.clave_alu
and c.id_curso = p.id_curso)
order by 1;

-- Utiliza una cláusula WHERE para unir las tablas en base a las claves correspondientes y ordena los resultados por la clave del alumno. 
select a.clave_alu, a.nombre, ap_paterno, ap_materno, pago, fecha_pago, c.abreviatura curso
from alumnos a, pagos p, cursos c
where (a.clave_alu = p.clave_alu
and c.id_curso = p.id_curso)
order by 1;

-- devolverá los registros de alumnos masculinos que tienen pagos asociados y los cursos correspondientes, ordenados por la clave del alumno.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, pago, fecha_pago, c.abreviatura curso
from alumnos a, pagos p, cursos c
where (a.clave_alu = p.clave_alu
and c.id_curso = p.id_curso)
and sexo = 'M'
order by 1;

-- devolverá los registros de alumnos masculinos que tienen pagos asociados en el año 2018 y los cursos correspondientes, 
-- ordenados por la clave del alumno.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, pago, fecha_pago, c.abreviatura curso
from alumnos a, pagos p, cursos c
where (a.clave_alu = p.clave_alu
and c.id_curso = p.id_curso)
and sexo = 'M' and year(fecha_pago) = 2018
order by 1;

-- consulta prefiltra las tablas alumnos y pagos antes de realizar las uniones, lo que 
-- puede mejorar el rendimiento al reducir el número de registros procesados en las uniones finales.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, pago, fecha_pago, c.abreviatura curso
from (select  * from alumnos where sexo = 'M') a,
(select * from pagos where YEAR(fecha_pago) = 2018) p, cursos c
where (a.clave_alu = p.clave_alu
and c.id_curso = p.id_curso)
order by 1;

select * from alumnos;
select * from estados;

-- devolverá los registros de alumnos con la información de su estado correspondiente, según la relación definida por id_estado.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, estado
from alumnos a, estados e
where a.id_estado = e.id_estado;

-- devolverá los registros de alumnos con la información de su estado correspondiente y los 
-- detalles de los pagos asociados, según las relaciones definidas por id_estado y clave_alu.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, estado, pago, fecha_pago
from alumnos a, estados e, pagos p
where a.id_estado = e.id_estado and a.clave_alu = p.clave_alu;

-- devolverá los registros de alumnos con la información de su estado correspondiente y los 
-- detalles de los pagos asociados, excluyendo aquellos registros donde el estado es "Querétaro".
select a.clave_alu, a.nombre, ap_paterno, ap_materno, estado, pago, fecha_pago
from alumnos a, estados e, pagos p
where a.id_estado = e.id_estado and a.clave_alu = p.clave_alu and estado != 'queretaro';

--  agrupa los resultados por alumno para calcular el total de pagos (tpago) y el número de pagos realizados (npagos) por cada alumno.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, 
sum(pago) tpago, count(*) npagos
from alumnos a, pagos p
where a.clave_alu = p.clave_alu
group by a.clave_alu, a.nombre, ap_paterno, ap_materno
order by 3, 4, 2;

select* from pagos where clave_alu = '11060003';

-- filtra los resultados para incluir solo las alumnas (sexo = 'f') que han realizado 
-- pagos totales iguales o superiores a 30,000 y que han realizado menos de 10 pagos en total. 
select a.clave_alu, a.nombre, ap_paterno, ap_materno, 
sum(pago) tpago, count(*) npagos
from alumnos a, pagos p
where a.clave_alu = p.clave_alu
and sexo = 'f'
group by a.clave_alu, a.nombre, ap_paterno, ap_materno
having sum(pago) >= 30000 and count(*) < 10
order by 3, 4, 2;

-- la subconsulta selecciona la suma total de pagos y el número total de pagos por cada alumno de la 
-- tabla pagos y aplica el filtro (HAVING) para incluir solo aquellos alumnos que tienen menos de 10 pagos 
-- y cuya suma total de pagos es mayor que 30,000.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, tpago, npagos
from
alumnos a,
(select clave_alu, sum(pago) tpago, count(*) npagos
	from pagos
	group by clave_alu) p
where a.clave_alu = p.clave_alu
and (npagos < 10 and tpago>30000)
group by a.clave_alu, a.nombre, ap_paterno, ap_materno
order by 3, 4, 2;

select * from alumnos
where clave_alu not in(select distinct clave_alu from pagos);

-- JOIN

-- FULL JOIN
-- En esta consulta, estás seleccionando la clave del alumno (a.clave_alu), la clave del pago (p.clave_alu), 
-- los apellidos del alumno (ap_paterno y ap_materno), y la fecha de pago (fecha_pago). Estás uniendo las tablas alumnos y pagos 
-- utilizando la condición a.clave_alu = p.clave_alu.
select a.clave_alu, p.clave_alu, ap_paterno, ap_materno, p.clave_alu, fecha_pago
from alumnos a JOIN pagos p
ON(a.clave_alu = p.clave_alu)
order by 1;

-- LEFT JOIN
-- En esta consulta estás utilizando una unión izquierda (LEFT JOIN) entre las tablas alumnos y pagos utilizando como 
-- condición de unión la clave del alumno (a.clave_alu) y la clave del pago (p.clave_alu). Esto asegura que todos los registros 
-- de la tabla alumnos sean incluidos en el resultado, incluso si no tienen un registro correspondiente en la tabla pagos.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, p.clave_alu, pago, fecha_pago
from alumnos a 
LEFT JOIN pagos p ON (a.clave_alu = p.clave_alu)
order by 5;

-- LEFT JOIN
-- busca seleccionar datos de la tabla de alumnos (alumnos) y de la tabla de pagos (pagos) utilizando una unión izquierda (LEFT JOIN) 
-- en base a la clave del alumno (a.clave_alu) y la clave del pago (p.clave_alu). Luego, aplica una condición para seleccionar solo aquellos 
-- registros donde no haya una coincidencia en la tabla de pagos, es decir, donde la clave del pago sea nula en la tabla de pagos.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, p.clave_alu, pago, fecha_pago
from alumnos a 
LEFT JOIN pagos p ON (a.clave_alu = p.clave_alu)
where p.clave_alu is null
order by 5;

-- esta mal
select a.clave_alu, a.nombre, ap_paterno, ap_materno, p.clave_alu,
sum(pago) tpago, count(*) npagos
from alumnos a 
LEFT JOIN pagos p ON (a.clave_alu = p.clave_alu)
group by a.clave_alu, a.nombre, ap_paterno, ap_materno, p.clave_alu
order by 5;

-- busca nulos en clave_alu
select a.clave_alu, a.nombre, ap_paterno, ap_materno, p.clave_alu,
sum(pago) tpago, count(p.clave_alu) npagos
from alumnos a 
LEFT JOIN pagos p ON (a.clave_alu = p.clave_alu)
group by a.clave_alu, a.nombre, ap_paterno, ap_materno, p.clave_alu
order by 5;

-- ifnull
select a.clave_alu, a.nombre, ap_paterno, ap_materno, p.clave_alu,
ifnull (sum(pago),0) tpago, count(p.clave_alu) npagos
from alumnos a 
LEFT JOIN pagos p ON (a.clave_alu = p.clave_alu)
group by a.clave_alu, a.nombre, ap_paterno, ap_materno, p.clave_alu
order by 5;

-- esta consulta combina información de alumnos, pagos y cursos, mostrando los datos de los alumnos incluso si no han realizado 
-- ningún pago, y los datos de los pagos incluso si no están asociados a ningún curso, y luego los ordena por el identificador del curso.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, p.clave_alu, pago, fecha_pago, p.id_curso, c.id_curso, abreviatura
from alumnos a 
LEFT JOIN pagos p ON (a.clave_alu = p.clave_alu)
right JOIN cursos c ON (p.id_curso = c.id_curso)
order by 9;

-- esta consulta busca alumnos que han realizado pagos pero no están inscritos en ningún curso, y los ordena por la abreviatura del curso, 
-- si hay registros sin coincidencias, estos se incluirán y tendrán valores nulos en las columnas de la tabla cursos.
select a.clave_alu, a.nombre, ap_paterno, ap_materno, p.clave_alu, pago, fecha_pago, p.id_curso, c.id_curso, abreviatura
from alumnos a
JOIN pagos p ON(a.clave_alu = p.clave_alu)
LEFT JOIN cursos c ON (p.id_curso = c.id_curso)
where c.id_curso is null
order by 9;

--
SELECT * FROM alumno_salon;
SELECT * FROM estados;
SELECT * FROM salones;

--
SELECT a.clave_alu, concat_ws(' ', ap_paterno, ap_materno, a.nombre) alumno, e.abreviatura estado, 
c.abreviatura curso, observaciones salon, n.nombre nivel, g.nombre grado 
FROM alumnos a
JOIN alumno_salon sa ON (a.clave_alu = sa.clave_alu)
JOIN salones s ON (sa.id_salon = s.id_salon)
JOIN cursos c ON (sa.id_curso = c.id_curso)
JOIN niveles n ON (s.id_nivel = n.id_nivel)
JOIN grados g ON (s.id_grado = g.id_grado)
JOIN estados e ON (a.id_estado = e.id_estado)
WHERE g.nombre = '6o' AND e.abreviatura NOT IN ('QRO')
ORDER BY 2;

--
SELECT *
FROM alumnos a
JOIN estados e ON (a.id_estado = e.id_estado);

-- pa no cagarla
SELECT * FROM alumnos
WHERE ap_paterno = 'mejia' AND ap_materno = 'jimenez' AND nombre = 'luisa';

-- quitar el modo seguro
SHOW VARIABLES LIKE '%safe%';
SET sql_safe_updates = 0;

-- actualizar
UPDATE alumnos SET id_estado = NULL
WHERE ap_paterno = 'mejia' AND ap_materno = 'jimenez' AND nombre = 'luisa';

--
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
JOIN estados e USING (id_estado);

--
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
NATURAL JOIN estados e;

--
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
NATURAL LEFT JOIN estados e;

--
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
RIGHT JOIN estados e ON (a.id_estado = e.id_estado);

--
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
NATURAL RIGHT JOIN estados e;

--
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
NATURAL RIGHT JOIN estados e
WHERE a.clave_alu is null;

--
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
NATURAL LEFT JOIN estados e
WHERE e.id_estado is null;

--
SELECT * FROM niveles;

--
SELECT * FROM niveles
UNION
SELECT * FROM grados;

--
SELECT * FROM niveles
UNION
SELECT * FROM grados
UNION
SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno
FROM alumnos;

SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno
FROM alumnos
UNION
SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno
FROM alumnos;

--
SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno
FROM alumnos
UNION ALL
SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno
FROM alumnos
ORDER BY 2;

--
SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno
FROM alumnos
UNION ALL
SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno
FROM alumnos
ORDER BY 2;

--
SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno,
'alumno' tipo
FROM alumnos;

SELECT * FROM profesores;

--
SELECT clave_prof, concat_ws(' ', apellido_p, apellido_m, nombres) profesor,
'profesor' tipo
FROM profesores;

--
SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno,
'alumno' tipo
FROM alumnos
UNION
SELECT clave_prof, concat_ws(' ', apellido_p, apellido_m, nombres) profesor,
'profesor' tipo
FROM profesores
ORDER BY 2;

--
SELECT * FROM 
(SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) persona,
'alumno' tipo
FROM alumnos
UNION
SELECT clave_prof, concat_ws(' ', apellido_p, apellido_m, nombres) profesor,
'profesor' tipo
FROM profesores) p
WHERE persona LIKE '%Torre%'
order by 2;

--
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
NATURAL RIGHT JOIN estados e
UNION ALL 
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
NATURAL LEFT JOIN estados e
ORDER BY 2;

--
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
LEFT JOIN estados e ON (a.id_estado = e.id_estado)
UNION
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
RIGHT JOIN estados e ON (a.id_estado = e.id_estado)
ORDER BY 2;

--
SELECT * FROM
(SELECT a.clave_alu, nombre, ap_paterno, a.id_estado a_id_estado, e.*
FROM  alumnos a
LEFT JOIN estados e ON (a.id_estado = e.id_estado)
UNION
SELECT a.clave_alu, nombre, ap_paterno, a.id_estado, e.*
FROM  alumnos a
RIGHT JOIN estados e ON (a.id_estado = e.id_estado)) x
WHERE (a_id_estado IS NULL OR id_estado IS NULL)
order by 2;

-- TABLAS PIVOTE
SELECT estado, sexo, count(clave_alu) nalu
FROM alumnos a RIGHT JOIN estados e ON (a.id_estado = e.id_estado)
GROUP BY estado, sexo
ORDER BY 1, 2;

--
SELECT estado,
SUM(IF(sexo = '', 1, 0)) as 'SIN DATO',
SUM(IF(sexo = 'F', 1, 0)) as 'FEMENINO',
SUM(IF(sexo = 'M', 1, 0)) as 'MASCULINO'
FROM alumnos a RIGHT JOIN estados e ON (a.id_estado = e.id_estado)
GROUP BY estado
ORDER BY 1;

-- Numero de alumnos por ciudad y curso
SELECT * FROM cursos;

SELECT estado,
SUM(IF(c.abreviatura = '2015-2016', 1, 0)) as '2015-2016',
SUM(IF(c.abreviatura = '2016-2017', 1, 0)) as '2016-2017',
SUM(IF(c.abreviatura = '2017-2018', 1, 0)) as '2017-2018',
SUM(IF(c.abreviatura = '2018-2019', 1, 0)) as '2018-201999'
FROM alumnos a
JOIN alumno_salon sa ON (a.clave_alu=sa.clave_alu)
jOIN cursos c ON (sa.id_curso = c.id_curso)
RIGHT JOIN estados e ON (a.id_estado = e.id_estado)
GROUP BY estado
ORDER BY 1;


-- clase 09 JUN 24
create or replace view estudiantes as
select * from alumnos;

--
select * from estudiantes;
SELECT * FROM alumnos;

--
show tables;

--
select * from
information_schema.tables;

--
select * from
information_schema.tables
where table_schema = 'colegio2407';

--
SELECT * FROM
information_schema.TABLES
WHERE table_schema = 'colegio2407'
AND table_type = 'VIEW';

--
show create view estudiantes;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `estudiantes` AS select `alumnos`.`clave_alu` AS `clave_alu`,
`alumnos`.`clave_admin` AS `clave_admin`,`alumnos`.`ap_paterno` AS `ap_paterno`,`alumnos`.`ap_materno` AS `ap_materno`,`alumnos`.`nombre` AS 
`nombre`,`alumnos`.`sexo` AS `sexo`,`alumnos`.`curp` AS `curp`,`alumnos`.`peso` AS `peso`,`alumnos`.`estatura` AS `estatura`,`alumnos`.`direccion` 
AS `direccion`,`alumnos`.`colonia` AS `colonia`,`alumnos`.`cp` AS `cp`,`alumnos`.`ciudad` AS `ciudad`,`alumnos`.`id_estado` AS `id_estado`,`alumnos`.
`delegacion` AS `delegacion`,`alumnos`.`telefono` AS `telefono`,`alumnos`.`celular` AS `celular`,`alumnos`.`email` AS `email`,`alumnos`.`status_alu` AS 
`status_alu`,`alumnos`.`fedita` AS `fedita` from `alumnos`;

-- elimino
drop view estudiantes;

SELECT * FROM estudiantes;

DESC estudiantes;

--
CREATE OR REPLACE VIEW alumnas AS
SELECT * FROM  alumnos 
WHERE sexo = 'f';

--
SELECT * FROM alumnas; 

SELECT DISTINCT status_alu FROM alumnos;


CREATE  OR REPLACE VIEW alumnos_activos AS 
SELECT clave_alu matricula, concat_ws(' ', ap_paterno, ap_materno, nombre)
alumno, curp, sexo, ciudad
FROM alumnos
WHERE status_alu = 'AC';

SELECT * FROM alumnos_activos;

DESC alumnos_activos;

CREATE TEMPORARY TABLE alumnos_tmp AS
SELECT * FROM alumnos;

SELECT * FROM alumnos_tmp;
SELECT * FROM alumnos;
SELECT * FROM estudiantes;

-- no quita la estructura y reinicia la primary key
TRUNCATE TABLE alumnos;

-- regresar los datos de la tmp a la original
INSERT INTO alumnos
SELECT * FROM alumnos_tmp;

-- con o sin LEFT
SELECT matricula, alumno, sum(pago) tpago, count(p.clave_alu) npagos
FROM alumnos_activos ac
LEFT JOIN pagos p ON(ac.matricula = p.clave_alu)
GROUP BY matricula, alumno;

--
CREATE OR REPLACE VIEW pagos_alumnos_activos AS
SELECT matricula, alumno, sum(pago) tpago, count(p.clave_alu) npagos
FROM alumnos_activos ac
LEFT JOIN pagos p ON(ac.matricula = p.clave_alu)
GROUP BY matricula, alumno;

SELECT * FROM pagos_alumnos_activos;

-- 
DROP VIEW alumnos_activos;

--
CREATE OR REPLACE VIEW personas AS
SELECT clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno,
'alumno' tipo
FROM alumnos
UNION
SELECT clave_prof, concat_ws(' ', apellido_p, apellido_m, nombres) profesor,
'profesor' tipo
FROM profesores;

SELECT * FROM personas;
SELECT DISTINCT ciudad FROM personas ORDER BY 1;


-- CREATE OR REPLACE VIEW personas_ciudad AS
SELECT clave, persona, sexo, curp, 
IF(ciudad RLIKE '(qro|quer)', 'QUERETARO', ciudad) ciudad,
tipo FROM personas;

-- como corre el trigger
SELECT * FROM 
information_schema.triggers
WHERE trigger_schema = 'colegio2407';

--
DESC cursos;

SELECT * FROM cursos;

--
SELECT * FROM cursos;

INSERT INTO cursos VALUES 
('C014', 'CURSO ESCOLAR 2018-2019', '2018-2019', '2018-07-31 00:00:00', '2019-07-30 00:00:00');

DELETE FROM cursos
WHERE id_curso = 'C014';

-- TRIGGER
DELIMITER //
DROP TRIGGER IF EXISTS bi_cursos //
CREATE TRIGGER bi_cursos
BEFORE INSERT ON cursos
FOR EACH ROW 
BEGIN
	IF(LEFT(NEW.nombre,5) <> 'CURSO') THEN 
		SET NEW.nombre = CONCAT('curso ', NEW.nombre);
	END IF;
    SET NEW.nombre = UPPER(NEW.nombre);
END //
DELIMITER ;

INSERT INTO cursos VALUES
('C014', 'CURSO ESCOLAR 2018-2019', '2018-2019', '2018-07-31 00:00:00', '2019-07-30 00:00:00');

--
INSERT INTO cursos VALUES
('C015', 'CURSO ESCOLAR 2021-2022', '2021-2022', '2019-07-31 00:00:00', '2019-07-30 00:00:00'),
('C016', 'CURSO ESCOLAR 2021-2022', '2021-2022', '2021-07-31 00:00:00', '2019-07-30 00:00:00');

SELECT * FROM cursos;


-- segundo trigger
DELIMITER //
DROP TRIGGER IF EXISTS bi_cursos //
CREATE TRIGGER bi_cursos
BEFORE INSERT ON cursos
FOR EACH ROW 
BEGIN
	IF(LEFT(NEW.nombre,5) <> 'CURSO') THEN 
		SET NEW.nombre = CONCAT('curso ', NEW.nombre);
	END IF;
    SET NEW.nombre = UPPER(NEW.nombre);
    
    IF(NEW.ffin <= NEW.finicio) THEN
		SIGNAL SQLSTATE'45000'
        SET MESSAGE_TEXT = 'Fecha final fuera de rango, te amo Diego' ;
    END IF;
END //
DELIMITER ;

INSERT INTO cursos VALUES
('C017', 'CURSO ESCOLAR 2021-2022', '2021-2022', '2019-07-31 00:00:00', '2019-07-30 00:00:00'),
('C018', 'CURSO ESCOLAR 2021-2022', '2021-2022', '2019-07-31 00:00:00', '2019-07-30 00:00:00');

SELECT * FROM cursos;

DROP TABLE IF EXISTS bitacora;

CREATE TABLE bitacora(
	id int not null auto_increment primary key,
    fecha datetime not null,
    usuario varchar(50) not null, 
    tabla varchar(50) not null, 
    accion text null 
);

SELECT * FROM bitacora;

-- triger 3
DELIMITER //
DROP TRIGGER IF EXISTS ad_cursos //
CREATE TRIGGER ad_cursos
AFTER DELETE ON cursos
FOR EACH ROW 
BEGIN
	-- CSV
    -- INSERT INTO bitacora  VALUES (null, sysdate(), user(), 'CURSOS',
   --  concat_ws('|', 'ELIMINACION DE CURSO', OLD.id_curso, OLD.nombre, OLD.abreviatura, OLD.finicio, OLD.ffin));
    -- JSON
    INSERT INTO bitacora  VALUES (null, sysdate(), user(), 'CURSOS',
    JSON_OBJECT('accion', 'ELIMINACION', 'id_curso', OLD.id_curso,
    'nombre', OLD.nombre, 'abreviatura', OLD.abreviatura,
    'finicio', OLD.finicio, 'ffin', OLD.ffin));
END //
DELIMITER ;

SELECT * FROM bitacora;

SELECT * FROM cursos;

DELETE FROM cursos
WHERE id_curso = 'C018';

--
DELETE FROM cursos
WHERE id_curso >= 'C016';

DELETE FROM cursos
WHERE id_curso >= 'C014';

SELECT id, fecha, JSON_EXTRACT(accion, '$.accion') acc,
JSON_EXTRACT(accion, '$.abreviatura') abreviatura
FROM bitacora
WHERE id >= 2;

--
SELECT id, fecha, JSON_EXTRACT(accion, '$.accion') acc,
JSON_UNQUOTE(JSON_EXTRACT(accion, '$.abreviatura')) abreviatura,
JSON_UNQUOTE(accion -> '$.finicio') finicio
FROM bitacora
WHERE id >= 2;


-- JSON
DELIMITER //
DROP TRIGGER IF EXISTS bu_cursos //
CREATE TRIGGER bu_cursos 
BEFORE UPDATE ON cursos 
FOR EACH ROW 
BEGIN
	DECLARE caso varchar(10) DEFAULT 'caso 0';
	SET NEW.nombre = upper(NEW.nombre);
	IF(NEW.ffin = OLD.finicio) THEN
		SET NEW.ffin = DATE_ADD(OLD.finicio, INTERVAL 1 DAY);
        SET caso = 'caso 1';
	END IF;
    IF(NEW.ffin <= NEW.finicio) THEN
		IF(NEW.nombre LIKE '%curso%') THEN
			SET NEW.ffin = DATE_ADD(NEW.finicio, INTERVAL 1 YEAR);
        END IF;
        IF(NEW.nombre LIKE '%semestre%') THEN
			SET NEW.ffin = DATE_ADD(NEW.finicio, INTERVAL 6 MONTH);
        END IF;
        SET caso = 'caso 2';
	END IF;
    IF(NEW.ffin <= OLD.finicio) THEN
		SET NEW.ffin = DATE_ADD(NEW.finicio, INTERVAL 1 YEAR);
        SET caso = 'caso 3';
	END IF;

    INSERT INTO bitacora VALUES (NULL, sysdate(),user(),'CURSOS',
    JSON_OBJECT('accion','ACTUALIZACION',
				'old_id_curso',OLD.id_curso,
				'old_name',OLD.nombre,
                'old_abreviatura',OLD.abreviatura,
                'old_finicio',OLD.finicio,
                'old_ffin',OLD.ffin,
                'new_id_curso',NEW.id_curso,
				'new_name',NEW.nombre,
                'new_abreviatura',NEW.abreviatura,
                'new_finicio',NEW.finicio,
                'new_ffin',NEW.ffin,
                'caso',caso));
END //
DELIMITER ;

SELECT * FROM bitacora;
SELECT * FROM cursos;

UPDATE cursos set nombre = 'semestre 2024-2', abreviatura = '2024-2',
finicio = '2024-02-01', ffin = '2023-02-01' WHERE id_curso = 'C016';

SELECT * FROM tmp_cursos;

CREATE TEMPORARY TABLE tmpCursos as 
SELECT * FROM cursos;
	
delete from cursos;

INSERT INTO cursos
SELECT * FROM tmp_cursos;


update cursos set nombre = 'curso ESCOLAR 2019-2020',
finicio = '2019-07-31 00:00:00', ffin = '2019-07-31 00:00:00'
WHERE id_curso = 'C014';

update cursos set nombre = 'curso ESCOLAR 2024-02',
finicio = '2024-01-02', ffin = '2024-01-02'
WHERE id_curso = 'C015';

SELECT * FROM bitacora;

select * from pagos;

DELIMITER $$
DROP TRIGGER IF EXISTS bu_pagos $$
CREATE TRIGGER bu_pagos
BEFORE UPDATE ON pagos
FOR EACH ROW
BEGIN
	IF(NEW.pago <OLD.pago)THEN
		SET new.pago = OLD.pago;
	END IF;
	IF(NEW.pago < 0)THEN
		SET NEW.pago=0;
	ELSEIF( NEW.pago > 50000)THEN
		SET NEW.pago = 50000;
	END IF;
    IF (NEW.fecha_op = OLD.fecha_op) THEN
		SET NEW.fecha_op = SYSDATE();
	END IF;
    INSERT INTO bitacora VALUES (NULL, sysdate(),user(),'PAGOS',
    JSON_OBJECT('accion','ACTUALIZACION',
				'clave_alu',NEW.clave_alu,
				'old_pago',OLD.pago,
                'new_pago',NEW.pago));
END $$
DELIMITER ;

select * from bitacora;
select * from pagos;

select * from pagos where id = 29215;
update pagos set pago = 100 where id = 29215;
update pagos set pago = -10 where id = 29215;
update pagos set pago = 100000 where id = 29215;
