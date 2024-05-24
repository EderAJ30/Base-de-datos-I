use proyecto;

-- 1) Número de propuestas por eje temático 

SELECT ejes_tematicos.nombre, COUNT(propuestas.id_propuesta) AS total_propuestas
FROM propuestas
JOIN ejes_tematicos ON propuestas.id_eje = ejes_tematicos.id_eje
GROUP BY ejes_tematicos.nombre;

-- 2) Cargos por cada entidad 

SELECT demarcaciones.nombre AS entidad, cargos.tipo_cargo, COUNT(cargos.id_cargo) AS total_cargos
FROM cargos
JOIN demarcaciones ON cargos.id_demarcacion = demarcaciones.id_demarcacion
GROUP BY demarcaciones.nombre, cargos.tipo_cargo;


-- 3) Vista de candidatos y sus partidos 
DROP VIEW IF EXISTS CandidatosYPartidos;
CREATE VIEW CandidatosYPartidos AS
SELECT candidatos.nombre, candidatos.ap_paterno, partidos.nombre AS partido
FROM candidatos
JOIN partidos ON candidatos.id_partido = partidos.id_partido;

SELECT * FROM CandidatosYPartidos;

-- 4) Candidatos con más de 2 propuestas en un mismo eje temático 

SELECT candidatos.nombre, candidatos.ap_paterno, ejes_tematicos.nombre AS eje_tematico, 
COUNT(propuestas.id_propuesta) AS total_propuestas
FROM candidatos
JOIN propuestas ON candidatos.id_candidato = propuestas.id_candidato
JOIN ejes_tematicos ON propuestas.id_eje = ejes_tematicos.id_eje
GROUP BY candidatos.nombre, candidatos.ap_paterno, ejes_tematicos.nombre
HAVING COUNT(propuestas.id_propuesta) > 2;

-- 5) Moderadores cuyo apellido paterno no termina en 'ez' 

SELECT id_moderador, ap_paterno, medio
FROM moderadores
WHERE ap_paterno NOT RLIKE 'ez$';

-- 5) Listar todos los nombres de candidatos y moderadores 

SELECT nombre, ap_paterno FROM candidatos
UNION
SELECT nombre, ap_paterno FROM moderadores;

-- 6) Propuestas y los nombres de los candidatos que las hicieron 

SELECT propuestas.descripcion, candidatos.nombre, candidatos.ap_paterno
FROM propuestas, candidatos
WHERE propuestas.id_candidato = candidatos.id_candidato;

-- 7) Listar todos los candidatos y sus partidos

SELECT candidatos.nombre, candidatos.ap_paterno, partidos.nombre AS partido
FROM candidatos
LEFT JOIN partidos ON candidatos.id_partido = partidos.id_partido;

-- 8) Número de propuestas por cada candidato en cada eje temático

SELECT 
    candidatos.nombre, 
    candidatos.ap_paterno, 
    ejes_tematicos.nombre AS eje_tematico, 
    COUNT(propuestas.id_propuesta) AS total_propuestas
FROM candidatos
JOIN propuestas ON candidatos.id_candidato = propuestas.id_candidato
JOIN ejes_tematicos ON propuestas.id_eje = ejes_tematicos.id_eje
GROUP BY candidatos.nombre, candidatos.ap_paterno, ejes_tematicos.nombre;

-- 9) Vista de debates que no han ocurrido 

DROP VIEW IF EXISTS  DebatesPasados;
CREATE VIEW DebatesPasados AS
SELECT *
FROM debates
WHERE fecha > NOW();

SELECT * FROM DebatesPasados;

-- 10) Partidos y sus coaliciones 

SELECT partidos.nombre AS partido, coaliciones.nombre_coalicion
FROM partidos
LEFT JOIN coaliciones ON partidos.id_coalicion = coaliciones.id_coalicion;


-- 11) Transmisiones y sus debates 

SELECT transmisiones.nombre, transmisiones.nombre_plataforma, debates.fecha
FROM transmisiones
JOIN debates ON transmisiones.id_debate = debates.id_debate;


-- 12) Moderadores por debate 

SELECT d.id_debate,d.fecha, CONCAT_WS(' ',m.nombre, m.ap_paterno) AS Moderadores, m.medio 
FROM debates d
JOIN moderadores m ON d.id_debate = m.id_debate;

-- 13) Numero de debates por candidato

SELECT CONCAT_WS(' ',c.nombre,c.ap_paterno) AS Candidato, COUNT(DISTINCT d.id_debate) AS Debates
FROM candidatos c
JOIN candidatos_debate cd ON c.id_candidato = cd.id_candidato
JOIN debates d ON cd.id_debate = d.id_debate
GROUP BY c.nombre, c.ap_paterno;



-- 14) Numero de debates por plataforma

SELECT t.nombre_plataforma AS Medio, COUNT(*) AS Debates
FROM transmisiones t
JOIN debates d ON t.id_debate = d.id_debate
GROUP BY t.nombre_plataforma;



-- 15) debates en ciudades 

SELECT id_debate, fecha, ciudad
FROM debates
WHERE ciudad LIKE '%Ciudad%';

-- 16) moderadores de debates del mes 10 de un medio específico 

SELECT CONCAT_WS(' ', m.nombre, m.ap_paterno) AS Moderador, d.fecha
FROM moderadores m
JOIN debates d ON m.id_debate = d.id_debate
WHERE m.medio NOT RLIKE 'El%'
AND MONTH(d.fecha) = 10;


-- 17) debates con candidatos y sus propuestas 
SELECT d.id_debate,d.fecha, CONCAT_WS(' ',c.nombre, c.ap_paterno) AS Candidato, et.nombre AS Propuesta
FROM debates d
JOIN candidatos_debate cd ON d.id_debate = cd.id_debate
JOIN candidatos c ON cd.id_candidato = c.id_candidato
JOIN propuestas p ON d.id_debate = p.id_debate
JOIN ejes_tematicos et ON p.id_eje = et.id_eje
ORDER BY 3;

-- 18) 10 Propuestas más largas

SELECT p.id_propuesta, p.descripcion, LENGTH(p.descripcion) AS Longitud
FROM propuestas p
ORDER BY Longitud DESC
LIMIT 10;

-- 19) Debates con más transmisiones
SELECT d.fecha, COUNT(*) AS Transmisiones
FROM debates d
JOIN transmisiones t ON d.id_debate = t.id_debate
GROUP BY d.fecha
ORDER BY Transmisiones DESC
LIMIT 5;

-- 20) Ejes tematicos más mencionados en los debates
SELECT e.nombre AS Eje_Tematico, COUNT(*) AS Menciones
FROM ejes_tematicos e
JOIN propuestas p ON e.id_eje = p.id_eje
GROUP BY e.nombre
ORDER BY Menciones DESC
LIMIT 7;

SELECT * FROM bitacora;