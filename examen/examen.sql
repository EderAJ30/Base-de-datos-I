use colegio2407;

-- Listar los niveles que no tenga ningun salon registrado
SELECT * FROM niveles;

SELECT n.id_nivel, n.nombre
FROM niveles n
LEFT JOIN salones s ON n.id_nivel = s.id_nivel
WHERE s.id_nivel IS NULL;

SELECT * FROM profesores;
SELECT * FROM profesor_grupo;
SELECT * FROM grados;
SELECT * FROM CURSOS;
SELECT * FROM SALONES;
select * from alumnos;

-- Listar el nombre completo del alumno y el salon en que se encuentran actualmente, ordenar por el nombre mas largo primero

SELECT 
    CONCAT(a.nombre, ' ', a.ap_paterno, ' ', a.ap_materno) AS nombre_completo,
    s.id_salon
FROM 
    alumnos a
JOIN 
    alumno_salon als ON a.clave_alu = als.clave_alu
JOIN 
    salones s ON als.id_salon = s.id_salon
WHERE 
    als.activo = 1
ORDER BY 
    LENGTH(CONCAT(a.nombre, ' ', a.ap_paterno, ' ', a.ap_materno)) DESC;


-- crear
CREATE DATABASE IF NOT EXISTS temporal11;
USE temporal11;
CREATE TABLE IF NOT EXISTS temporal11.grados LIKE originalDB.grados;


CREATE TABLE temporal11 AS SELECT * FROM grado;

-- Listar todos los alumnos que no hayan realizado ningun pago en el mes de febrero, sin importar el año
SELECT * FROM pagos;

SELECT *
FROM pagos
WHERE clave_alu NOT IN (
    SELECT DISTINCT clave_alu
    FROM pagos
    WHERE MONTH(fecha_pago) = 3
);

-- Listar todos los profesores que den clases en los salones de bachillerato
SELECT 
    p.clave_prof,
    CONCAT(p.nombres, ' ', p.apellido_p, ' ', p.apellido_m) AS nombre_completo,
    s.id_salon
FROM 
    profesores p
JOIN 
    profesor_grupo pg ON p.clave_prof = pg.clave_prof
JOIN 
    salones s ON pg.id_salon = s.id_salon
JOIN 
    niveles n ON s.id_nivel = n.id_nivel
WHERE 
    n.nombre = 'Bachillerato';
    
-- 




-- Crear una vista que liste el promedio por curso de cada alumno, mostrando el nombre 
-- completo del alumno, la clave de curso, el nombre de curso y el promedio
CREATE VIEW vista_promedio_curso AS
SELECT
    CONCAT(a.nombre, ' ', a.ap_paterno, ' ', a.ap_materno) AS nombre_completo,
    e.id_curso,
    c.nombre AS nombre_curso,
    AVG(e.calificacion) AS promedio
FROM
    alumnos a
JOIN
    evaluaciones e ON a.clave_alu = e.clave_alu
JOIN
    cursos c ON e.id_curso = c.id_curso
GROUP BY
    a.clave_alu, e.id_curso, c.nombre;

select * from vista_promedio_curso;

-- 6 Basado en el curp listar los años cumplidos de un alumno al dia de hoy y escribir en un campo los valores JOVEN para alumnos con menos de 18 años y ADULTO para alumnos mayores de 18 años
-- 5 y 6 son los registros de la edad
SELECT
    CONCAT(nombre, ' ', ap_paterno, ' ', ap_materno) AS nombre_completo,
    CURP,
    TIMESTAMPDIFF(YEAR, STR_TO_DATE(SUBSTRING(CURP, 5, 6), '%y%m%d'), CURDATE()) AS edad,
    CASE
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(SUBSTRING(CURP, 5, 6), '%y%m%d'), CURDATE()) < 18 THEN 'JOVEN'
        ELSE 'ADULTO'
    END AS categoria
FROM
    alumnos;

-- 5 Listar la clave_alu, la fecha del ultimo pago del alumno usando el formato "DIA del MES de AÑO", el concepto Cobro Anual 
-- [Año fecha ultimo pago] y el importe que sera la suma de todos los pagos echos por un alumno durante cada año    
SELECT
    clave_alu,
    DATE_FORMAT(MAX(fecha_pago), '%d del %M de %Y') AS fecha_ultimo_pago,
    CONCAT('Cobro Anual [', YEAR(MAX(fecha_pago)), ']') AS concepto_cobro_anual,
    SUM(pago) AS importe
FROM
    pagos
GROUP BY
    clave_alu, YEAR(fecha_pago);

-- 10) La tabla alumno_salon tiene una llave primaria compuesta por los campos id_salon, id_curso , clave_alu, elimanar la PK y
-- crear un nuevo campo llamado id NN AI y asignarlo como PK


--8 
SELECT 

    CONCAT(a.nombre, ' ', a.ap_paterno, ' ', a.ap_materno) AS nombre_completo,

    a.clave_alu,

    e.id_curso,

    c.nombre AS nombre_curso,

    m.nombre AS nombre_materia,

    MAX(e.calificacion) AS calificacion_maxima

FROM 

    alumnos a

JOIN 

    evaluaciones e ON a.clave_alu = e.clave_alu

JOIN 

    cursos c ON e.id_curso = c.id_curso

JOIN 

    materias m ON e.clave_mat = m.clave_mat

GROUP BY 

    a.clave_alu, e.id_curso, c.nombre, m.nombre, a.nombre, a.ap_paterno, a.ap_materno

ORDER BY 

    a.clave_alu, e.id_curso;
