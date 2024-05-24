/*
Guia para el examen de practico de bases de datos
DDL(DATA DEFINITION LANGUAGE)
-CREATE = crea
-ALTER = modifica/actualiza
-DROP = elimina
-SHOW = muestra
podemos usar estos mismos con 
- user
- database
- table
- index
- view
- trigger
- function

DML(DATA MANIPULATION LANGUAGE)
- INSERT = Añade filas a una tabla
- UPDATE = actualiza/ sustituye valores de un campo en una tabla
- DELETE = elimina filas de una tabla
- TRUNCATE = vacia una tabla
- SELECT = usado para realizar consultas de datos especificos
*/
/*
ORDEN PARA LAS CONSULTA CON SELECT
SELECT
		-DISTINCT: Muestra la lista de valores unicos de los campos
		-FROM: De donde se va a realizar la consulta 
		-WHERE: Filtra de la informacion de la consulta //restriccion
        -GROUP BY: Agrupa y permite funciones de agregacion	(se puede tener un group by sin tener un having)
        -HAVING: Filtra basado en las funciones de agregacion 
        (no se puede tener un having sin un group by) realiza condiciones con numeros
        -ORDER BY: Ordena los registros 
        -LIMIT: Limita el numero de registros que voy a mostrar
        
        --Funciones de agregación
        realiza operaciones sobre los grupos que tenemos
        count(*): cuenta el numero total de registros
        count(campo): muestra todas las filas donde ese campo no es nulo
        sum: suma el total de valores del campo elegido
        max: muestra el valor maximo de todas las filas
        min: muestra el minimo de todas las filas
        avg: saca el promedio de los valores del total de las filas
        
*/
/*
	-- Operadores Lógicos
    and: verifica que se cumplan varias condiciones
    or: verifica que cumpla una condicion u otra
    not: niega la condicion
    
    is null sirve para convertir o localizar si algo es nulo
    ifnull(condicion, que ocurre si es nulo)
    between necesita un intervalo acompañado de and, puede ser numeros o cadena
    peso between >50 and <60
    
    in() verifica si un valor esta incluido en un conjunto de valores 
    
    like se usa para buscar cadenas de coincidiencias, con el comodin '%'
    donde cada '_' representa un caracter
    <palabra>% --> cadena que inicia con palabra
    %<palabra> --> cadena que termina con palabra
    %<palabra>% --> cadena que contenga palabra
    
    ejercicios con like archivo sesion12-04BD
    
	rlike puede buscar patrones con expresiones regulares
    -- ^ parametro para decir, voy a empezar con esta letra/patron
    -- $ parametro para decir, que termine con esta letrea/patron 
    -- | parametro para decir, este O este
    -- ()-> rango y {}-> numero de veces
    
    -- Podemos evaluar expresiones regulares con rlike o regexp
    
    concatenacion
    concat(campo,<separador>,campo,'', campo)
    concatws(<separador>, campo1, campo2, campo3)
    
    
    concat, substr, mid, left, rigth, lentgh, locate en archivo sesion19-04BD
    
    repeat(campo, numero de veces que se a repetir)
    
    date_format(fecha, 'comodin') archivo sesion22-04BD
    Lista de comodines
    -- %h --> hora 24hrs %p --> indica si la hora es am o pm
    -- %r --> hora 12hrs
    -- %Y --> año 202x
    -- %m --> mes 1-12
    -- %w --> semana
    -- %d --> dia 1-31
    
    year(fecha) retorna el año de la fecha
    month(fecha) retorna el mes de la fecha
    week(fecha) retorna la semana de la fecha
    day(fecha) retorna el dia de la fecha
     
     
     sesion24-04BD
date_add suma/agrega x cantidad de tiempo a una fecha puede ser segundos, minutos, horas, dias, semanas, meses, años
date_add(fecha, interval 'cantidad'<tiempo smhdma>) cantidad puede ser negativo y se restar
date_sub resta-quita x cantidad de tiempo a una fecha
date_sub(fecha, interval 'cantidad' <tiemposmhdma>) cantidad numeros positivos restan tiempo, numeros negativos suman

-- timestampdiff() es más preciso en regresar la diferencia de tiempo
timestampdiff(metrica de tiempo, "fecha antigua", "fecha reciente")

Extract usado para extraer cierta "fecha"
extract('metrica de tiempo' from fecha)
lastday --> ultimo dia

datediff(fecha reciente, fecha antigua) por si solo retorna la dif en dias
si se multiplica por 24 retorna la dif en horas, si se divide en 7 la sif en semanas etc



*/
use colegio2410;
select * from alumno_salon;
show variables like '%safe%'; 
 set sql_safe_updates = 0;

-- Mostrar los salones de alumno_salon en los que hay alumnos inscritos
select distinct id_salon from alumno_salon;

-- Obtener todos los registros de la tabla alimno_salon ordenador por id_curso
select * from alumno_salon order by id_curso;

-- Listar los id_curso diferentes que existen en la tabla alumno_salon;
select distinct id_curso from alumno_salon; 

-- Contar cuantos alumnos hay en cada curso
select id_curso, count(*) from alumno_salon group by id_curso;

select id_curso, count(*) as cantidad_alumnos 
from alumno_salon
group by id_curso;

-- Mostrar los id_salon y clave_alu que pertenecen al grupo c002
select id_salon, clave_alu from alumno_salon where id_curso = 'C002'; 

select a.id_salon, a.clave_alu 
from alumno_salon a
join salones s on a.id_salon = s.id_salon
where s.id_curso = 'C002';

-- Obtener la cantidad total de alumnos por salon que estan en salones con id_salon menor o igual a 3
select count(*) as talumnos, id_salon from alumno_salon where id_salon <= 3 group by id_salon;

-- Obtener el id_salon con el mayor numero de alumnos
select max(id_salon) from alumno_salon;


select sysdate(),
date_add(now(), interval 375 MINUTE) mas6horas15min;


create temporary table niveles_tmp as
select * from niveles;

insert into niveles_tmp
select * from niveles;


-- select distinct id_grado, nombre from grados where id_salon is null;
select g.nombre
from grados g 
left join salones s on g.id_grado = s.id_grado
where s.id_grado is null;

select * from grados g, salones s;

select p.clave_prof, concat_ws(' ', apellido_p, apellido_m, nombres)
from profesores p 
left join profesor_grupo g on p.clave_prof = g.clave_prof
where g.clave_prof is null;



select a.clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) Alumno 
from alumnos a
union
select id_curso, id_salon, clave_mat, min(calificacion) from evaluaciones ;

select concat_ws(' ', apellido_p, apellido_m, nombres) Profesor 
from profesores p
union
select clave_mat from materias where ;

select nombre from grados g 
union
select id_grado from salones where id_grado is null;

select * from grados;

select g.nombre 
from grados g
left join salones s on g.id_grado = s.id_grado
where s.id_grado is null;

select count(*) nHombres from alumnos a 
union 
select count(*) nMujeres from alumnos a;



select clave_prof from profesor_grupo where not clave_mat != null;
select * from profesor_grupo;



select clave_prof from profesores;
select fedita, 
date_sub(fedita, interval 21798 second) Feditamenos6horas3minutos18segundos
from alumnos;

select sysdate(),
date_add(now(), interval 375 MINUTE) mas6horas15min;


select count(*) nHombres from alumnos where sexo = 'M';
select count(*) nMujeres from alumnos where sexo = 'F';


create temporary table niveles_tmp as

select * from niveles;



insert into niveles_tmp 
select * from niveles;

/*
Preguntas exmanen
-Listar a los maestros que no tengan ninguna materia registrada
-Usando la funcion DATE_FORMAT listar las 10 primeras semanas del año con mayor numero de registros cambiados basado en el contenido del campo fedita de la tabla alumnos
-Listar la hora actual del sistema y la fecha del sistema mas seis horas y 15 minutos
-Con dos instrucciones crear una tabla llamada niveles_tmp que la estructura sea igual a la de la tabla niveles y llenarla con todos los datos de niveles sumando 1000 al id de nivel
-Listar una sola vez el valor campo fedita y el mismo campo meno seis horas tres minutos y 18 segundos
-Listar la calificacion mas baja por curso de cada alumno, mostrando el nombre completo del alumno, la clave, el curso, el salon y la materia a la que pertenece la calificacion
- Listar los grado que no tengan ningun salon registrado
-Listar el total de hombres y mujeres por salon y curso
- Crea una vista llamada alumno_cobros que muestre de todos los alumnos de la tabla alumnos y contenga los campos matricula, la fecha maxima de pago por mes, el concepto Cobro Mensual [Mes de la fecha maxima de cobro por mes] y el importe que sera la suma de todos los pagos realizados por un alumno durante cada mes del año 2017
- Crear una tabla pivote que liste el total de pagos por dia de la semana, en español, de los pagos del año 2018
*/