-- MySQL dump 10.13  Distrib 8.2.0, for macos13 (arm64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.2.0

DROP DATABASE IF EXISTS proyecto;
CREATE DATABASE proyecto;
USE proyecto;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `id_transaccion` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `tabla` varchar(30) NOT NULL,
  `decripcion` text,
  PRIMARY KEY (`id_transaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Rodrigo Domínguez Cruz\", \"id_cargo\": 8001, \"id_partido\": 2001, \"id_candidato\": 1001}'),(2,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Laura Martínez Ruiz\", \"id_cargo\": 8001, \"id_partido\": 2001, \"id_candidato\": 1002}'),(3,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Jorge González Nava\", \"id_cargo\": 8002, \"id_partido\": 2001, \"id_candidato\": 1003}'),(4,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Ana Méndez Ramírez\", \"id_cargo\": 8003, \"id_partido\": 2002, \"id_candidato\": 1004}'),(5,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Carlos Moreno López\", \"id_cargo\": 8004, \"id_partido\": 2002, \"id_candidato\": 1005}'),(6,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Patricia Martínez Rodríguez\", \"id_cargo\": 8005, \"id_partido\": 2003, \"id_candidato\": 1006}'),(7,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Raúl Acosta Muñoz\", \"id_cargo\": 8001, \"id_partido\": 2003, \"id_candidato\": 1007}'),(8,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"María Jiménez Salazar\", \"id_cargo\": 8002, \"id_partido\": 2004, \"id_candidato\": 1008}'),(9,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Luis Ortega Pérez\", \"id_cargo\": 8003, \"id_partido\": 2004, \"id_candidato\": 1009}'),(10,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Julia Hernández Ramos\", \"id_cargo\": 8004, \"id_partido\": 2005, \"id_candidato\": 1010}'),(11,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Gabriel Arce Castillo\", \"id_cargo\": 8005, \"id_partido\": 2005, \"id_candidato\": 1011}'),(12,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Flor Ocampo Ramírez\", \"id_cargo\": 8001, \"id_partido\": 2006, \"id_candidato\": 1012}'),(13,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Mario Ezeta Sánchez\", \"id_cargo\": 8002, \"id_partido\": 2006, \"id_candidato\": 1013}'),(14,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Quetzalli Guzmán Rivera\", \"id_cargo\": 8003, \"id_partido\": 2007, \"id_candidato\": 1014}'),(15,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Santiago Urrutia Aragón\", \"id_cargo\": 8004, \"id_partido\": 2007, \"id_candidato\": 1015}'),(16,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Valeria Ramos Gutiérrez\", \"id_cargo\": 8005, \"id_partido\": 2008, \"id_candidato\": 1016}'),(17,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Javier Torres Juárez\", \"id_cargo\": 8001, \"id_partido\": 2008, \"id_candidato\": 1017}'),(18,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Vanessa Gutiérrez Naranjo\", \"id_cargo\": 8002, \"id_partido\": 2009, \"id_candidato\": 1018}'),(19,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Miguel Flores Martínez\", \"id_cargo\": 8003, \"id_partido\": 2009, \"id_candidato\": 1019}'),(20,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Daniel Zavala Duarte\", \"id_cargo\": 8004, \"id_partido\": 2007, \"id_candidato\": 1020}'),(21,'2024-05-23 19:09:42','root@localhost','candidatos','{\"accion\": \"A-INSERTAR\", \"nombre\": \"Jazmín Mendoza López\", \"id_cargo\": 8005, \"id_partido\": 2005, \"id_candidato\": 1021}'),(22,'2024-05-23 19:09:42','root@localhost','ejes_tematicos','{\"accion\": \"A-INSERTAR\", \"id_eje\": 6001, \"nombre\": \"Educación\", \"descripcion\": \"Propuestas relacionadas con la mejora del sistema educativo, acceso a la educación, calidad educativa, etc.\"}'),(23,'2024-05-23 19:09:42','root@localhost','ejes_tematicos','{\"accion\": \"A-INSERTAR\", \"id_eje\": 6002, \"nombre\": \"Salud\", \"descripcion\": \"Propuestas relacionadas con la atención médica, acceso a servicios de salud, prevención de enfermedades, etc.\"}'),(24,'2024-05-23 19:09:42','root@localhost','ejes_tematicos','{\"accion\": \"A-INSERTAR\", \"id_eje\": 6003, \"nombre\": \"Economía\", \"descripcion\": \"Propuestas relacionadas con el desarrollo económico, creación de empleo, fomento a la inversión, etc.\"}'),(25,'2024-05-23 19:09:42','root@localhost','ejes_tematicos','{\"accion\": \"A-INSERTAR\", \"id_eje\": 6004, \"nombre\": \"Medio Ambiente\", \"descripcion\": \"Propuestas relacionadas con la protección del medio ambiente, conservación de recursos naturales, lucha contra el cambio climático, etc.\"}'),(26,'2024-05-23 19:09:42','root@localhost','ejes_tematicos','{\"accion\": \"A-INSERTAR\", \"id_eje\": 6005, \"nombre\": \"Seguridad\", \"descripcion\": \"Propuestas relacionadas con la prevención del delito, seguridad ciudadana, fortalecimiento de instituciones de seguridad, etc.\"}'),(27,'2024-05-23 19:09:42','root@localhost','ejes_tematicos','{\"accion\": \"A-INSERTAR\", \"id_eje\": 6006, \"nombre\": \"Derechos Humanos\", \"descripcion\": \"Propuestas relacionadas con la protección y promoción de los derechos humanos, igualdad de género, inclusión social, etc.\"}'),(28,'2024-05-23 19:09:42','root@localhost','ejes_tematicos','{\"accion\": \"A-INSERTAR\", \"id_eje\": 6007, \"nombre\": \"Tecnología\", \"descripcion\": \"Propuestas relacionadas con el desarrollo tecnológico, innovación, acceso a la tecnología, sociedad digital, etc.\"}'),(29,'2024-05-23 19:09:42','root@localhost','ejes_tematicos','{\"accion\": \"A-INSERTAR\", \"id_eje\": 6008, \"nombre\": \"Cultura\", \"descripcion\": \"Propuestas relacionadas con el fomento a la cultura, preservación del patrimonio cultural, acceso a la cultura, etc.\"}'),(30,'2024-05-23 19:09:42','root@localhost','ejes_tematicos','{\"accion\": \"A-INSERTAR\", \"id_eje\": 6009, \"nombre\": \"Infraestructura\", \"descripcion\": \"Propuestas relacionadas con la construcción y mantenimiento de infraestructuras, transporte, comunicaciones, etc.\"}'),(31,'2024-05-23 19:09:42','root@localhost','ejes_tematicos','{\"accion\": \"A-INSERTAR\", \"id_eje\": 6010, \"nombre\": \"Desarrollo Social\", \"descripcion\": \"Propuestas relacionadas con la reducción de la pobreza, inclusión social, programas de asistencia social, etc.\"}');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatos`
--

DROP TABLE IF EXISTS `candidatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatos` (
  `id_candidato` int NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap_paterno` varchar(30) NOT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `cp` varchar(6) DEFAULT NULL,
  `colonia` varchar(30) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `id_partido` int DEFAULT NULL,
  `id_cargo` int DEFAULT NULL,
  PRIMARY KEY (`id_candidato`),
  KEY `id_partido` (`id_partido`),
  KEY `id_cargo` (`id_cargo`),
  CONSTRAINT `candidatos_ibfk_1` FOREIGN KEY (`id_partido`) REFERENCES `partidos` (`id_partido`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `candidatos_ibfk_2` FOREIGN KEY (`id_cargo`) REFERENCES `cargos` (`id_cargo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatos`
--

LOCK TABLES `candidatos` WRITE;
/*!40000 ALTER TABLE `candidatos` DISABLE KEYS */;
INSERT INTO `candidatos` VALUES (1001,'DOCR850410HDF','DOCR850410HDFRMR07','Rodrigo','Domínguez','Cruz','1985-04-10','H','calle santa maria','54865','Colonia Falsa','Cuernavaca','Morelos','5559782749','rodrigo.dominguez@gmail.com',2001,8001),(1002,'LARM920515MDF','LARM920515MDFJTR08','Laura','Martínez','Ruiz','1992-05-15','M','calle falsa 123','12345','Colonia Centro','Ciudad de México','CDMX','5556781234','laura.martinez@gmail.com',2001,8001),(1003,'JGON810630HDF','JGON810630HDFBRM09','Jorge','González','Nava','1981-06-30','H','avenida siempre viva 742','54321','Colonia Norte','Guadalajara','Jalisco','3335467890','jorge.gonzalez@gmail.com',2001,8002),(1004,'AMER900112MDF','AMER900112MDFHPL10','Ana','Méndez','Ramírez','1990-01-12','M','calle de la rosa 456','98765','Colonia Sur','Monterrey','Nuevo León','8187654321','ana.mendez@gmail.com',2002,8003),(1005,'CMOR750823HDF','CMOR750823HDFKLB11','Carlos','Moreno','López','1975-08-23','H','avenida del sol 789','11223','Colonia Este','Puebla','Puebla','2224567890','carlos.moreno@gmail.com',2002,8004),(1006,'PMAR850910MDF','PMAR850910MDFPRL12','Patricia','Martínez','Rodríguez','1985-09-10','M','calle luna 321','33445','Colonia Oeste','León','Guanajuato','4776543210','patricia.martinez@gmail.com',2003,8005),(1007,'RAMC890523HDF','RAMC890523HDFGZT13','Raúl','Acosta','Muñoz','1989-05-23','H','avenida estrella 654','55667','Colonia Alta','Querétaro','Querétaro','4423456789','raul.acosta@gmail.com',2003,8001),(1008,'MJIM960830MDF','MJIM960830MDFPLR14','María','Jiménez','Salazar','1996-08-30','M','calle arcoiris 987','77889','Colonia Baja','Mérida','Yucatán','9998765432','maria.jimenez@gmail.com',2004,8002),(1009,'LOPR750315HDF','LOPR750315HDFBMR15','Luis','Ortega','Pérez','1975-03-15','H','avenida independencia 135','12389','Colonia Nueva','Toluca','Estado de México','7224567891','luis.ortega@gmail.com',2004,8003),(1010,'JHER850601MDF','JHER850601MDFTRL16','Julia','Hernández','Ramos','1985-06-01','M','calle libertad 246','45678','Colonia Antigua','Morelia','Michoacán','4436789012','julia.hernandez@gmail.com',2005,8004),(1011,'GARC740412HDF','GARC740412HDFPRM17','Gabriel','Arce','Castillo','1974-04-12','H','calle de las flores 357','56789','Colonia Jardines','San Luis Potosí','San Luis Potosí','4445678901','gabriel.arce@gmail.com',2005,8005),(1012,'FLOP940728MDF','FLOP940728MDFYTL18','Flor','Ocampo','Ramírez','1994-07-28','M','avenida reforma 468','67890','Colonia Industrial','Aguascalientes','Aguascalientes','4496789012','flor.ocampo@gmail.com',2006,8001),(1013,'MEZA870920HDF','MEZA870920HDFBRS19','Mario','Ezeta','Sánchez','1987-09-20','H','calle libertad 579','78901','Colonia Independencia','Chihuahua','Chihuahua','6147890123','mario.ezeta@gmail.com',2006,8002),(1014,'QUGR910314MDF','QUGR910314MDFTRL20','Quetzalli','Guzmán','Rivera','1991-03-14','M','avenida los álamos 680','89012','Colonia Centro','Saltillo','Coahuila','8448901234','quetzalli.guzman@gmail.com',2007,8003),(1015,'SUAR790822HDF','SUAR790822HDFMRR21','Santiago','Urrutia','Aragón','1979-08-22','H','calle del sol 791','90123','Colonia del Valle','Tijuana','Baja California','6649012345','santiago.urrutia@gmail.com',2007,8004),(1016,'VARG930101MDF','VARG930101MDFPRL22','Valeria','Ramos','Gutiérrez','1993-01-01','M','avenida insurgentes 802','10234','Colonia Roma','Zapopan','Jalisco','3330123456','valeria.ramos@gmail.com',2008,8005),(1017,'TORJ840724HDF','TORJ840724HDFPLR23','Javier','Torres','Juárez','1984-07-24','H','calle miguel hidalgo 913','21345','Colonia San Miguel','Culiacán','Sinaloa','6671234567','javier.torres@gmail.com',2008,8001),(1018,'GUTV920618MDF','GUTV920618MDFMRN24','Vanessa','Gutiérrez','Naranjo','1992-06-18','M','calle revolución 124','32456','Colonia Morelos','Tuxtla Gutiérrez','Chiapas','9612345678','vanessa.gutierrez@gmail.com',2009,8002),(1019,'FLOM980807HDF','FLOM980807HDFPLT25','Miguel','Flores','Martínez','1998-08-07','H','avenida las palmas 235','43567','Colonia Delicias','Villahermosa','Tabasco','9933456789','miguel.flores@gmail.com',2009,8003),(1020,'ZAVD760319HDF','ZAVD760319HDFPRM26','Daniel','Zavala','Duarte','1976-03-19','H','calle los pinos 346','54678','Colonia Americana','Hermosillo','Sonora','6624567890','daniel.zavala@gmail.com',2007,8004),(1021,'MENJ880402MDF','MENJ880402MDFTRL27','Jazmín','Mendoza','López','1988-04-02','M','avenida central 457','65789','Colonia Vista Hermosa','La Paz','Baja California Sur','6125678901','jazmin.mendoza@gmail.com',2005,8005);
/*!40000 ALTER TABLE `candidatos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `n_candidato` AFTER INSERT ON `candidatos` FOR EACH ROW BEGIN
INSERT INTO bitacora VALUES (NULL,SYSDATE(),USER(),'candidatos',
    JSON_OBJECT('accion','A-INSERTAR',
				'id_candidato',NEW.id_candidato,
                'nombre',CONCAT_WS(' ', NEW.nombre, NEW.ap_paterno, NEW.ap_materno),
				'id_partido',NEW.id_partido,
                'id_cargo',NEW.id_cargo));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `candidatos_debate`
--

DROP TABLE IF EXISTS `candidatos_debate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatos_debate` (
  `id_debate` int NOT NULL,
  `id_candidato` int DEFAULT NULL,
  KEY `id_debate` (`id_debate`),
  KEY `id_candidato` (`id_candidato`),
  CONSTRAINT `candidatos_debate_ibfk_1` FOREIGN KEY (`id_debate`) REFERENCES `debates` (`id_debate`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `candidatos_debate_ibfk_2` FOREIGN KEY (`id_candidato`) REFERENCES `candidatos` (`id_candidato`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatos_debate`
--

LOCK TABLES `candidatos_debate` WRITE;
/*!40000 ALTER TABLE `candidatos_debate` DISABLE KEYS */;
INSERT INTO `candidatos_debate` VALUES (3001,1001),(3001,1002),(3002,1001),(3002,1002),(3002,1003),(3003,1001),(3003,1002),(3003,1003),(3003,1004),(3004,1001),(3004,1002),(3004,1003),(3004,1004),(3004,1005),(3005,1005),(3005,1006),(3005,1007),(3005,1008),(3005,1009),(3006,1010),(3006,1011),(3006,1012),(3006,1013),(3006,1014),(3007,1015),(3007,1016),(3007,1017),(3007,1018),(3007,1019),(3008,1001),(3008,1003),(3008,1005),(3008,1007),(3009,1009),(3009,1011),(3009,1013),(3010,1017),(3010,1019),(3011,1002),(3011,1004),(3011,1006),(3012,1008),(3012,1010),(3012,1012),(3012,1014),(3013,1016),(3013,1018),(3013,1020),(3013,1021),(3013,1005),(3014,1003),(3014,1006),(3014,1009),(3014,1012),(3015,1015),(3015,1018),(3015,1021),(3016,1004),(3016,1008),(3016,1012),(3017,1016),(3017,1020),(3018,1005),(3018,1010),(3019,1015),(3019,1020),(3019,1021),(3020,1006),(3020,1012),(3020,1018),(3020,1019),(3020,1020);
/*!40000 ALTER TABLE `candidatos_debate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `candidatosypartidos`
--

DROP TABLE IF EXISTS `candidatosypartidos`;
/*!50001 DROP VIEW IF EXISTS `candidatosypartidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `candidatosypartidos` AS SELECT 
 1 AS `nombre`,
 1 AS `ap_paterno`,
 1 AS `partido`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id_cargo` int NOT NULL,
  `tipo_cargo` varchar(30) NOT NULL,
  `id_demarcacion` int NOT NULL,
  PRIMARY KEY (`id_cargo`),
  KEY `id_demarcacion` (`id_demarcacion`),
  CONSTRAINT `cargos_ibfk_1` FOREIGN KEY (`id_demarcacion`) REFERENCES `demarcaciones` (`id_demarcacion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (8001,'Gobernador',1),(8002,'Gobernador',3),(8003,'Gobernador',5),(8004,'Gobernador',8),(8005,'Gobernador',10),(8006,'Presidente',1101),(8007,'Presidente',1301),(8008,'Presidente',1801),(8009,'Presidente',2101),(8010,'Presidente',2501),(8011,'Alcalde',901),(8012,'Alcalde',905),(8013,'Alcalde',910),(8014,'Alcalde',912),(8015,'Alcalde',916),(8016,'Diputado',1201),(8017,'Diputado',1401),(8018,'Diputado',1901),(8019,'Diputado',2201),(8020,'Diputado',3201);
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `a_cargos` AFTER UPDATE ON `cargos` FOR EACH ROW BEGIN

DECLARE vtipo varchar(50) DEFAULT 'sin nombre';
DECLARE vdemarcacion varchar(5) DEFAULT 'sin nombre';

IF(OLD.tipo_cargo = NEW.tipo_cargo)THEN
	SET vtipo = OLD.tipo_cargo;
ELSE
	SET vtipo = CONCAT_WS('-->', OLD.tipo_cargo,NEW.tipo_cargo);
END IF;

IF(OLD.id_demarcacion = NEW.id_demarcacion)THEN
	SET vtipo = OLD.id_demarcacion;
ELSE
	SET vtipo = CONCAT_WS('-->', OLD.id_demarcacion,NEW.id_demarcacion);
END IF;

INSERT INTO bitacora VALUES (NULL,SYSDATE(),USER(),'cargos',
    JSON_OBJECT('accion','A-ACTUALIZAR',
				'id_cargo',OLD.id_cargo,
                'tipo_cargo',vtipo,
				'id_demarcacion',vdemarcacion));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `coaliciones`
--

DROP TABLE IF EXISTS `coaliciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaliciones` (
  `id_coalicion` int NOT NULL,
  `nombre_coalicion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_coalicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaliciones`
--

LOCK TABLES `coaliciones` WRITE;
/*!40000 ALTER TABLE `coaliciones` DISABLE KEYS */;
INSERT INTO `coaliciones` VALUES (1100,'Alianza por el Progreso'),(2200,'Frente Ciudadano por México'),(3300,'Juntos Haremos Historia');
/*!40000 ALTER TABLE `coaliciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debates`
--

DROP TABLE IF EXISTS `debates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debates` (
  `id_debate` int NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `cp` varchar(6) DEFAULT NULL,
  `colonia` varchar(30) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id_debate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debates`
--

LOCK TABLES `debates` WRITE;
/*!40000 ALTER TABLE `debates` DISABLE KEYS */;
INSERT INTO `debates` VALUES (3001,'Avenida México 123','45050','Colonia Chapultepec','Guadalajara','Jalisco','2024-10-15 00:00:00'),(3002,'Calle Juárez 456','6100','Colonia Reforma','Ciudad de México','Ciudad de México','2024-11-05 00:00:00'),(3003,'Paseo del Pardo 789','28010','Colonia Condesa','Monterrey','Nuevo León','2024-09-28 00:00:00'),(3004,'Calle Hidalgo 101','45030','Colonia Centro','Guadalajara','Jalisco','2024-10-20 00:00:00'),(3005,'Avenida Constitución 567','38020','Colonia Americana','Guadalajara','Jalisco','2024-11-12 00:00:00'),(3006,'Calle Morelos 345','22000','Colonia Centro','Tijuana','Baja California','2024-12-03 00:00:00'),(3007,'Boulevard Independencia 678','45600','Colonia Centro','Guadalajara','Jalisco','2024-10-08 00:00:00'),(3008,'Calle Madero 901','78320','Colonia Centro','Veracruz','Veracruz','2024-11-19 00:00:00'),(3009,'Avenida Revolución 234','22040','Colonia Zona Centro','Tijuana','Baja California','2024-12-10 00:00:00'),(3010,'Paseo de la Reforma 567','6600','Colonia Polanco','Ciudad de México','Ciudad de México','2024-11-26 00:00:00'),(3011,'Avenida Juárez 123','44100','Colonia Centro','Guadalajara','Jalisco','2024-10-29 00:00:00'),(3012,'Calle Zaragoza 678','44600','Colonia Centro','Guadalajara','Jalisco','2024-12-17 00:00:00'),(3013,'Avenida Hidalgo 345','32000','Colonia Centro','Ciudad Juárez','Chihuahua','2024-09-21 00:00:00'),(3014,'Boulevard López Mateos 901','22010','Colonia Zona Río','Tijuana','Baja California','2024-12-31 00:00:00'),(3015,'Calle Guerrero 234','64700','Colonia Centro','Monterrey','Nuevo León','2024-09-14 00:00:00'),(3016,'Avenida Morelos 567','20000','Colonia Centro','Acapulco','Guerrero','2024-10-03 00:00:00'),(3017,'Paseo de la Reforma 901','6700','Colonia Polanco','Ciudad de México','Ciudad de México','2024-11-02 00:00:00'),(3018,'Avenida Juárez 234','22050','Colonia Zona Río','Tijuana','Baja California','2024-09-07 00:00:00'),(3019,'Calle Madero 678','78430','Colonia Centro','Veracruz','Veracruz','2024-10-06 00:00:00'),(3020,'Boulevard Miguel de la Madrid 123','28867','Colonia Centro','Manzanillo','Colima','2024-11-09 00:00:00');
/*!40000 ALTER TABLE `debates` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `a_debates` BEFORE UPDATE ON `debates` FOR EACH ROW BEGIN
IF(NEW.fecha > OLD.fecha)THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'No se puede cambiar un debate que ya ha ocurrido';
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `debatespasados`
--

DROP TABLE IF EXISTS `debatespasados`;
/*!50001 DROP VIEW IF EXISTS `debatespasados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `debatespasados` AS SELECT 
 1 AS `id_debate`,
 1 AS `direccion`,
 1 AS `cp`,
 1 AS `colonia`,
 1 AS `ciudad`,
 1 AS `estado`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `demarcaciones`
--

DROP TABLE IF EXISTS `demarcaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demarcaciones` (
  `id_demarcacion` int NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `abreviatura` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_demarcacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demarcaciones`
--

LOCK TABLES `demarcaciones` WRITE;
/*!40000 ALTER TABLE `demarcaciones` DISABLE KEYS */;
INSERT INTO `demarcaciones` VALUES (1,'estado','AGUASCALIENTES','AGS'),(2,'estado','BAJA CALIFORNIA','BC'),(3,'estado','BAJA CALIFORNIA SUR','BCS'),(4,'estado','CAMPECHE','CAMP'),(5,'estado','COAHUILA','COAH'),(6,'estado','COLIMA','COL'),(7,'estado','CHIAPAS','CHIS'),(8,'estado','CHIHUAHUA','CHIH'),(9,'estado','CIUDAD DE MEXICO','CDMX'),(10,'estado','DURANGO','DGO'),(11,'estado','GUANAJUATO','GTO'),(12,'estado','GUERRERO','GRO'),(13,'estado','HIDALGO','HGO'),(14,'estado','JALISCO','JAL'),(15,'estado','MEXICO','MEX'),(16,'estado','MICHOACAN','MICH'),(17,'estado','MORELOS','MOR'),(18,'estado','NAYARIT','NAY'),(19,'estado','NUEVO LEON','NL'),(20,'estado','OAXACA','OAX'),(21,'estado','PUEBLA','PUE'),(22,'estado','QUERETARO','QRO'),(23,'estado','QUINTANA ROO','QROO'),(24,'estado','SAN LUIS POTOSI','SLP'),(25,'estado','SINALOA','SIN'),(26,'estado','SONORA','SON'),(27,'estado','TABASCO','TAB'),(28,'estado','TAMAULIPAS','TAMPS'),(29,'estado','TLAXCALA','TLAX'),(30,'estado','VERACRUZ','VER'),(31,'estado','YUCATAN','YUC'),(32,'estado','ZACATECAS','ZAC'),(101,'municipio','Aguascalientes','AGS'),(201,'municipio','Mexicali','BC'),(301,'municipio','La Paz','BCS'),(401,'municipio','Campeche','CAMP'),(501,'municipio','Saltillo','COAH'),(601,'municipio','Colima','COL'),(701,'municipio','Tuxtla Gutiérrez','CHIS'),(801,'municipio','Chihuahua','CHIH'),(901,'alcaldia','Álvaro Obregón','AO'),(902,'alcaldia','Azcapotzalco','AZ'),(903,'alcaldia','Benito Juárez','BJ'),(904,'alcaldia','Coyoacán','CO'),(905,'alcaldia','Cuajimalpa de Morelos','CU'),(906,'alcaldia','Cuauhtémoc','CUA'),(907,'alcaldia','Gustavo A. Madero','GAM'),(908,'alcaldia','Iztacalco','IZT'),(909,'alcaldia','Iztapalapa','IZP'),(910,'alcaldia','La Magdalena Contreras','LMC'),(911,'alcaldia','Miguel Hidalgo','MH'),(912,'alcaldia','Milpa Alta','MA'),(913,'alcaldia','Tláhuac','TLA'),(914,'alcaldia','Tlalpan','TL'),(915,'alcaldia','Venustiano Carranza','VC'),(916,'alcaldia','Xochimilco','XO'),(1001,'municipio','Durango','DGO'),(1101,'municipio','Guanajuato','GTO'),(1201,'municipio','Chilpancingo de los Bravo','GRO'),(1301,'municipio','Pachuca de Soto','HGO'),(1401,'municipio','Guadalajara','JAL'),(1501,'municipio','Toluca de Lerdo','MEX'),(1601,'municipio','Morelia','MICH'),(1701,'municipio','Cuernavaca','MOR'),(1801,'municipio','Tepic','NAY'),(1901,'municipio','Monterrey','NL'),(2001,'municipio','Oaxaca de Juárez','OAX'),(2101,'municipio','Puebla de Zaragoza','PUE'),(2201,'municipio','Santiago de Querétaro','QRO'),(2301,'municipio','Chetumal','QROO'),(2401,'municipio','San Luis Potosí','SLP'),(2501,'municipio','Culiacán Rosales','SIN'),(2601,'municipio','Hermosillo','SON'),(2701,'municipio','Villahermosa','TAB'),(2801,'municipio','Ciudad Victoria','TAMPS'),(2901,'municipio','Tlaxcala de Xicohténcatl','TLAX'),(3001,'municipio','Xalapa-Enríquez','VER'),(3101,'municipio','Mérida','YUC'),(3201,'municipio','Zacatecas','ZAC');
/*!40000 ALTER TABLE `demarcaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `e_demarcacion` AFTER DELETE ON `demarcaciones` FOR EACH ROW BEGIN
INSERT INTO bitacora VALUES (NULL,SYSDATE(),USER(),'demarcaciones',
    JSON_OBJECT('accion','A-ELIMINAR',
				'id_demarcacion',OLD.id_demarcacion,
                'tipo',OLD.tipo,
				'nombre',OLD.nombre,
                'abreviatura',OLD.abreviatura));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ejes_tematicos`
--

DROP TABLE IF EXISTS `ejes_tematicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejes_tematicos` (
  `id_eje` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_eje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejes_tematicos`
--

LOCK TABLES `ejes_tematicos` WRITE;
/*!40000 ALTER TABLE `ejes_tematicos` DISABLE KEYS */;
INSERT INTO `ejes_tematicos` VALUES (6001,'Educación','Propuestas relacionadas con la mejora del sistema educativo, acceso a la educación, calidad educativa, etc.'),(6002,'Salud','Propuestas relacionadas con la atención médica, acceso a servicios de salud, prevención de enfermedades, etc.'),(6003,'Economía','Propuestas relacionadas con el desarrollo económico, creación de empleo, fomento a la inversión, etc.'),(6004,'Medio Ambiente','Propuestas relacionadas con la protección del medio ambiente, conservación de recursos naturales, lucha contra el cambio climático, etc.'),(6005,'Seguridad','Propuestas relacionadas con la prevención del delito, seguridad ciudadana, fortalecimiento de instituciones de seguridad, etc.'),(6006,'Derechos Humanos','Propuestas relacionadas con la protección y promoción de los derechos humanos, igualdad de género, inclusión social, etc.'),(6007,'Tecnología','Propuestas relacionadas con el desarrollo tecnológico, innovación, acceso a la tecnología, sociedad digital, etc.'),(6008,'Cultura','Propuestas relacionadas con el fomento a la cultura, preservación del patrimonio cultural, acceso a la cultura, etc.'),(6009,'Infraestructura','Propuestas relacionadas con la construcción y mantenimiento de infraestructuras, transporte, comunicaciones, etc.'),(6010,'Desarrollo Social','Propuestas relacionadas con la reducción de la pobreza, inclusión social, programas de asistencia social, etc.');
/*!40000 ALTER TABLE `ejes_tematicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `n_ejes` BEFORE INSERT ON `ejes_tematicos` FOR EACH ROW BEGIN
IF(LENGTH(NEW.descripcion) < 10) THEN
	SET NEW.descripcion = 'SIN DESCRIPCION VALIDA';
END IF;
INSERT INTO bitacora VALUES (NULL,SYSDATE(),USER(),'ejes_tematicos',
    JSON_OBJECT('accion','A-INSERTAR',
				'id_eje',NEW.id_eje,
                'nombre',NEW.nombre,
				'descripcion',NEW.descripcion));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `moderadores`
--

DROP TABLE IF EXISTS `moderadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderadores` (
  `id_moderador` int NOT NULL,
  `curp` varchar(18) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap_paterno` varchar(30) NOT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `cp` varchar(6) DEFAULT NULL,
  `colonia` varchar(30) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `emai` varchar(50) DEFAULT NULL,
  `medio` varchar(50) NOT NULL,
  `id_debate` int DEFAULT NULL,
  PRIMARY KEY (`id_moderador`),
  KEY `id_debate` (`id_debate`),
  CONSTRAINT `moderadores_ibfk_1` FOREIGN KEY (`id_debate`) REFERENCES `debates` (`id_debate`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderadores`
--

LOCK TABLES `moderadores` WRITE;
/*!40000 ALTER TABLE `moderadores` DISABLE KEYS */;
INSERT INTO `moderadores` VALUES (4001,'MNOP123456QRSTUVW4','Laura','Rodríguez','González','1982-07-18','F','Calle Morelos 345','22000','Colonia Centro','Tijuana','Baja California','6641234567','laura.rodriguez@example.com','Excélsior',3001),(4002,'UVWX123456MNOPQR5','Carlos','Martínez','Díaz','1988-11-25','M','Boulevard Independencia 678','45600','Colonia Centro','Guadalajara','Jalisco','3331234567','carlos.martinez@example.com','El Universal',3002),(4003,'QRST123456UVWXMN6','Ana','Pérez','Sánchez','1995-02-12','F','Calle Madero 901','78320','Colonia Centro','Veracruz','Veracruz','2291234567','ana.perez@example.com','CNN México',3003),(4004,'YZAB123456TUVWXO7','Javier','Gómez','Fernández','1980-09-30','M','Avenida Revolución 234','22040','Colonia Zona Centro','Tijuana','Baja California','6642345678','javier.gomez@example.com','Forbes México',3004),(4005,'BCDE123456YZABP8','Sofía','Flores','López','1984-04-07','F','Paseo de la Reforma 567','06600','Colonia Polanco','Ciudad de México','Ciudad de México','5552345678','sofia.flores@example.com','TeleSur',3005),(4006,'TUVW123456QRSTUQ9','Luis','González','Hernández','1992-12-15','M','Avenida Juárez 123','44100','Colonia Centro','Guadalajara','Jalisco','3319876543','luis.gonzalez@example.com','Canal Once',3006),(4007,'XYZA123456BCDEFX0','Fernanda','Sánchez','Martínez','1987-06-20','F','Calle Zaragoza 678','44600','Colonia Centro','Guadalajara','Jalisco','3338765432','fernanda.sanchez@example.com','MVS Noticias',3007),(4008,'OPQR123456IJKLMY1','Diego','Pérez','García','1983-03-05','M','Avenida Hidalgo 345','32000','Colonia Centro','Ciudad Juárez','Chihuahua','6567654321','diego.perez@example.com','TV Azteca Noticias',3008),(4009,'KLMN123456OPQRI2','Mariana','Martínez','Gómez','1990-01-10','F','Boulevard López Mateos 901','22010','Colonia Zona Río','Tijuana','Baja California','6646543210','mariana.martinez@example.com','Excélsior TV',3009),(4010,'GHIJ123456LMNOPZ3','Roberto','Hernández','Flores','1986-08-28','M','Calle Guerrero 234','64700','Colonia Centro','Monterrey','Nuevo León','8189876543','roberto.hernandez@example.com','Azteca Noticias',3010),(4011,'DEFG123456HIJKLX4','Lorena','García','Díaz','1981-05-25','F','Avenida Morelos 567','20000','Colonia Centro','Acapulco','Guerrero','7447654321','lorena.garcia@example.com','Radio Fórmula',3011),(4012,'LMNO123456QRSTUM5','Daniel','López','Hernández','1989-10-12','M','Paseo de la Reforma 901','06700','Colonia Polanco','Ciudad de México','Ciudad de México','5587654321','daniel.lopez@example.com','El Financiero',3012),(4013,'HIJK123456VWXYZA6','Carmen','Sánchez','Gómez','1984-07-08','F','Avenida Juárez 234','22050','Colonia Zona Río','Tijuana','Baja California','6645432109','carmen.sanchez@example.com','El Sol de México',3013),(4014,'QRST123456OPQRIJ7','Gabriel','Martínez','Hernández','1993-04-15','M','Calle Madero 678','78430','Colonia Centro','Veracruz','Veracruz','2296543210','gabriel.martinez@example.com','Reforma',3014),(4015,'VWXYZ123456IJKLX8','Paula','Hernández','Sánchez','1987-11-22','F','Boulevard Miguel de la Madrid 123','28867','Colonia Centro','Manzanillo','Colima','3147654321','paula.hernandez@example.com','El País',3015),(4016,'NOPQ123456UVWXYM9','Alejandro','Gómez','López','1985-03-18','M','Calle Bravo 901','33000','Colonia Centro','Chihuahua','Chihuahua','6149876543','alejandro.gomez@example.com','La Jornada',3016),(4017,'UVWX123456MNOPQZ0','Fabiola','Pérez','Martínez','1980-09-09','F','Avenida Hidalgo 234','44150','Colonia Centro','Guadalajara','Jalisco','3332345678','fabiola.perez@example.com','BBC Mundo',3017);
/*!40000 ALTER TABLE `moderadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidos` (
  `id_partido` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `abreviatura` varchar(10) NOT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `id_coalicion` int DEFAULT NULL,
  PRIMARY KEY (`id_partido`),
  KEY `id_coalicion` (`id_coalicion`),
  CONSTRAINT `partidos_ibfk_1` FOREIGN KEY (`id_coalicion`) REFERENCES `coaliciones` (`id_coalicion`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (2001,'Partido Revolucionario Institucional','PRI','5551234567','infopri@gmail.com',1100),(2002,'Partido Acción Nacional','PAN','5552345678','infopan@gmail.com',1100),(2003,'Partido de la Revolución Democrática','PRD','5553456789','infoprd@gmail.com',1100),(2004,'Partido Verde Ecologista de México','PVEM','5554567890','infopvem@gmail.com',3300),(2005,'Partido del Trabajo','PT','5555678901','infopt@gmail.com',3300),(2006,'Movimiento Ciudadano','MC','5556789012','infomc@gmail.com',2200),(2007,'Morena','MORENA','5557890123','infomorena@gmail.com',NULL),(2008,'Partido Encuentro Solidario','PES','5558901234','infopes@gmail.com',NULL),(2009,'Redes Sociales Progresistas','RSP','5559012345','inforsp@gmail.com',NULL);
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `e_partidos` BEFORE DELETE ON `partidos` FOR EACH ROW BEGIN

IF(OLD.id_coalicion IS NOT NULL)THEN
SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'No se puede eliminar un empleado activo';
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `propuestas`
--

DROP TABLE IF EXISTS `propuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propuestas` (
  `id_propuesta` int NOT NULL,
  `descripcion` text NOT NULL,
  `id_candidato` int NOT NULL,
  `id_eje` int DEFAULT NULL,
  `id_debate` int NOT NULL,
  PRIMARY KEY (`id_propuesta`),
  KEY `id_candidato` (`id_candidato`),
  KEY `id_eje` (`id_eje`),
  KEY `id_debate` (`id_debate`),
  CONSTRAINT `propuestas_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidatos` (`id_candidato`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `propuestas_ibfk_2` FOREIGN KEY (`id_eje`) REFERENCES `ejes_tematicos` (`id_eje`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `propuestas_ibfk_3` FOREIGN KEY (`id_debate`) REFERENCES `debates` (`id_debate`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propuestas`
--

LOCK TABLES `propuestas` WRITE;
/*!40000 ALTER TABLE `propuestas` DISABLE KEYS */;
INSERT INTO `propuestas` VALUES (7001,'Implementar programas de formación docente continua para mejorar la calidad educativa.',1002,6001,3001),(7002,'Garantizar el acceso universal a la salud mediante la ampliación de la cobertura de servicios médicos.',1002,6002,3001),(7003,'Fomentar el emprendimiento y la creación de microempresas para impulsar la economía local.',1003,6003,3002),(7004,'Promover políticas de conservación ambiental y energías renovables para combatir el cambio climático.',1003,6004,3003),(7005,'Fortalecer las políticas de seguridad ciudadana y prevención del delito.',1004,6005,3004),(7006,'Proteger y promover los derechos humanos, especialmente de grupos vulnerables como mujeres, niños y migrantes.',1005,6006,3005),(7007,'Incentivar la investigación y desarrollo de tecnologías innovadoras para el desarrollo económico.',1006,6007,3006),(7008,'Promover la diversidad cultural y el acceso equitativo a expresiones culturales.',1007,6008,3007),(7009,'Invertir en infraestructuras clave como carreteras, puentes y telecomunicaciones para impulsar el desarrollo regional.',1008,6009,3009),(7010,'Implementar programas de desarrollo social integral para reducir la desigualdad y la pobreza.',1009,6010,3010),(7011,'Mejorar la formación profesional y técnica para adaptarse a las demandas del mercado laboral.',1010,6001,3011),(7012,'Ampliar la cobertura y calidad de los servicios de salud mental y bienestar emocional.',1011,6002,3012),(7013,'Fomentar la creación de cooperativas y asociaciones para fortalecer la economía comunitaria.',1012,6003,3013),(7014,'Regular el uso de recursos naturales y proteger áreas de alto valor ecológico.',1013,6004,3014),(7015,'Crear programas de rehabilitación y reinserción social para personas en situación de vulnerabilidad.',1014,6005,3015),(7016,'Promover la igualdad de género y combatir la violencia machista.',1015,6005,3016),(7017,'Impulsar la digitalización de la educación y acceso a la tecnología en zonas rurales.',1016,6006,3017),(7018,'Preservar y promover la diversidad cultural a través de festivales y eventos culturales.',1017,6007,3018),(7019,'Desarrollar sistemas de transporte público eficientes y sostenibles.',1018,6008,3019),(7020,'Mejorar la infraestructura de telecomunicaciones para garantizar acceso a internet en áreas remotas.',1019,6009,3020),(7021,'Promover la agricultura sostenible y el uso de técnicas agrícolas respetuosas con el medio ambiente.',1020,6010,3001),(7022,'Fortalecer la capacitación y equipamiento de cuerpos policiales para mejorar la seguridad ciudadana.',1021,6001,3002),(7023,'Implementar políticas de inclusión laboral para personas con discapacidad.',1002,6002,3003),(7024,'Ampliar el acceso a la educación superior y becas para estudiantes de bajos recursos.',1003,6003,3004),(7025,'Crear incentivos fiscales para empresas que adopten prácticas amigables con el medio ambiente.',1004,6004,3005),(7026,'Mejorar la accesibilidad de espacios públicos para personas con movilidad reducida.',1005,6005,3006),(7027,'Fomentar la participación ciudadana en la toma de decisiones y políticas públicas.',1005,6006,3007),(7028,'Impulsar la industria del turismo sostenible y cultural.',1006,6007,3008),(7029,'Desarrollar programas de vivienda digna para familias de bajos recursos.',1007,6008,3009),(7030,'Implementar medidas de prevención y atención integral de la violencia de género.',1008,6009,3010),(7031,'Promover la inclusión digital y alfabetización tecnológica en la población.',1009,6010,3011),(7032,'Construir y mantener infraestructuras deportivas y recreativas en comunidades.',1010,6001,3012),(7033,'Establecer políticas de protección y conservación de ecosistemas marinos y costeros.',1002,6002,3013),(7034,'Fortalecer programas de educación ambiental en escuelas y comunidades.',1011,6003,3014),(7035,'Mejorar la accesibilidad a servicios de salud reproductiva y planificación familiar.',1012,6004,3015),(7036,'Impulsar la adopción de energías limpias y renovables en hogares y empresas.',1013,6005,3016),(7037,'Desarrollar estrategias de adaptación y mitigación al cambio climático a nivel local.',1014,6006,3017),(7038,'Promover la inclusión financiera y acceso a créditos para emprendedores.',1015,6007,3018),(7039,'Implementar políticas de igualdad salarial y oportunidades laborales para mujeres.',1016,6008,3019),(7040,'Fomentar la conservación de especies en peligro de extinción y sus hábitats.',1017,6009,3020),(7041,'Desarrollar programas de formación y empleo para jóvenes en riesgo de exclusión social.',1018,6010,3001);
/*!40000 ALTER TABLE `propuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transmisiones`
--

DROP TABLE IF EXISTS `transmisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transmisiones` (
  `id_transmiciones` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nombre_plataforma` varchar(50) NOT NULL,
  `tipo_plataforma` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `id_debate` int NOT NULL,
  PRIMARY KEY (`id_transmiciones`),
  KEY `id_debate` (`id_debate`),
  CONSTRAINT `transmisiones_ibfk_1` FOREIGN KEY (`id_debate`) REFERENCES `debates` (`id_debate`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transmisiones`
--

LOCK TABLES `transmisiones` WRITE;
/*!40000 ALTER TABLE `transmisiones` DISABLE KEYS */;
INSERT INTO `transmisiones` VALUES (5001,'Transmisión en vivo 1','YouTube','Plataforma de video','https://www.youtube.com/transmision1',3001),(5002,'Evento en línea 2','Facebook Live','Red social','https://www.facebook.com/transmision2',3002),(5003,'Streaming Debate 3','Twitch','Plataforma de streaming','https://www.twitch.tv/transmision3',3003),(5004,'Debate en Directo 4','Periscope','Plataforma de video en directo','https://www.pscp.tv/transmision4',3004),(5005,'Conferencia Virtual 5','Zoom','Plataforma de videoconferencia','https://www.zoom.us/transmision5',3004),(5006,'Sesión en línea 6','Microsoft Teams','Plataforma de colaboración','https://www.teams.microsoft.com/transmision6',3005),(5007,'Webinar Debate 7','Google Meet','Plataforma de videoconferencia','https://meet.google.com/transmision7',3006),(5008,'Presentación Digital 8','Cisco Webex','Plataforma de videoconferencia','https://www.webex.com/transmision8',3007),(5009,'Foro en Vivo 9','Instagram Live','Red social','https://www.instagram.com/transmision9',3008),(5010,'Debate Virtual 10','Discord','Plataforma de comunicación','https://www.discord.com/transmision10',3009),(5011,'Transmisión en línea 11','Vimeo','Plataforma de video','https://www.vimeo.com/transmision11',3010),(5012,'Videoconferencia 12','GoToMeeting','Plataforma de videoconferencia','https://www.gotomeeting.com/transmision12',3011),(5013,'Seminario en Vivo 13','Brightcove','Plataforma de video','https://www.brightcove.com/transmision13',3012),(5014,'Debate Digital 14','Skype','Plataforma de comunicación','https://www.skype.com/transmision14',3013),(5015,'Charla en Línea 15','BigBlueButton','Plataforma de videoconferencia','https://www.bigbluebutton.com/transmision15',3014),(5016,'Video en Directo 16','Livestream','Plataforma de video en directo','https://www.livestream.com/transmision16',3015),(5017,'Encuentro Virtual 17','Jitsi Meet','Plataforma de videoconferencia','https://meet.jit.si/transmision17',3016),(5018,'Conversación en línea 18','Zoho Meeting','Plataforma de videoconferencia','https://www.zoho.com/transmision18',3017),(5019,'Debate Interactivo 19','BlueJeans','Plataforma de videoconferencia','https://www.bluejeans.com/transmision19',3018),(5020,'Sesión Digital 20','StreamYard','Plataforma de streaming','https://streamyard.com/transmision20',3019);
/*!40000 ALTER TABLE `transmisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `candidatosypartidos`
--

/*!50001 DROP VIEW IF EXISTS `candidatosypartidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidatosypartidos` AS select `candidatos`.`nombre` AS `nombre`,`candidatos`.`ap_paterno` AS `ap_paterno`,`partidos`.`nombre` AS `partido` from (`candidatos` join `partidos` on((`candidatos`.`id_partido` = `partidos`.`id_partido`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `debatespasados`
--

/*!50001 DROP VIEW IF EXISTS `debatespasados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `debatespasados` AS select `debates`.`id_debate` AS `id_debate`,`debates`.`direccion` AS `direccion`,`debates`.`cp` AS `cp`,`debates`.`colonia` AS `colonia`,`debates`.`ciudad` AS `ciudad`,`debates`.`estado` AS `estado`,`debates`.`fecha` AS `fecha` from `debates` where (`debates`.`fecha` > now()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 21:15:15
