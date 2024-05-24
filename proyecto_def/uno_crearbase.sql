DROP DATABASE IF EXISTS proyecto;
CREATE DATABASE proyecto;
use proyecto;


CREATE TABLE `candidatos` (
  `id_candidato` int(5) PRIMARY KEY,
  `rfc` varchar(13) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap_paterno` varchar(30) NOT NULL,
  `ap_materno` varchar(30) DEFAULT null,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `direccion` varchar(100) DEFAULT null,
  `cp` varchar(6) DEFAULT null,
  `colonia` varchar(30) DEFAULT null,
  `ciudad` varchar(30) DEFAULT null,
  `estado` varchar(30) DEFAULT null,
  `telefono` varchar(10) DEFAULT null,
  `email` varchar(30) DEFAULT null,
  `id_partido` int(5),
  `id_cargo` int(5)
);

CREATE TABLE `partidos` (
  `id_partido` int(5) PRIMARY KEY,
  `nombre` varchar(50) NOT NULL,
  `abreviatura` varchar(10) NOT NULL,
  `telefono` varchar(10) DEFAULT null,
  `email` varchar(30) DEFAULT null,
  `id_coalicion` int(5)
);

CREATE TABLE `coaliciones` (
  `id_coalicion` int(5) PRIMARY KEY,
  `nombre_coalicion` varchar(50)
);

CREATE TABLE `cargos` (
  `id_cargo` int(5) PRIMARY KEY,
  `tipo_cargo` varchar(30) NOT NULL,
  `id_demarcacion` int(5) NOT NULL
);

CREATE TABLE `demarcaciones` (
  `id_demarcacion` int(5) PRIMARY KEY,
  `tipo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `abreviatura` varchar(10) DEFAULT null
);

CREATE TABLE `ejes_tematicos` (
  `id_eje` int(5) PRIMARY KEY,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT null
);

CREATE TABLE `propuestas` (
  `id_propuesta` int PRIMARY KEY,
  `descripcion` text NOT NULL,
  `id_candidato` int(5) NOT NULL,
  `id_eje` int(5) DEFAULT null,
  `id_debate` int(5) NOT NULL
);

CREATE TABLE `moderadores` (
  `id_moderador` int PRIMARY KEY,
  `curp` varchar(18) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap_paterno` varchar(30) NOT NULL,
  `ap_materno` varchar(30) DEFAULT null,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `direccion` varchar(100) DEFAULT null,
  `cp` varchar(6) DEFAULT null,
  `colonia` varchar(30) DEFAULT null,
  `ciudad` varchar(30) DEFAULT null,
  `estado` varchar(30) DEFAULT null,
  `telefono` varchar(10) DEFAULT null,
  `emai` varchar(50) DEFAULT null,
  `medio` varchar(50) NOT NULL,
  `id_debate` int(5)
);

CREATE TABLE `debates` (
  `id_debate` int PRIMARY KEY,
  `direccion` varchar(100) DEFAULT null,
  `cp` varchar(6) DEFAULT null,
  `colonia` varchar(30) DEFAULT null,
  `ciudad` varchar(30) DEFAULT null,
  `estado` varchar(30) DEFAULT null,
  `fecha` datetime NOT NULL
);

CREATE TABLE `candidatos_debate` (
  `id_debate` int(5) NOT NULL,
  `id_candidato` int(5) DEFAULT null
);

CREATE TABLE `transmisiones` (
  `id_transmiciones` int(5) PRIMARY KEY,
  `nombre` varchar(50) NOT NULL,
  `nombre_plataforma` varchar(50) NOT NULL,
  `tipo_plataforma` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `id_debate` int(5) NOT NULL
);

CREATE TABLE `bitacora` (
  `id_transaccion` int(5) PRIMARY KEY AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `tabla` varchar(30) NOT NULL,
  `decripcion` text
);

ALTER TABLE `moderadores` ADD FOREIGN KEY (`id_debate`) REFERENCES `debates` (`id_debate`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `candidatos` ADD FOREIGN KEY (`id_partido`) REFERENCES `partidos` (`id_partido`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `candidatos` ADD FOREIGN KEY (`id_cargo`) REFERENCES `cargos` (`id_cargo`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `cargos` ADD FOREIGN KEY (`id_demarcacion`) REFERENCES `demarcaciones` (`id_demarcacion`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `partidos` ADD FOREIGN KEY (`id_coalicion`) REFERENCES `coaliciones` (`id_coalicion`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `propuestas` ADD FOREIGN KEY (`id_candidato`) REFERENCES `candidatos` (`id_candidato`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `propuestas` ADD FOREIGN KEY (`id_eje`) REFERENCES `ejes_tematicos` (`id_eje`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `propuestas` ADD FOREIGN KEY (`id_debate`) REFERENCES `debates` (`id_debate`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `candidatos_debate` ADD FOREIGN KEY (`id_debate`) REFERENCES `debates` (`id_debate`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `candidatos_debate` ADD FOREIGN KEY (`id_candidato`) REFERENCES `candidatos` (`id_candidato`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `transmisiones` ADD FOREIGN KEY (`id_debate`) REFERENCES `debates` (`id_debate`) ON DELETE CASCADE ON UPDATE CASCADE;
