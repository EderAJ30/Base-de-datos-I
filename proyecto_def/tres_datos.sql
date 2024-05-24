use proyecto; 

select * from demarcaciones;

INSERT INTO demarcaciones (id_demarcacion, tipo, nombre, abreviatura) VALUES
(1, 'estado', 'AGUASCALIENTES', 'AGS'),
(2, 'estado', 'BAJA CALIFORNIA', 'BC'),
(3, 'estado', 'BAJA CALIFORNIA SUR', 'BCS'),
(4, 'estado', 'CAMPECHE', 'CAMP'),
(5, 'estado', 'COAHUILA', 'COAH'),
(6, 'estado', 'COLIMA', 'COL'),
(7, 'estado', 'CHIAPAS', 'CHIS'),
(8, 'estado', 'CHIHUAHUA', 'CHIH'),
(9, 'estado', 'CIUDAD DE MEXICO', 'CDMX'),
(10, 'estado', 'DURANGO', 'DGO'),
(11, 'estado', 'GUANAJUATO', 'GTO'),
(12, 'estado', 'GUERRERO', 'GRO'),
(13, 'estado', 'HIDALGO', 'HGO'),
(14, 'estado', 'JALISCO', 'JAL'),
(15, 'estado', 'MEXICO', 'MEX'),
(16, 'estado', 'MICHOACAN', 'MICH'),
(17, 'estado', 'MORELOS', 'MOR'),
(18, 'estado', 'NAYARIT', 'NAY'),
(19, 'estado', 'NUEVO LEON', 'NL'),
(20, 'estado', 'OAXACA', 'OAX'),
(21, 'estado', 'PUEBLA', 'PUE'),
(22, 'estado', 'QUERETARO', 'QRO'),
(23, 'estado', 'QUINTANA ROO', 'QROO'),
(24, 'estado', 'SAN LUIS POTOSI', 'SLP'),
(25, 'estado', 'SINALOA', 'SIN'),
(26, 'estado', 'SONORA', 'SON'),
(27, 'estado', 'TABASCO', 'TAB'),
(28, 'estado', 'TAMAULIPAS', 'TAMPS'),
(29, 'estado', 'TLAXCALA', 'TLAX'),
(30, 'estado', 'VERACRUZ', 'VER'),
(31, 'estado', 'YUCATAN', 'YUC'),
(32, 'estado', 'ZACATECAS', 'ZAC'),
(101, 'municipio', 'Aguascalientes', 'AGS'),
(201, 'municipio', 'Mexicali', 'BC'),
(301, 'municipio', 'La Paz', 'BCS'),
(401, 'municipio', 'Campeche', 'CAMP'),
(501, 'municipio', 'Saltillo', 'COAH'),
(601, 'municipio', 'Colima', 'COL'),
(701, 'municipio', 'Tuxtla Gutiérrez', 'CHIS'),
(801, 'municipio', 'Chihuahua', 'CHIH'),
(1001, 'municipio', 'Durango', 'DGO'),
(1101, 'municipio', 'Guanajuato', 'GTO'),
(1201, 'municipio', 'Chilpancingo de los Bravo', 'GRO'),
(1301, 'municipio', 'Pachuca de Soto', 'HGO'),
(1401, 'municipio', 'Guadalajara', 'JAL'),
(1501, 'municipio', 'Toluca de Lerdo', 'MEX'),
(1601, 'municipio', 'Morelia', 'MICH'),
(1701, 'municipio', 'Cuernavaca', 'MOR'),
(1801, 'municipio', 'Tepic', 'NAY'),
(1901, 'municipio', 'Monterrey', 'NL'),
(2001, 'municipio', 'Oaxaca de Juárez', 'OAX'),
(2101, 'municipio', 'Puebla de Zaragoza', 'PUE'),
(2201, 'municipio', 'Santiago de Querétaro', 'QRO'),
(2301, 'municipio', 'Chetumal', 'QROO'),
(2401, 'municipio', 'San Luis Potosí', 'SLP'),
(2501, 'municipio', 'Culiacán Rosales', 'SIN'),
(2601, 'municipio', 'Hermosillo', 'SON'),
(2701, 'municipio', 'Villahermosa', 'TAB'),
(2801, 'municipio', 'Ciudad Victoria', 'TAMPS'),
(2901, 'municipio', 'Tlaxcala de Xicohténcatl', 'TLAX'),
(3001, 'municipio', 'Xalapa-Enríquez', 'VER'),
(3101, 'municipio', 'Mérida', 'YUC'),
(3201, 'municipio', 'Zacatecas', 'ZAC'),
(901, 'alcaldia', 'Álvaro Obregón', 'AO'),
(902, 'alcaldia', 'Azcapotzalco', 'AZ'),
(903, 'alcaldia', 'Benito Juárez', 'BJ'),
(904, 'alcaldia', 'Coyoacán', 'CO'),
(905, 'alcaldia', 'Cuajimalpa de Morelos', 'CU'),
(906, 'alcaldia', 'Cuauhtémoc', 'CUA'),
(907, 'alcaldia', 'Gustavo A. Madero', 'GAM'),
(908, 'alcaldia', 'Iztacalco', 'IZT'),
(909, 'alcaldia', 'Iztapalapa', 'IZP'),
(910, 'alcaldia', 'La Magdalena Contreras', 'LMC'),
(911, 'alcaldia', 'Miguel Hidalgo', 'MH'),
(912, 'alcaldia', 'Milpa Alta', 'MA'),
(913, 'alcaldia', 'Tláhuac', 'TLA'),
(914, 'alcaldia', 'Tlalpan', 'TL'),
(915, 'alcaldia', 'Venustiano Carranza', 'VC'),
(916, 'alcaldia', 'Xochimilco', 'XO');


select * from cargos;

INSERT INTO cargos (id_cargo, tipo_cargo, id_demarcacion) VALUES
(8001, 'Gobernador', 1),
(8002, 'Gobernador', 3),
(8003, 'Gobernador', 5),
(8004, 'Gobernador', 8),
(8005, 'Gobernador', 10),
(8006, 'Presidente', 1101),
(8007, 'Presidente', 1301),
(8008, 'Presidente', 1801),
(8009, 'Presidente', 2101),
(8010, 'Presidente', 2501),
(8011, 'Alcalde', 901),
(8012, 'Alcalde', 905),
(8013, 'Alcalde', 910),
(8014, 'Alcalde', 912),
(8015, 'Alcalde', 916),
(8016, 'Diputado', 1201),
(8017, 'Diputado', 1401),
(8018, 'Diputado', 1901),
(8019, 'Diputado', 2201),
(8020, 'Diputado', 3201);



select * from coaliciones;

INSERT INTO coaliciones (id_coalicion, nombre_coalicion) VALUES
(1100, 'Alianza por el Progreso'),
(2200, 'Frente Ciudadano por México'),
(3300, 'Juntos Haremos Historia');

select * from partidos;

INSERT INTO partidos (id_partido, nombre, abreviatura, telefono, email, id_coalicion) VALUES
(2001, 'Partido Revolucionario Institucional', 'PRI', '5551234567', 'infopri@gmail.com', 1100),
(2002, 'Partido Acción Nacional', 'PAN', '5552345678', 'infopan@gmail.com', 1100),
(2003, 'Partido de la Revolución Democrática', 'PRD', '5553456789', 'infoprd@gmail.com', 1100),
(2004, 'Partido Verde Ecologista de México', 'PVEM', '5554567890', 'infopvem@gmail.com',3300),
(2005, 'Partido del Trabajo', 'PT', '5555678901', 'infopt@gmail.com', 3300),
(2006, 'Movimiento Ciudadano', 'MC', '5556789012', 'infomc@gmail.com', 2200),
(2007, 'Morena', 'MORENA', '5557890123', 'infomorena@gmail.com', null),
(2008, 'Partido Encuentro Solidario', 'PES', '5558901234', 'infopes@gmail.com', null),
(2009, 'Redes Sociales Progresistas', 'RSP', '5559012345', 'inforsp@gmail.com', null);

select * from candidatos;

INSERT INTO candidatos (id_candidato, rfc, curp, nombre, ap_paterno, ap_materno, fecha_nacimiento, sexo, direccion, colonia, cp, ciudad, estado, telefono, email, id_partido, id_cargo) VALUES
(1001, 'DOCR850410HDF', 'DOCR850410HDFRMR07', 'Rodrigo', 'Domínguez', 'Cruz', '1985-04-10', 'H', 'calle santa maria', 'Colonia Falsa', '54865', 'Cuernavaca', 'Morelos', '5559782749', 'rodrigo.dominguez@gmail.com', 2001, 8001),
(1002, 'LARM920515MDF', 'LARM920515MDFJTR08', 'Laura', 'Martínez', 'Ruiz', '1992-05-15', 'M', 'calle falsa 123', 'Colonia Centro', '12345', 'Ciudad de México', 'CDMX', '5556781234', 'laura.martinez@gmail.com', 2001, 8001),
(1003, 'JGON810630HDF', 'JGON810630HDFBRM09', 'Jorge', 'González', 'Nava', '1981-06-30', 'H', 'avenida siempre viva 742', 'Colonia Norte', '54321', 'Guadalajara', 'Jalisco', '3335467890', 'jorge.gonzalez@gmail.com' , 2001, 8002),
(1004, 'AMER900112MDF', 'AMER900112MDFHPL10', 'Ana', 'Méndez', 'Ramírez', '1990-01-12', 'M', 'calle de la rosa 456', 'Colonia Sur', '98765', 'Monterrey', 'Nuevo León', '8187654321', 'ana.mendez@gmail.com', 2002, 8003),
(1005, 'CMOR750823HDF', 'CMOR750823HDFKLB11', 'Carlos', 'Moreno', 'López', '1975-08-23', 'H', 'avenida del sol 789', 'Colonia Este', '11223', 'Puebla', 'Puebla', '2224567890', 'carlos.moreno@gmail.com', 2002, 8004),
(1006, 'PMAR850910MDF', 'PMAR850910MDFPRL12', 'Patricia', 'Martínez', 'Rodríguez', '1985-09-10', 'M', 'calle luna 321', 'Colonia Oeste', '33445', 'León', 'Guanajuato', '4776543210', 'patricia.martinez@gmail.com', 2003, 8005),
(1007, 'RAMC890523HDF', 'RAMC890523HDFGZT13', 'Raúl', 'Acosta', 'Muñoz', '1989-05-23', 'H', 'avenida estrella 654', 'Colonia Alta', '55667', 'Querétaro', 'Querétaro', '4423456789', 'raul.acosta@gmail.com', 2003, 8001),
(1008, 'MJIM960830MDF', 'MJIM960830MDFPLR14', 'María', 'Jiménez', 'Salazar', '1996-08-30', 'M', 'calle arcoiris 987', 'Colonia Baja', '77889', 'Mérida', 'Yucatán', '9998765432', 'maria.jimenez@gmail.com', 2004, 8002),
(1009, 'LOPR750315HDF', 'LOPR750315HDFBMR15', 'Luis', 'Ortega', 'Pérez', '1975-03-15', 'H', 'avenida independencia 135', 'Colonia Nueva', '12389', 'Toluca', 'Estado de México', '7224567891', 'luis.ortega@gmail.com', 2004, 8003),
(1010, 'JHER850601MDF', 'JHER850601MDFTRL16', 'Julia', 'Hernández', 'Ramos', '1985-06-01', 'M', 'calle libertad 246', 'Colonia Antigua', '45678', 'Morelia', 'Michoacán', '4436789012', 'julia.hernandez@gmail.com', 2005, 8004),
(1011, 'GARC740412HDF', 'GARC740412HDFPRM17', 'Gabriel', 'Arce', 'Castillo', '1974-04-12', 'H', 'calle de las flores 357', 'Colonia Jardines', '56789', 'San Luis Potosí', 'San Luis Potosí', '4445678901', 'gabriel.arce@gmail.com', 2005, 8005),
(1012, 'FLOP940728MDF', 'FLOP940728MDFYTL18', 'Flor', 'Ocampo', 'Ramírez', '1994-07-28', 'M', 'avenida reforma 468', 'Colonia Industrial', '67890', 'Aguascalientes', 'Aguascalientes', '4496789012', 'flor.ocampo@gmail.com', 2006, 8001),
(1013, 'MEZA870920HDF', 'MEZA870920HDFBRS19', 'Mario', 'Ezeta', 'Sánchez', '1987-09-20', 'H', 'calle libertad 579', 'Colonia Independencia', '78901', 'Chihuahua', 'Chihuahua', '6147890123', 'mario.ezeta@gmail.com', 2006, 8002),
(1014, 'QUGR910314MDF', 'QUGR910314MDFTRL20', 'Quetzalli', 'Guzmán', 'Rivera', '1991-03-14', 'M', 'avenida los álamos 680', 'Colonia Centro', '89012', 'Saltillo', 'Coahuila', '8448901234', 'quetzalli.guzman@gmail.com', 2007, 8003),
(1015, 'SUAR790822HDF', 'SUAR790822HDFMRR21', 'Santiago', 'Urrutia', 'Aragón', '1979-08-22', 'H', 'calle del sol 791', 'Colonia del Valle', '90123', 'Tijuana', 'Baja California', '6649012345', 'santiago.urrutia@gmail.com', 2007, 8004),
(1016, 'VARG930101MDF', 'VARG930101MDFPRL22', 'Valeria', 'Ramos', 'Gutiérrez', '1993-01-01', 'M', 'avenida insurgentes 802', 'Colonia Roma', '10234', 'Zapopan', 'Jalisco', '3330123456', 'valeria.ramos@gmail.com', 2008, 8005),
(1017, 'TORJ840724HDF', 'TORJ840724HDFPLR23', 'Javier', 'Torres', 'Juárez', '1984-07-24', 'H', 'calle miguel hidalgo 913', 'Colonia San Miguel', '21345', 'Culiacán', 'Sinaloa', '6671234567', 'javier.torres@gmail.com', 2008, 8001),
(1018, 'GUTV920618MDF', 'GUTV920618MDFMRN24', 'Vanessa', 'Gutiérrez', 'Naranjo', '1992-06-18', 'M', 'calle revolución 124', 'Colonia Morelos', '32456', 'Tuxtla Gutiérrez', 'Chiapas', '9612345678', 'vanessa.gutierrez@gmail.com', 2009, 8002),
(1019, 'FLOM980807HDF', 'FLOM980807HDFPLT25', 'Miguel', 'Flores', 'Martínez', '1998-08-07', 'H', 'avenida las palmas 235', 'Colonia Delicias', '43567', 'Villahermosa', 'Tabasco', '9933456789', 'miguel.flores@gmail.com', 2009, 8003),
(1020, 'ZAVD760319HDF', 'ZAVD760319HDFPRM26', 'Daniel', 'Zavala', 'Duarte', '1976-03-19', 'H', 'calle los pinos 346', 'Colonia Americana', '54678', 'Hermosillo', 'Sonora', '6624567890', 'daniel.zavala@gmail.com', 2007, 8004),
(1021, 'MENJ880402MDF', 'MENJ880402MDFTRL27', 'Jazmín', 'Mendoza', 'López', '1988-04-02', 'M', 'avenida central 457', 'Colonia Vista Hermosa', '65789', 'La Paz', 'Baja California Sur', '6125678901', 'jazmin.mendoza@gmail.com', 2005, 8005);

select * from ejes_tematicos;

INSERT INTO ejes_tematicos (id_eje, nombre, descripcion) VALUES
(6001, 'Educación', 'Propuestas relacionadas con la mejora del sistema educativo, acceso a la educación, calidad educativa, etc.'),
(6002, 'Salud', 'Propuestas relacionadas con la atención médica, acceso a servicios de salud, prevención de enfermedades, etc.'),
(6003, 'Economía', 'Propuestas relacionadas con el desarrollo económico, creación de empleo, fomento a la inversión, etc.'),
(6004, 'Medio Ambiente', 'Propuestas relacionadas con la protección del medio ambiente, conservación de recursos naturales, lucha contra el cambio climático, etc.'),
(6005, 'Seguridad', 'Propuestas relacionadas con la prevención del delito, seguridad ciudadana, fortalecimiento de instituciones de seguridad, etc.'),
(6006, 'Derechos Humanos', 'Propuestas relacionadas con la protección y promoción de los derechos humanos, igualdad de género, inclusión social, etc.'),
(6007, 'Tecnología', 'Propuestas relacionadas con el desarrollo tecnológico, innovación, acceso a la tecnología, sociedad digital, etc.'),
(6008, 'Cultura', 'Propuestas relacionadas con el fomento a la cultura, preservación del patrimonio cultural, acceso a la cultura, etc.'),
(6009, 'Infraestructura', 'Propuestas relacionadas con la construcción y mantenimiento de infraestructuras, transporte, comunicaciones, etc.'),
(6010, 'Desarrollo Social', 'Propuestas relacionadas con la reducción de la pobreza, inclusión social, programas de asistencia social, etc.');

select * from debates;

INSERT INTO debates (id_debate, direccion, cp, colonia, ciudad, estado, fecha) VALUES
(3001, 'Avenida México 123', 45050, 'Colonia Chapultepec', 'Guadalajara', 'Jalisco', '2024-10-15'),
(3002, 'Calle Juárez 456', 06100, 'Colonia Reforma', 'Ciudad de México', 'Ciudad de México', '2024-11-05'),
(3003, 'Paseo del Pardo 789', 28010, 'Colonia Condesa', 'Monterrey', 'Nuevo León', '2024-09-28'),
(3004, 'Calle Hidalgo 101', 45030, 'Colonia Centro', 'Guadalajara', 'Jalisco', '2024-10-20'),
(3005, 'Avenida Constitución 567', 38020, 'Colonia Americana', 'Guadalajara', 'Jalisco', '2024-11-12'),
(3006, 'Calle Morelos 345', 22000, 'Colonia Centro', 'Tijuana', 'Baja California', '2024-12-03'),
(3007, 'Boulevard Independencia 678', 45600, 'Colonia Centro', 'Guadalajara', 'Jalisco', '2024-10-08'),
(3008, 'Calle Madero 901', 78320, 'Colonia Centro', 'Veracruz', 'Veracruz', '2024-11-19'),
(3009, 'Avenida Revolución 234', 22040, 'Colonia Zona Centro', 'Tijuana', 'Baja California', '2024-12-10'),
(3010, 'Paseo de la Reforma 567', 06600, 'Colonia Polanco', 'Ciudad de México', 'Ciudad de México', '2024-11-26'),
(3011, 'Avenida Juárez 123', 44100, 'Colonia Centro', 'Guadalajara', 'Jalisco', '2024-10-29'),
(3012, 'Calle Zaragoza 678', 44600, 'Colonia Centro', 'Guadalajara', 'Jalisco', '2024-12-17'),
(3013, 'Avenida Hidalgo 345', 32000, 'Colonia Centro', 'Ciudad Juárez', 'Chihuahua', '2024-09-21'),
(3014, 'Boulevard López Mateos 901', 22010, 'Colonia Zona Río', 'Tijuana', 'Baja California', '2024-12-31'),
(3015, 'Calle Guerrero 234', 64700, 'Colonia Centro', 'Monterrey', 'Nuevo León', '2024-09-14'),
(3016, 'Avenida Morelos 567', 20000, 'Colonia Centro', 'Acapulco', 'Guerrero', '2024-10-03'),
(3017, 'Paseo de la Reforma 901', 06700, 'Colonia Polanco', 'Ciudad de México', 'Ciudad de México', '2024-11-02'),
(3018, 'Avenida Juárez 234', 22050, 'Colonia Zona Río', 'Tijuana', 'Baja California', '2024-09-07'),
(3019, 'Calle Madero 678', 78430, 'Colonia Centro', 'Veracruz', 'Veracruz', '2024-10-06'),
(3020, 'Boulevard Miguel de la Madrid 123', 28867, 'Colonia Centro', 'Manzanillo', 'Colima', '2024-11-09');

select * from propuestas;

INSERT INTO propuestas (id_propuesta, descripcion, id_candidato, id_eje, id_debate) VALUES
(7001, 'Implementar programas de formación docente continua para mejorar la calidad educativa.',1002 ,6001 ,3001),
(7002, 'Garantizar el acceso universal a la salud mediante la ampliación de la cobertura de servicios médicos.',1002 ,6002 ,3001),
(7003, 'Fomentar el emprendimiento y la creación de microempresas para impulsar la economía local.',1003 ,6003 ,3002),
(7004, 'Promover políticas de conservación ambiental y energías renovables para combatir el cambio climático.',1003 ,6004 ,3003),
(7005, 'Fortalecer las políticas de seguridad ciudadana y prevención del delito.',1004 ,6005 ,3004),
(7006, 'Proteger y promover los derechos humanos, especialmente de grupos vulnerables como mujeres, niños y migrantes.',1005 ,6006 ,3005),
(7007, 'Incentivar la investigación y desarrollo de tecnologías innovadoras para el desarrollo económico.',1006 ,6007 ,3006),
(7008, 'Promover la diversidad cultural y el acceso equitativo a expresiones culturales.',1007 ,6008 ,3007),
(7009, 'Invertir en infraestructuras clave como carreteras, puentes y telecomunicaciones para impulsar el desarrollo regional.',1008 ,6009 ,3009),
(7010, 'Implementar programas de desarrollo social integral para reducir la desigualdad y la pobreza.',1009 ,6010 ,3010),
(7011, 'Mejorar la formación profesional y técnica para adaptarse a las demandas del mercado laboral.',1010 ,6001 ,3011),
(7012, 'Ampliar la cobertura y calidad de los servicios de salud mental y bienestar emocional.',1011 ,6002 ,3012),
(7013, 'Fomentar la creación de cooperativas y asociaciones para fortalecer la economía comunitaria.',1012 ,6003 ,3013),
(7014, 'Regular el uso de recursos naturales y proteger áreas de alto valor ecológico.',1013 ,6004 ,3014),
(7015, 'Crear programas de rehabilitación y reinserción social para personas en situación de vulnerabilidad.',1014 ,6005 ,3015),
(7016, 'Promover la igualdad de género y combatir la violencia machista.',1015 ,6005 ,3016),
(7017, 'Impulsar la digitalización de la educación y acceso a la tecnología en zonas rurales.',1016 ,6006 ,3017),
(7018, 'Preservar y promover la diversidad cultural a través de festivales y eventos culturales.',1017 ,6007 ,3018),
(7019, 'Desarrollar sistemas de transporte público eficientes y sostenibles.',1018 ,6008 ,3019),
(7020, 'Mejorar la infraestructura de telecomunicaciones para garantizar acceso a internet en áreas remotas.',1019 ,6009 ,3020),
(7021, 'Promover la agricultura sostenible y el uso de técnicas agrícolas respetuosas con el medio ambiente.',1020 ,6010 ,3001),
(7022, 'Fortalecer la capacitación y equipamiento de cuerpos policiales para mejorar la seguridad ciudadana.',1021 ,6001 ,3002),
(7023, 'Implementar políticas de inclusión laboral para personas con discapacidad.',1002 ,6002 ,3003),
(7024, 'Ampliar el acceso a la educación superior y becas para estudiantes de bajos recursos.',1003 ,6003 ,3004),
(7025, 'Crear incentivos fiscales para empresas que adopten prácticas amigables con el medio ambiente.',1004 ,6004 ,3005),
(7026, 'Mejorar la accesibilidad de espacios públicos para personas con movilidad reducida.',1005 ,6005 ,3006),
(7027, 'Fomentar la participación ciudadana en la toma de decisiones y políticas públicas.',1005 ,6006 ,3007),
(7028, 'Impulsar la industria del turismo sostenible y cultural.',1006 ,6007 ,3008),
(7029, 'Desarrollar programas de vivienda digna para familias de bajos recursos.',1007 ,6008 ,3009),
(7030, 'Implementar medidas de prevención y atención integral de la violencia de género.',1008 ,6009 ,3010),
(7031, 'Promover la inclusión digital y alfabetización tecnológica en la población.',1009 ,6010 ,3011),
(7032, 'Construir y mantener infraestructuras deportivas y recreativas en comunidades.',1010 ,6001 ,3012),
(7033, 'Establecer políticas de protección y conservación de ecosistemas marinos y costeros.',1002 ,6002 ,3013),
(7034, 'Fortalecer programas de educación ambiental en escuelas y comunidades.',1011 ,6003 ,3014),
(7035, 'Mejorar la accesibilidad a servicios de salud reproductiva y planificación familiar.',1012 ,6004 ,3015),
(7036, 'Impulsar la adopción de energías limpias y renovables en hogares y empresas.',1013 ,6005 ,3016),
(7037, 'Desarrollar estrategias de adaptación y mitigación al cambio climático a nivel local.',1014 ,6006 ,3017),
(7038, 'Promover la inclusión financiera y acceso a créditos para emprendedores.',1015 ,6007 ,3018),
(7039, 'Implementar políticas de igualdad salarial y oportunidades laborales para mujeres.',1016 ,6008 ,3019),
(7040, 'Fomentar la conservación de especies en peligro de extinción y sus hábitats.',1017 ,6009 ,3020),
(7041, 'Desarrollar programas de formación y empleo para jóvenes en riesgo de exclusión social.',1018 ,6010 ,3001);

select * from candidatos_debate;

INSERT INTO candidatos_debate (id_debate, id_candidato) VALUES
(3001, 1001), (3001, 1002),
(3002, 1001), (3002, 1002), (3002, 1003), 
(3003, 1001), (3003, 1002), (3003, 1003), (3003, 1004),
(3004, 1001), (3004, 1002), (3004, 1003), (3004, 1004), (3004, 1005),
(3005, 1005), (3005, 1006), (3005, 1007), (3005, 1008), (3005, 1009),
(3006, 1010), (3006, 1011), (3006, 1012), (3006, 1013), (3006, 1014),
(3007, 1015), (3007, 1016), (3007, 1017), (3007, 1018), (3007, 1019),
(3008, 1001), (3008, 1003), (3008, 1005), (3008, 1007), 
(3009, 1009), (3009, 1011), (3009, 1013), 
(3010, 1017), (3010, 1019), 
(3011, 1002), (3011, 1004), (3011, 1006), 
(3012, 1008), (3012, 1010), (3012, 1012), (3012, 1014), 
(3013, 1016), (3013, 1018), (3013, 1020), (3013, 1021), (3013, 1005),
(3014, 1003), (3014, 1006), (3014, 1009), (3014, 1012), 
(3015, 1015), (3015, 1018), (3015, 1021), 
(3016, 1004), (3016, 1008), (3016, 1012),
(3017, 1016), (3017, 1020), 
(3018, 1005), (3018, 1010), 
(3019, 1015), (3019, 1020), (3019, 1021), 
(3020, 1006), (3020, 1012), (3020, 1018), (3020, 1019), (3020, 1020);




select * from  moderadores;

INSERT INTO moderadores (id_moderador, curp, nombre, ap_paterno, ap_materno, fecha_nacimiento, sexo, direccion, cp, colonia, ciudad, estado, telefono, emai, medio, id_debate) VALUES -- 3001 3020
(4001, 'MNOP123456QRSTUVW4', 'Laura', 'Rodríguez', 'González', '1982-07-18', 'F', 'Calle Morelos 345', '22000', 'Colonia Centro', 'Tijuana', 'Baja California', '6641234567', 'laura.rodriguez@example.com', 'Excélsior', 3001),
(4002, 'UVWX123456MNOPQR5', 'Carlos', 'Martínez', 'Díaz', '1988-11-25', 'M', 'Boulevard Independencia 678', '45600', 'Colonia Centro', 'Guadalajara', 'Jalisco', '3331234567', 'carlos.martinez@example.com', 'El Universal', 3002),
(4003, 'QRST123456UVWXMN6', 'Ana', 'Pérez', 'Sánchez', '1995-02-12', 'F', 'Calle Madero 901', '78320', 'Colonia Centro', 'Veracruz', 'Veracruz', '2291234567', 'ana.perez@example.com', 'CNN México', 3003),
(4004, 'YZAB123456TUVWXO7', 'Javier', 'Gómez', 'Fernández', '1980-09-30', 'M', 'Avenida Revolución 234', '22040', 'Colonia Zona Centro', 'Tijuana', 'Baja California', '6642345678', 'javier.gomez@example.com', 'Forbes México', 3004),
(4005, 'BCDE123456YZABP8', 'Sofía', 'Flores', 'López', '1984-04-07', 'F', 'Paseo de la Reforma 567', '06600', 'Colonia Polanco', 'Ciudad de México', 'Ciudad de México', '5552345678', 'sofia.flores@example.com', 'TeleSur', 3005),
(4006, 'TUVW123456QRSTUQ9', 'Luis', 'González', 'Hernández', '1992-12-15', 'M', 'Avenida Juárez 123', '44100', 'Colonia Centro', 'Guadalajara', 'Jalisco', '3319876543', 'luis.gonzalez@example.com', 'Canal Once', 3006),
(4007, 'XYZA123456BCDEFX0', 'Fernanda', 'Sánchez', 'Martínez', '1987-06-20', 'F', 'Calle Zaragoza 678', '44600', 'Colonia Centro', 'Guadalajara', 'Jalisco', '3338765432', 'fernanda.sanchez@example.com', 'MVS Noticias', 3007),
(4008, 'OPQR123456IJKLMY1', 'Diego', 'Pérez', 'García', '1983-03-05', 'M', 'Avenida Hidalgo 345', '32000', 'Colonia Centro', 'Ciudad Juárez', 'Chihuahua', '6567654321', 'diego.perez@example.com', 'TV Azteca Noticias', 3008),
(4009, 'KLMN123456OPQRI2', 'Mariana', 'Martínez', 'Gómez', '1990-01-10', 'F', 'Boulevard López Mateos 901', '22010', 'Colonia Zona Río', 'Tijuana', 'Baja California', '6646543210', 'mariana.martinez@example.com', 'Excélsior TV', 3009),
(4010, 'GHIJ123456LMNOPZ3', 'Roberto', 'Hernández', 'Flores', '1986-08-28', 'M', 'Calle Guerrero 234', '64700', 'Colonia Centro', 'Monterrey', 'Nuevo León', '8189876543', 'roberto.hernandez@example.com', 'Azteca Noticias', 3010),
(4011, 'DEFG123456HIJKLX4', 'Lorena', 'García', 'Díaz', '1981-05-25', 'F', 'Avenida Morelos 567', '20000', 'Colonia Centro', 'Acapulco', 'Guerrero', '7447654321', 'lorena.garcia@example.com', 'Radio Fórmula', 3011),
(4012, 'LMNO123456QRSTUM5', 'Daniel', 'López', 'Hernández', '1989-10-12', 'M', 'Paseo de la Reforma 901', '06700', 'Colonia Polanco', 'Ciudad de México', 'Ciudad de México', '5587654321', 'daniel.lopez@example.com', 'El Financiero', 3012),
(4013, 'HIJK123456VWXYZA6', 'Carmen', 'Sánchez', 'Gómez', '1984-07-08', 'F', 'Avenida Juárez 234', '22050', 'Colonia Zona Río', 'Tijuana', 'Baja California', '6645432109', 'carmen.sanchez@example.com', 'El Sol de México', 3013),
(4014, 'QRST123456OPQRIJ7', 'Gabriel', 'Martínez', 'Hernández', '1993-04-15', 'M', 'Calle Madero 678', '78430', 'Colonia Centro', 'Veracruz', 'Veracruz', '2296543210', 'gabriel.martinez@example.com', 'Reforma', 3014),
(4015, 'VWXYZ123456IJKLX8', 'Paula', 'Hernández', 'Sánchez', '1987-11-22', 'F', 'Boulevard Miguel de la Madrid 123', '28867', 'Colonia Centro', 'Manzanillo', 'Colima', '3147654321', 'paula.hernandez@example.com', 'El País', 3015),
(4016, 'NOPQ123456UVWXYM9', 'Alejandro', 'Gómez', 'López', '1985-03-18', 'M', 'Calle Bravo 901', '33000', 'Colonia Centro', 'Chihuahua', 'Chihuahua', '6149876543', 'alejandro.gomez@example.com', 'La Jornada', 3016),
(4017, 'UVWX123456MNOPQZ0', 'Fabiola', 'Pérez', 'Martínez', '1980-09-09', 'F', 'Avenida Hidalgo 234', '44150', 'Colonia Centro', 'Guadalajara', 'Jalisco', '3332345678', 'fabiola.perez@example.com', 'BBC Mundo', 3017);

select * from transmisiones;


INSERT INTO transmisiones (id_transmiciones, nombre, nombre_plataforma, tipo_plataforma, link, id_debate) VALUES
(5001, 'Transmisión en vivo 1', 'YouTube', 'Plataforma de video', 'https://www.youtube.com/transmision1', 3001),
(5002, 'Evento en línea 2', 'Facebook Live', 'Red social', 'https://www.facebook.com/transmision2', 3002),
(5003, 'Streaming Debate 3', 'Twitch', 'Plataforma de streaming', 'https://www.twitch.tv/transmision3', 3003),
(5004, 'Debate en Directo 4', 'Periscope', 'Plataforma de video en directo', 'https://www.pscp.tv/transmision4', 3004),
(5005, 'Conferencia Virtual 5', 'Zoom', 'Plataforma de videoconferencia', 'https://www.zoom.us/transmision5', 3004),
(5006, 'Sesión en línea 6', 'Microsoft Teams', 'Plataforma de colaboración', 'https://www.teams.microsoft.com/transmision6', 3005),
(5007, 'Webinar Debate 7', 'Google Meet', 'Plataforma de videoconferencia', 'https://meet.google.com/transmision7', 3006),
(5008, 'Presentación Digital 8', 'Cisco Webex', 'Plataforma de videoconferencia', 'https://www.webex.com/transmision8', 3007),
(5009, 'Foro en Vivo 9', 'Instagram Live', 'Red social', 'https://www.instagram.com/transmision9', 3008),
(5010, 'Debate Virtual 10', 'Discord', 'Plataforma de comunicación', 'https://www.discord.com/transmision10', 3009),
(5011, 'Transmisión en línea 11', 'Vimeo', 'Plataforma de video', 'https://www.vimeo.com/transmision11', 3010),
(5012, 'Videoconferencia 12', 'GoToMeeting', 'Plataforma de videoconferencia', 'https://www.gotomeeting.com/transmision12', 3011),
(5013, 'Seminario en Vivo 13', 'Brightcove', 'Plataforma de video', 'https://www.brightcove.com/transmision13', 3012),
(5014, 'Debate Digital 14', 'Skype', 'Plataforma de comunicación', 'https://www.skype.com/transmision14', 3013),
(5015, 'Charla en Línea 15', 'BigBlueButton', 'Plataforma de videoconferencia', 'https://www.bigbluebutton.com/transmision15', 3014),
(5016, 'Video en Directo 16', 'Livestream', 'Plataforma de video en directo', 'https://www.livestream.com/transmision16', 3015),
(5017, 'Encuentro Virtual 17', 'Jitsi Meet', 'Plataforma de videoconferencia', 'https://meet.jit.si/transmision17', 3016),
(5018, 'Conversación en línea 18', 'Zoho Meeting', 'Plataforma de videoconferencia', 'https://www.zoho.com/transmision18', 3017),
(5019, 'Debate Interactivo 19', 'BlueJeans', 'Plataforma de videoconferencia', 'https://www.bluejeans.com/transmision19', 3018),
(5020, 'Sesión Digital 20', 'StreamYard', 'Plataforma de streaming', 'https://streamyard.com/transmision20', 3019);



