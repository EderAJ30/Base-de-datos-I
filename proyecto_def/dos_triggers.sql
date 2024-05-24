use proyecto;

show tables;

-- before insert new

DELIMITER //
DROP TRIGGER IF EXISTS n_ejes //
CREATE TRIGGER n_ejes
BEFORE INSERT ON ejes_tematicos
FOR EACH ROW
BEGIN
IF(LENGTH(NEW.descripcion) < 10) THEN
	SET NEW.descripcion = 'SIN DESCRIPCION VALIDA';
END IF;
INSERT INTO bitacora VALUES (NULL,SYSDATE(),USER(),'ejes_tematicos',
    JSON_OBJECT('accion','A-INSERTAR',
				'id_eje',NEW.id_eje,
                'nombre',NEW.nombre,
				'descripcion',NEW.descripcion));

END//
DELIMITER ;

-- before delete old

DELIMITER //
DROP TRIGGER IF EXISTS e_partidos //
CREATE TRIGGER e_partidos
BEFORE DELETE ON partidos
FOR EACH ROW
BEGIN

IF(OLD.id_coalicion IS NOT NULL)THEN
SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'No se puede eliminar un empleado activo';
END IF;

END//
DELIMITER ;

-- before update oyn


DELIMITER //
DROP TRIGGER IF EXISTS a_debates //
CREATE TRIGGER a_debates
BEFORE UPDATE ON debates
FOR EACH ROW
BEGIN
IF(NEW.fecha > OLD.fecha)THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'No se puede cambiar un debate que ya ha ocurrido';
END IF;

END//
DELIMITER ;


-- after insert new
DELIMITER //
DROP TRIGGER IF EXISTS n_candidato //
CREATE TRIGGER n_candidato 
AFTER INSERT ON candidatos 
FOR EACH ROW 
BEGIN
INSERT INTO bitacora VALUES (NULL,SYSDATE(),USER(),'candidatos',
    JSON_OBJECT('accion','A-INSERTAR',
				'id_candidato',NEW.id_candidato,
                'nombre',CONCAT_WS(' ', NEW.nombre, NEW.ap_paterno, NEW.ap_materno),
				'id_partido',NEW.id_partido,
                'id_cargo',NEW.id_cargo));
END //
DELIMITER ;

-- after delete old

DELIMITER //
DROP TRIGGER IF EXISTS e_demarcacion //
CREATE TRIGGER e_demarcacion 
AFTER DELETE ON demarcaciones 
FOR EACH ROW 
BEGIN
INSERT INTO bitacora VALUES (NULL,SYSDATE(),USER(),'demarcaciones',
    JSON_OBJECT('accion','A-ELIMINAR',
				'id_demarcacion',OLD.id_demarcacion,
                'tipo',OLD.tipo,
				'nombre',OLD.nombre,
                'abreviatura',OLD.abreviatura));
END //
DELIMITER ;

-- after update oyn

DELIMITER //
DROP TRIGGER IF EXISTS a_cargos //
CREATE TRIGGER a_cargos
AFTER UPDATE ON cargos 
FOR EACH ROW 
BEGIN

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
END //
DELIMITER ;






   






