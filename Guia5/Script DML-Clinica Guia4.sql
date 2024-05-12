

insert into departamentos values
-- idDepartamento, departamento, pais 
	('AH', 'Ahuachapán', 'El Salvador'),
	('CA', 'Cabañas', 'El Salvador'),
	('CH', 'Chalatenango', 'El Salvador'),
	('CU', 'Cuscatlán', 'El Salvador'),
	('LL', 'La Libertad', 'El Salvador'),
	('LP', 'La Paz', 'El Salvador'),
	('LU', 'La Unión', 'El Salvador'),
	('MO', 'Morazán', 'El Salvador'),
	('SA', 'Santa Ana', 'El Salvador'),
	('SM', 'San Miguel', 'El Salvador'),
	('SS', 'San Salvador', 'El Salvador'),
	('SV', 'San Vicente', 'El Salvador'),
	('SO', 'Sonsonate', 'El Salvador'),
	('US', 'Usulután', 'El Salvador');

insert into municipios values
-- idMunicipio, municipio, idDepartamento
	('AHN', 'Ahuachapán Norte', 'AH'),
	('AHC', 'Ahuachapán Centro', 'AH'),
	('AHS', 'Ahuachapán Sur', 'AH'),
	('CAE', 'Cabañas Este', 'CA'),
	('CAO', 'Cabañas Oeste', 'CA'),
	('CHN', 'Chalatenango Norte', 'CH'),
	('CHC', 'Chalatenango Centro', 'CH'),
	('CHS', 'Chalatenango Sur', 'CH'),
	('CUN', 'Cuscatlán Norte', 'CU'),
	('CUS', 'Cuscatlán Sur', 'CU'),
	('LLN', 'La Libertad Norte', 'LL'),
	('LLC', 'La Libertad Centro', 'LL'),
	('LLO', 'La Libertad Oeste', 'LL'),
	('LLE', 'La Libertad Este', 'LL'),
	('LLS', 'La Libertad Sur', 'LL'),
	('LLT', 'La Libertad Costa', 'LL'),
	('LPO', 'La Paz Oeste', 'LP'),
	('LPC', 'La Paz Centro', 'LP'),
	('LPE', 'La Paz Este', 'LP'),
	('LUN', 'La Unión Norte', 'LU'),
	('LUS', 'La Unión Sur', 'LU'),
	('MON', 'Morazán Norte', 'MO'),
	('MOS', 'Morazán Sur', 'MO'),
	('SAN', 'Santa Ana Norte', 'SA'),
	('SAC', 'Santa Ana Centro', 'SA'),
	('SAE', 'Santa Ana Este', 'SA'),
	('SAO', 'Santa Ana Oeste', 'SA'),
	('SMN', 'San Miguel Norte', 'SM'),
	('SMC', 'San Miguel Centro', 'SM'),
	('SMO', 'San Miguel Oeste', 'SM'),
	('SSN', 'San Salvador Norte', 'SS'),
	('SSO', 'San Salvador Oeste', 'SS'),
	('SSE', 'San Salvador Este', 'SS'),
	('SSC', 'San Salvador Centro', 'SS'),
	('SSS', 'San Salvador Sur', 'SS'),
	('SVN', 'San Vicente Norte', 'SV'),
	('SVS', 'San Vicente Sur', 'SV'),
	('SON', 'Sonsonate Norte', 'SO'),
	('SOC', 'Sonsonate Centro', 'SO'),
	('SOE', 'Sonsonate Este', 'SO'),
	('SOO', 'Sonsonate Oeste', 'SO'),
	('USN', 'Usulután Norte', 'US'),
	('USE', 'Usulután Este', 'US'),
	('USO', 'Usulután Oeste', 'US');

insert into distritos values
-- idDistrito, distrito, idMunicipio
-- Ahuachapan
	('AHN01', 'Atiquizaya', 'AHN'),
	('AHN02', 'El Refugio', 'AHN'),
	('AHN03', 'San Lorenzo', 'AHN'),
	('AHN04', 'Turín', 'AHN'),
	('AHC01', 'Ahuachapán', 'AHC'),
	('AHC02', 'Apaneca', 'AHC'),
	('AHC03', 'Concepción de Ataco', 'AHC'),
	('AHC04', 'Tacuba', 'AHC'),
	('AHS01', 'Guaymango', 'AHS'),
	('AHS02', 'Jujutla', 'AHS'),
	('AHS03', 'San Francisco Menéndez', 'AHS'),
	('AHS04', 'San Pedro Puxtla', 'AHS'),
-- Cabañas
	('CAE01', 'Sensuntepeque', 'CAE'),
	('CAE02', 'Victoria', 'CAE'),
	('CAE03', 'Dolores', 'CAE'),
	('CAE04', 'Guacotecti', 'CAE'),
	('CAE05', 'San Isidro', 'CAE'),
	('CAO01', 'Ilobasco', 'CAO'),
	('CAO02', 'Tejutepeque', 'CAO'),
	('CAO03', 'Jutiapa', 'CAO'),
	('CAO04', 'Cinquera', 'CAO'),
-- Chalatenango
	('CHN01', 'La Palma', 'CHN'),
	('CHN02', 'Citalá', 'CHN'),
	('CHN03', 'San Ignacio', 'CHN'),
	('CHC01', 'Nueva Concepción', 'CHC'),
	('CHC02', 'Tejutla', 'CHC'),
	('CHC03', 'La Reina', 'CHC'),
	('CHC04', 'Agua Caliente', 'CHC'),
	('CHC05', 'Dulce Nombre de María', 'CHC'),
	('CHC06', 'El Paraíso', 'CHC'),
	('CHC07', 'San Fernando', 'CHC'),
	('CHC08', 'San Francisco Morazán', 'CHC'),
	('CHC09', 'San Rafael', 'CHC'),
	('CHC10', 'Santa Rita', 'CHC'),
	('CHS01', 'Chalatenango', 'CHS'),
	('CHS02', 'Arcatao', 'CHS'),
	('CHS03', 'Azacualpa', 'CHS'),
	('CHS04', 'Comalapa', 'CHS'),
	('CHS05', 'Concepción Quezaltepeque', 'CHS'),
	('CHS06', 'El Carrizal', 'CHS'),
	('CHS07', 'La Laguna', 'CHS'),
	('CHS08', 'Las Vueltas', 'CHS'),
	('CHS09', 'Nombre de Jesús', 'CHS'),
	('CHS10', 'Nueva Trinidad', 'CHS'),
	('CHS11', 'Ojos de Agua', 'CHS'),
	('CHS12', 'Potonico', 'CHS'),
	('CHS13', 'San Antonio de La Cruz', 'CHS'),
	('CHS14', 'San Antonio Los Ranchos', 'CHS'),
	('CHS15', 'San Francisco Lempa', 'CHS'),
	('CHS16', 'San Isidro Labrador', 'CHS'),
	('CHS17', 'San José Cancasque', 'CHS'),
	('CHS18', 'San Miguel de Mercedes', 'CHS'),
	('CHS19', 'San José Las Flores', 'CHS'),
	('CHS20', 'San Luis del Carmen', 'CHS'),
-- Cuscatlán
	('CUN01', 'Suchitoto', 'CUN'),
	('CUN02', 'San José Guayabal', 'CUN'),
	('CUN03', 'Oratorio de Concepción', 'CUN'),
	('CUN04', 'San Bartolomé Perulapía', 'CUN'),
	('CUN05', 'San Pedro Perulapán', 'CUN'),
	('CUS01', 'Cojutepeque', 'CUS'),
	('CUS02', 'San Rafael Cedros', 'CUS'),
	('CUS03', 'Candelaria', 'CUS'),
	('CUS04', 'Monte San Juan', 'CUS'),
	('CUS05', 'El Carmen', 'CUS'),
	('CUS06', 'San Cristobal', 'CUS'),
	('CUS07', 'Santa Cruz Michapa', 'CUS'),
	('CUS08', 'San Ramón', 'CUS'),
	('CUS09', 'El Rosario', 'CUS'),
	('CUS10', 'Santa Cruz Analquito', 'CUS'),
	('CUS11', 'Tenancingo', 'CUS'),
-- La Libertad
	('LLN01', 'Quezaltepeque', 'LLN'),
	('LLN02', 'San Matías', 'LLN'),
	('LLN03', 'San Pablo Tacachico', 'LLN'),
	('LLC01', 'San Juan Opico', 'LLC'),
	('LLC02', 'Ciudad Arce', 'LLC'),
	('LLO01', 'Colón', 'LLO'),
	('LLO02', 'Jayaque', 'LLO'),
	('LLO03', 'Sacacoyo', 'LLO'),
	('LLO04', 'Tepecoyo', 'LLO'),
	('LLO05', 'Talnique', 'LLO'),
	('LLE01', 'Antiguo Cuscatlán', 'LLE'),
	('LLE02', 'Huizúcar', 'LLE'),
	('LLE03', 'Nuevo Cuscatlán', 'LLE'),
	('LLE04', 'San José Villanueva', 'LLE'),
	('LLE05', 'Zaragoza', 'LLE'),
	('LLS01', 'Comasagua', 'LLS'),
	('LLS02', 'Santa Tecla', 'LLS'),
	('LLT01', 'Chiltiupán', 'LLT'),
	('LLT02', 'Jicalapa', 'LLT'),
	('LLT03', 'La Libertad', 'LLT'),
	('LLT04', 'Tamanique', 'LLT'),
	('LLT05', 'Teotepeque', 'LLT'),
-- La Paz
	('LPO01', 'Cuyultitan', 'LPO'),
	('LPO02', 'Olocuilta', 'LPO'),
	('LPO03', 'San Juan Talpa', 'LPO'),
	('LPO04', 'San Luis Talpa', 'LPO'),
	('LPO05', 'San Pedro Masahuat', 'LPO'),
	('LPO06', 'Tapalhuaca', 'LPO'),
	('LPO07', 'San Francisco Chinameca', 'LPO'),
	('LPC01', 'El Rosario', 'LPC'),
	('LPC02', 'Jerusalén', 'LPC'),
	('LPC03', 'Mercedes La Ceiba', 'LPC'),
	('LPC04', 'Paraíso de Osorio', 'LPC'),
	('LPC05', 'San Antonio Masahuat', 'LPC'),
	('LPC06', 'San Emigdio', 'LPC'),
	('LPC07', 'San Juan Tepezontes', 'LPC'),
	('LPC08', 'San Luís La Herradura', 'LPC'),
	('LPC09', 'San Miguel Tepezontes', 'LPC'),
	('LPC10', 'San Pedro Nonualco', 'LPC'),
	('LPC11', 'Santa María Ostuma', 'LPC'),
	('LPC12', 'Santiago Nonualco', 'LPC'),
	('LPE01', 'San Juan Nonualco', 'LPE'),
	('LPE02', 'San Rafael Obrajuelo', 'LPE'),
	('LPE03', 'Zacatecoluca', 'LPE'),
-- La Unión
	('LUN01', 'Anamorós', 'LUN'),
	('LUN02', 'Bolivar', 'LUN'),
	('LUN03', 'Concepción de Oriente', 'LUN'),
	('LUN04', 'El Sauce', 'LUN'),
	('LUN05', 'Lislique', 'LUN'),
	('LUN06', 'Nueva Esparta', 'LUN'),
	('LUN07', 'Pasaquina', 'LUN'),
	('LUN08', 'Polorós', 'LUN'),
	('LUN09', 'San José La Fuente', 'LUN'),
	('LUN10', 'Santa Rosa de Lima', 'LUN'),
	('LUS01', 'Conchagua', 'LUS'),
	('LUS02', 'El Carmen', 'LUS'),
	('LUS03', 'Intipucá', 'LUS'),
	('LUS04', 'La Unión', 'LUS'),
	('LUS05', 'Meanguera del Golfo', 'LUS'),
	('LUS06', 'San Alejo', 'LUS'),
	('LUS07', 'Yayantique', 'LUS'),
	('LUS08', 'Yucuaiquín', 'LUS'),
-- Morazán
	('MON01', 'Arambala', 'MON'),
	('MON02', 'Cacaopera', 'MON'),
	('MON03', 'Corinto', 'MON'),
	('MON04', 'El Rosario', 'MON'),
	('MON05', 'Joateca', 'MON'),
	('MON06', 'Jocoaitique', 'MON'),
	('MON07', 'Meanguera', 'MON'),
	('MON08', 'Perquín', 'MON'),
	('MON09', 'San Fernando', 'MON'),
	('MON10', 'San Isidro', 'MON'),
	('MON11', 'Torola', 'MON'),
	('MOS01', 'Chilanga', 'MOS'),
	('MOS02', 'Delicias de Concepción', 'MOS'),
	('MOS03', 'El Divisadero', 'MOS'),
	('MOS04', 'Gualococti', 'MOS'),
	('MOS05', 'Guatajiagua', 'MOS'),
	('MOS06', 'Jocoro', 'MOS'),
	('MOS07', 'Lolotiquillo', 'MOS'),
	('MOS08', 'Osicala', 'MOS'),
	('MOS09', 'San Carlos', 'MOS'),
	('MOS10', 'San Francisco Gotera', 'MOS'),
	('MOS11', 'San Simón', 'MOS'),
	('MOS12', 'Sensembra', 'MOS'),
	('MOS13', 'Sociedad', 'MOS'),
	('MOS14', 'Yamabal', 'MOS'),
	('MOS15', 'Yoloaiquín', 'MOS'),
-- Santa Ana
	('SAN01', 'Masahuat', 'SAN'),
	('SAN02', 'Metapán', 'SAN'),
	('SAN03', 'Santa Rosa Guachipilín', 'SAN'),
	('SAN04', 'Texistepeque', 'SAN'),
	('SAC01', 'Santa Ana', 'SAC'),
	('SAE01', 'Coatepeque', 'SAE'),
	('SAE02', 'El Congo', 'SAE'),
	('SAO01', 'Candelaria de la Frontera', 'SAO'),
	('SAO02', 'Chalchuapa', 'SAO'),
	('SAO03', 'El Porvenir', 'SAO'),
	('SAO04', 'San Antonio Pajonal', 'SAO'),
	('SAO05', 'San Sebastián Salitrillo', 'SAO'),
	('SAO06', 'Santiago de La Frontera', 'SAO'),
-- San Miguel
	('SMN01', 'Ciudad Barrios', 'SMN'),
	('SMN02', 'Sesori', 'SMN'),
	('SMN03', 'Nuevo Edén de San Juan', 'SMN'),
	('SMN04', 'San Gerardo', 'SMN'),
	('SMN05', 'San Luis de La Reina', 'SMN'),
	('SMN06', 'Carolina', 'SMN'),
	('SMN07', 'San Antonio del Mosco', 'SMN'),
	('SMN08', 'Chapeltique', 'SMN'),
	('SMC01', 'San Miguel', 'SMC'),
	('SMC02', 'Comacarán', 'SMC'),
	('SMC03', 'Uluazapa', 'SMC'),
	('SMC04', 'Moncagua', 'SMC'),
	('SMC05', 'Quelepa', 'SMC'),
	('SMC06', 'Chirilagua', 'SMC'),
	('SMO01', 'Chinameca', 'SMO'),
	('SMO02', 'Nueva Guadalupe', 'SMO'),
	('SMO03', 'Lolotique', 'SMO'),
	('SMO04', 'San Jorge', 'SMO'),
	('SMO05', 'San Rafael Oriente', 'SMO'),
	('SMO06', 'El Tránsito', 'SMO'),
-- San Salvador
	('SSN01', 'Aguilares', 'SSN'),
	('SSN02', 'El Paisnal', 'SSN'),
	('SSN03', 'Guazapa', 'SSN'),
	('SSO01', 'Apopa', 'SSO'),
	('SSO02', 'Nejapa', 'SSO'),
	('SSE01', 'Ilopango', 'SSE'),
	('SSE02', 'San Martín', 'SSE'),
	('SSE03', 'Soyapango', 'SSE'),
	('SSE04', 'Tonacatepeque', 'SSE'),
	('SSC01', 'Ayutuxtepeque', 'SSC'),
	('SSC02', 'Mejicanos', 'SSC'),
	('SSC03', 'San Salvador', 'SSC'),
	('SSC04', 'Cuscatancingo', 'SSC'),
	('SSC05', 'Ciudad Delgado', 'SSC'),
	('SSS01', 'Panchimalco', 'SSS'),
	('SSS02', 'Rosario de Mora', 'SSS'),
	('SSS03', 'San Marcos', 'SSS'),
	('SSS04', 'Santo Tomás', 'SSS'),
	('SSS05', 'Santiago Texacuangos', 'SSS'),
-- San Vicente
	('SVN01', 'Apastepeque', 'SVN'),
	('SVN02', 'Santa Clara', 'SVN'),
	('SVN03', 'San Ildefonso', 'SVN'),
	('SVN04', 'San Esteban Catarina', 'SVN'),
	('SVN05', 'San Sebastián', 'SVN'),
	('SVN06', 'San Lorenzo', 'SVN'),
	('SVN07', 'Santo Domingo', 'SVN'),
	('SVS01', 'San Vicente', 'SVS'),
	('SVS02', 'Guadalupe', 'SVS'),
	('SVS03', 'Verapaz', 'SVS'),
	('SVS04', 'Tepetitán', 'SVS'),
	('SVS05', 'Tecoluca', 'SVS'),
	('SVS06', 'San Cayetano Istepeque', 'SVS'),
-- Sonsonate
	('SON01', 'Juayúa', 'SON'),
	('SON02', 'Nahuizalco', 'SON'),
	('SON03', 'Salcoatitán', 'SON'),
	('SON04', 'Santa Catarina Masahuat', 'SON'),
	('SOC01', 'Sonsonate', 'SOC'),
	('SOC02', 'Sonzacate', 'SOC'),
	('SOC03', 'Nahulingo', 'SOC'),
	('SOC04', 'San Antonio del Monte', 'SOC'),
	('SOC05', 'Santo Domingo de Guzmán', 'SOC'),
	('SOE01', 'Izalco', 'SOE'),
	('SOE02', 'Armenia', 'SOE'),
	('SOE03', 'Caluco', 'SOE'),
	('SOE04', 'San Julián', 'SOE'),
	('SOE05', 'Cuisnahuat', 'SOE'),
	('SOE06', 'Santa Isabel Ishuatán', 'SOE'),
	('SOO01', 'Acajutla', 'SOO'),
-- Usulután
	('USN01', 'Santiago de María', 'USN'),
	('USN02', 'Alegría', 'USN'),
	('USN03', 'Berlín', 'USN'),
	('USN04', 'Mercedes Umaña', 'USN'),
	('USN05', 'Jucuapa', 'USN'),
	('USN06', 'El triunfo', 'USN'),
	('USN07', 'Estanzuelas', 'USN'),
	('USN08', 'San Buenaventura', 'USN'),
	('USN09', 'Nueva Granada', 'USN'),
	('USE01', 'Usulután', 'USE'),
	('USE02', 'Jucuarán', 'USE'),
	('USE03', 'San Dionisio', 'USE'),
	('USE04', 'Concepción Batres', 'USE'),
	('USE05', 'Santa María', 'USE'),
	('USE06', 'Ozatlán', 'USE'),
	('USE07', 'Tecapán', 'USE'),
	('USE08', 'Santa Elena', 'USE'),
	('USE09', 'California', 'USE'),
	('USE10', 'Ereguayquín', 'USE'),
	('USO01', 'Jiquilisco', 'USO'),
	('USO02', 'Puerto El Triunfo', 'USO'),
	('USO03', 'San Agustín', 'USO'),
	('USO04', 'San Francisco Javier', 'USO');


insert into direcciones (linea1, linea2, idDistrito, codigoPostal) values
	('Col Madera, Calle 1, #1N', 'Frente al parque', 'SON02', '02311'),  -- 1					
	('Barrio El Caldero, Av 2, #2I', 'Frente al amate', 'SOE01', '02306'), -- 2
	('Res El Cangrejo, Av 3, #3A', 'Frente a la playa', 'SOO01', '02302'), -- 3
	('Barrio El Centro, Av 4, #4S', 'Frente a catedral', 'SOC01', '02301'), -- 4
	('Col La Frontera, Calle 5, #5G', 'Km 10', 'AHS03', '02113'), -- 5
	('Res Buenavista, Calle 6, #6A', 'Contiguo a Alcaldia', 'SAC01', '02201'), -- 6
	('Res Altavista, Av 7, #7S', 'Contiguo al ISSS', 'SSC03', '01101'), -- 7
	('Col Las Margaritas, Pje 20, #2-4', 'Junto a ANDA', 'AHS01', '02114'),-- 8
	('Urb Las Magnolias, Pol 21, #2-6', 'Casa de esquina', 'LLO01', '01115'),-- 9
	('Caserio Florencia, 3era Calle, #5', 'Casa rosada', 'SON01', '02305');-- 10
    
insert into Pacientes values
-- idPaciente, nombrePaciente, apellidoPaciente, generoPaciente, fechaNaPaciente, emailPaciente, duiPaciente, OcupacionPaciente, estadoCivil, idDireccion
    ('1','María José','García Pérez','Femenino','1990-01-01','Mariajose.garcia@email.com','16234857-3','Abogada','Soltera','2'),
    ('2','Juan Carlos','Martínez López','Masculino','1985-05-15','juancarlos.martinez@email.com','12345678-9','Ingeniero','Casado','5'),
	('3','Ana María','González Ramírez','Femenino','1988-09-23','anamaria.gr@email.com','87654321-0','Doctora','Casada','1'),
    ('4','Dolores Antonia','Santos Santos','Femenino','1993-11-04','doloresSS@email.com','02342232-1','Piloto','Soltera','4'),
    ('5','Pedro Antonio','Fernández Díaz','Masculino','1983-06-07','pedrofd@email.com','98765432-0','Arquitecto','Soltero','6'),
    ('6','Marta Nancy','Fernandez Duran','Femenino','1990-03-30','2mFD@email.com','68565535-1','Contador','Casada','8');
    
insert into cargos values
-- idTipoCargo, TipoCargo
	('1','Doctor'),
	('2','Secretaria'),
    ('3','Conductor'),
    ('4','Cocinera'),
    ('5','Vigilancia'),
	('6','Ordenanza'),
    ('7', 'Enfermero'),
    ('8', 'Laboratorista'),
    ('9', 'Contador'),
    ('10','Recursos Humanos'),
    ('11', 'Administrador del Sistema');

insert into Empleados values
-- idEmpleado, nombresEmpleado, apellidosEmpleado, emailEmpleado,  telefonoEmpleado, fechaContratacion, DuiEmpleado, idDireccion, idTipoCargo
	('1','Juan Carlos', 'Rodas Gonzalez', 'JuanCarlos@email.com','6532-4526', '1995-01-01','12345678-0','1','1'),           -- doctor
    ('2','Carlos José', 'Martínez López', 'carlos@email.com', '9632-7412', '1993-04-15', '23456789-0', '2', '2'),           -- secretario
    ('3','Pedro Manuel', 'Orellana Mendez', 'juanmanuel@email.com', '1478-8523', '1985-06-20', '12345678-9', '3', '3'),      -- doctor
	('4','Diego Franciso', 'Sanchez Castro','DiegoFrancisco@email.com', '7895-5698', '1990-02-02', '13456524-1','4','4'),    -- vigilancia
	('5','Raul Edgardo', 'Del Valle Garcia', 'RaulEdgardo@email.com', '6598-2548', '1980-03-03', '19624716-2','5','5'),     -- conductor
	('6','Mary Carmen', 'Perez de Hernandez', 'MaryCarmen@email.com',  '7965-2526', '1985-04-04', '67825193-3','6','6'),       -- doctor
    ('7','María Fernanda', 'Gómez Martínez', 'mariafernanda@email.com', '3698-1478', '1991-12-10', '98765432-1', '8', '7'),      -- Laboratorista
    ('8','Ana Gabriela', 'Pérez Rodríguez', 'anagabriela@email.com', '6112-5421', '1994-08-05', '87654321-0', '9', '8'),         -- ordenanza
    ('9','Diego Alex', 'Castillo Pérez', 'alexPerez12@email.com', '6576-7728', '1989-10-13', '05553329-6', '10', '9'),         -- enfermero
    ('10','Angela Maria', 'Escobar Torres', 'escobarAmaria@email.com', '7576-3428', '1996-02-01', '04213589-5', '7', '10'),     -- enfermero
    ('11','Sabo', 'teur', 'saboteur1323@gmail.com','7556-1273','2002-02-01','04213589-5', '7','11');
    
insert into doctores values
-- idDoctor, idEmpleado, JVPM
    ('1', '1', '1234567'),
    ('2', '3', '2345678'),
    ('3', '6', '3456789');
    
insert into Especialidades  values
-- idEspecialidad, nombreEspecialidad
    ('1','Medicina Interna'),
	('2','Cirugía General'),
    ('3','Pediatría'),
    ('4','Obstetricia y Ginecología'),
    ('5','Cardiología'),
    ('6','Neurología'),
    ('7','Dermatología'),
    ('8','Psiquiatría'),
    ('9','Oftalmología'),
    ('10','Otorrinolaringología');

insert into tipoCitas  values
-- idTipoCita, tipoCita
   ('1','Consulta General'),
   ('2','Consulta Especializada'),
   ('3','Chequeo Médico Anual'),
   ('4','Consulta de Emergencia'),
   ('5','Procedimiento Médico'),
   ('6','Consulta Preoperatoria'),
   ('7','Consulta Postoperatoria'),
   ('8','Consulta de Seguimiento'),
   ('9','Vacunación');

insert into citas  values
-- idCita, fechaHoraCita, idPaciente, idTipoCita
  ('1','2024-04-10 10:00', '1', '1'),
  ('2','2024-04-11 14:30', '2', '2'),
  ('3','2024-04-12 09:15', '3', '3'),
  ('4','2024-04-13 11:45', '4', '4'),
  ('5','2024-04-14 08:00', '5', '5');

insert into consultorios  values
-- idConsultorio, nombreConsultorio, seccionConsultorio, pisoConsultorio
  ('1','Consultorio A', 'Sección A', 'Primer Piso'),
  ('2','Consultorio B', 'Sección B', 'Segundo Piso'),
  ('3','Consultorio C', 'Sección C', 'Tercer Piso'),
  ('4','Consultorio D', 'Sección D', 'Cuarto Piso'),
  ('5','Consultorio E', 'Sección E', 'Quinto Piso');
  
insert into TiposConsultas  values
-- idTipoConsulta, tipoConsultas, precioConsulta
  ('1','Consulta General', '5.00'),
  ('2','Consulta Especializada', '15.00'),
  ('3','Chequeo Médico Anual', '8.00'),
  ('4','Consulta de Emergencia', '50.00'),
  ('5','Procedimiento Médico', '100.00'),
  ('6','Consulta Preoperatoria', '20.00'),
  ('7','Consulta Postoperatoria', '20.00'),
  ('8','Consulta de Seguimiento', '8.00'),
  ('9','Vacunación', '5.00');

insert into ExamenesFisicos  values
-- idExamenFisico, pulso, presionArterial, temperatura, estadoPiel, comportamiento, inspeccionOjos, inspeccionOidos, inspeccionCabeza, inspeccionAbdomen, inspeccionExtremidades, funcionSensorial 
  ('1','75', '120/80', '37.2', 'Normal', 'Alerta', 'Sin anormalidades', 'Sin anormalidades', 'Normal', 'Suave', 'Normal', 'Normal'),
  ('2','80', '130/85', '36.9', 'Normal', 'Tranquilo', 'Sin anormalidades', 'Sin anormalidades', 'Normal', 'Suave', 'Normal', 'Normal'),
  ('3','72', '118/78', '37.0', 'Normal', 'Alerta', 'Sin anormalidades', 'Sin anormalidades', 'Normal', 'Suave', 'Normal', 'Normal'),
  ('4','78', '122/82', '37.1', 'Normal', 'Tranquilo', 'Sin anormalidades', 'Sin anormalidades', 'Normal', 'Suave', 'Normal', 'Normal'),
  ('5','85', '126/80', '36.8', 'Normal', 'Alerta', 'Sin anormalidades', 'Sin anormalidades', 'Normal', 'Suave', 'Normal', 'Normal');

insert into Recetas  values
-- idrecetas, fechaReceta, duracionReceta
  ('1','2024-04-10', 7),
  ('2','2024-04-11', 10),
  ('3','2024-04-12', 4),
  ('4','2024-04-13', 5),
  ('5','2024-04-14', 1);
  
  
insert into Expediente  values
-- idExpediente, padecimiento, alergias, tratamiento, notasAdicionales, idPaciente
  ('1','Hipertensión arterial', 'Ninguna', 'Losartán 50mg diario', 'N/A', 1),
  ('2','Diabetes tipo 2', 'Penicilina', 'Metformina 1000mg diario', 'N/A', 2),
  ('3','Asma', 'Aspirina', 'Salbutamol inhalador según necesidad', 'N/A', 3),
  ('4','Sin padecimientos conocidos', 'Ninguna', 'N/A', 'N/A', 4),
  ('5','Dolor de espalda crónico', 'Ninguna', 'Fisioterapia', 'N/A', 5);
  
insert into Consultas  values
-- idConsulta, diagnosticoConsulta, estadoConsulta, idTipoConsultas, idExamenFisico, idDoctor, idRecetas, idCita, idConsultorio, idExpediente
  ('1','Dolor de cabeza', 'finalizada', 1 , 1, 1, 1, 1, 1, 1),
  ('2','Dolor abdominal', 'pendiente', 2 , 2, 2, 2, 2, 2, 2),
  ('3','Fiebre', 'cancelada', 3 , 3, 3, 3, 3, 3, 3),
  ('4','Problemas respiratorios', 'finalizada', 4, 4, 1, 4, 4, 4, 4),
  ('5','Examen de rutina', 'pendiente', 5, 5, 2, 5, 5, 5, 5);

insert into TiposProcedimientos  values
-- idTipoProcedimiento, tipoProcedimiento, descripcionProcedimiento
  ('1','Extracción de sangre', 'Obtención de muestra de sangre.'),
  ('2','Colonoscopia', 'Examen del colon y recto.'),
  ('3','Cirugía de cataratas', 'Extracción de cataratas del ojo.'),
  ('4','Artroscopia de rodilla', 'Examen y tratamiento de la rodilla.'),
  ('5','Biopsia de piel', 'Extracción de muestra de piel para diagnóstico.');
  
insert into  ProcedimientosMedicos  values
-- idProcedimiento, fechaHoraProcedimiento, duracion, idTipoProcedimiento, idConsulta
  ('1','2024-04-10 09:00', '01:30', 1, 1),
  ('2','2024-04-11 11:30', '01:15', 2, 2),
  ('3','2024-04-12 14:00', '02:00', 3, 3),
  ('4','2024-04-13 10:45', '00:45', 4, 4),
  ('5','2024-04-14 13:30', '01:00', 5, 5);
  
insert into DoctorEspecialidades  values
-- idDoctor,idEspecialidad
  (1, 1),
  (2, 2),
  (3, 3),
  (1, 4),
  (2, 5);
  
insert into Laboratorista  values
-- idLaboratorista, idEmpleados, JVPLC
  ('1', 7, 123456);

  
insert into EspecialidadLaboratorista  values
-- idLaboratorista, idEspecialidad 
  (1, 1);
  
insert into TipoExamenes  values
-- idTipoExamen, TipoExamen, descripcionExamen
  ('1','Análisis de sangre', 'Evaluación de la sangre.'),
  ('2','Radiografía de tórax', 'Visión de los órganos del tórax.'),
  ('3','Ecografía abdominal', 'Visualización de órganos abdominales.'),
  ('4','Resonancia magnética cerebral', 'Detalles del cerebro.'),
  ('5','Colonoscopia', 'Examen del colon y recto.');
  
insert into Examenes  values
--   idExamen, fechaHoraExamen, muestraBiologica, unidadesMedida, idTipoExamen, idLaboratorista, idCita 
    ('1','2024-04-10 09:00:00', 'Sangre', 'ml', 1, 1, 1),
    ('2','2024-04-11 10:30:00', 'Orina', 'ml', 2, 1, 2),
    ('3','2024-04-12 11:45:00', 'Tejido', 'mg', 3, 1, 3),
    ('4','2024-04-13 13:00:00', 'Líquido cefalorraquídeo', 'ml', 4, 1, 4),
    ('5','2024-04-14 14:15:00', 'Heces', 'g', 5, 1, 5);
    
insert into TiposMedicamentos  values
-- idTipoMedicamento, tipoMedicamento
   ('1','Analgésico'),
   ('2','Antiinflamatorio'),
   ('3','Antipirético'),
   ('4','Antidepresivo');

insert into Laboratorios  values
-- idLaboratorio, nombreLaboratorio
	(1, 'Laboratorio 1');

insert into Medicamentos  values
-- idMedicamentos, nombreMedicamento, formulaActiva, idTipoMedicamento, idLaboratorio 
   ('1','Paracetamol', 'Paracetamol', 1, 1),
   ('2','Amoxicilina', 'Amoxicilina', 2, 1),
   ('3','Ibuprofeno', 'Ibuprofeno', 3, 1),
   ('4','Acetaminofén', 'Acetaminofén', 4, 1),
   ('5','Omeprazol', 'Omeprazol', 1, 1);
   
insert into TipoEquipoMedico  values
-- idTipoEquipoMedico, tipoEquipoMedico
   ('1','Tomógrafo'),
   ('2','Resonancia Magnética'),
   ('3','Ecógrafo'),
   ('4','Monitor de Signos Vitales'),
   ('5','Desfibrilador');

insert into Proveedores  values
-- idproveedores, nombre , direccion, telefono
   ('1','Proveedor A', 'Calle Principal 123', '12345678'),
   ('2','Proveedor B', 'Avenida Central 456', '23456789'),
   ('3','Proveedor C', 'Calle Secundaria 789', '34567890'),
   ('4','Proveedor D', 'Avenida Norte 321', '45678901'),
   ('5','Proveedor E', 'Calle Este 654', '56789012');
   
insert into Inventario  values
-- idInventario, bodega, seccion, pasillo, estante
   ('1','Bodega Principal', 'Sección A', 'Pasillo 1', 'Estante 1'),
   ('2','Bodega Secundaria', 'Sección B', 'Pasillo 2', 'Estante 2'),
   ('3','Bodega de Almacenamiento', 'Sección C', 'Pasillo 3', 'Estante 3'),
   ('4','Bodega de Suministros', 'Sección D', 'Pasillo 4', 'Estante 4'),
   ('5','Bodega de Emergencia', 'Sección E', 'Pasillo 5', 'Estante 5');
   
insert into EquiposMedicos values
-- idEquipoMedico, nombreEquipo, marcaEquipo, fechaAdquision, idTipoEquipoMedico, idProveedores, idInventario, cantidad
  ('1','Tomógrafo 3D', 'XYZ Medical', '2024-01-15', 1, 1, 1, 1),
  ('2','Resonancia Magnética', 'ABC Healthcare', '2023-09-20', 2, 2, 2, 1),
  ('3','Ecógrafo Portátil', 'MedTech Inc.', '2024-03-05', 3, 3, 3, 5),
  ('4','Monitor de Signos Vitales', 'VitalTech', '2023-11-10', 4, 4, 4, 15),
  ('5','Desfibrilador Automático', 'Rescue Medical', '2024-02-28', 5, 5, 5, 10);

insert into MedicamentosRecetados  values
-- idMedicamentos,idRecetas,dosis
  (1, 1, 'Tomar 1 tableta cada 8 horas con alimentos'),
  (2, 2, 'Tomar 1 cápsula cada 12 horas con agua'),
  (3, 3, 'Aplicar una capa delgada sobre la piel afectada cada noche'),
  (4, 4, 'Tomar 2 tabletas cada 6 horas después de las comidas'),
  (5, 5, 'Tomar 1 tableta al día antes de dormir');
  
insert into  Enfermeros  values
-- idEnfermeros, idEmpleado, JVPE
  (1, 9, 123456),
  (2, 10, 234567);
  
insert into PersonalProcedimientos  values
-- idPersonalProcedimientos, idEnfermero, idDoctor, idProcedimiento
  (1, 1, 1, 1),
  (2, 2, 2, 2),
  (3, 1, 3, 3),
  (4, 2, 2, 4),
  (5, 1, 2, 5);
  
insert into TiposPago (tipoPago) values
('Efectivo'),
('Tarjeta de debito'),
('Tarjeta de credito'); 

insert into FacturaConsulta  values
-- idFacturaConsulta, idConsulta, idTiPoPago, idPaciente, fecha, total
  ('1',1, 1, 1, '2024-04-01', '5.00'),
  ('2',2, 2, 2,  '2024-04-02', '15.00'),
  ('3',3, 3, 3,'2024-04-03', '8.00'),
  ('4',4, 4, 1, '2024-04-04', '100.00'),
  ('5',5, 5, 3, '2024-04-05', '20.00');
  
insert into FacturasExamenes  values 
-- idFacturaExamenes, idPaciente, idTiPoPago, fechaFE, totalFE
  ('1',1, 1, '2024-04-01 08:30:00', '5.00'),
  ('2',2, 2, '2024-04-02 09:45:00', '15.00'),
  ('3',3, 3, '2024-04-03 10:15:00', '8.00'),
  ('4',4, 1,  '2024-04-04 11:20:00', '100.00'),
  ('5',5, 2, '2024-04-05 12:00:00', '20.00');
  
insert into FacturaProcedimientos  values
-- idFacturaProcedimientos, idPaciente, idTiPoPago, fechaFP, totalFp
  ('1',1, 1, '2024-04-01 08:30:00', '5.00'),
  ('2',2, 2, '2024-04-02 09:45:00', '15.00'),
  ('3',3, 3, '2024-04-03 10:15:00', '8.00'),
  ('4',4, 1, '2024-04-04 11:20:00', '100.00'),
  ('5',5, 2,'2024-04-05 12:00:00', '20.00');

insert into DetallesFacturaExamen  values
-- idDetallesFacturaExamen, precioUnitario, idFacturaProcedimientos, idProcedimiento
  ('1','5.00', 1, 1),
  ('2','5.00', 2, 2),
  ('3','5.00', 3, 3),
  ('4','5.00', 4, 4),
  ('5','5.00', 5, 5);

insert into DetallesFacturaProcedimientos  values
--  idDetallesFacturaProcedimientos, precioUnitario, idFacturaProcedimientos, idProcedimiento 
  ('1','5.00','5','5'),
  ('2','5.00','5','5'),
  ('3','5.00','5','5'),
  ('4','5.00','5','5'),
  ('5','5.00','5','5');
  
insert into InsumosMedicos  values
-- idInsumosMedicos, idMedicametos, idEquipoMedico, idProcedimiento,
 (1, 1, 1, 1),
 (2, 2, 2, 2),
 (3, 3, 3, 3),
 (4, 4, 4, 4),
 (5, 5, 5, 5);
 
 
 insert into roles (rol) values
	('Doctor'),
    ('Secretaria'),
    ('Cocinera'),
    ('Enfermero'),
    ('Laboratorista'),
    ('Contador'),
    ('Recursos Humanos'),
    ('SysAdmin');
    
insert into opciones(opcion) values
('Gestionar departamentos'),
('Gestionar municipios'),
('Gestionar distritos'),
('Gestionar direcciones'),
('Gestionar pacientes'),
('Gestionar cargos'),
('Gestionar empleados'),
('Gestionar roles'),
('Gestionar opciones'),
('Gestionar asignacionRolesOpciones'),
('Gestionar usuarios'),
('Gestionar doctores'),
('Gestionar especialidades'),
('Gestionar tiposCitas'),
('Gestionar citas'),
('Gestionar consultorios'),
('Gestionar tiposConsultas'),
('Gestionar examenesFisicos'),
('Gestionar recetas'),
('Gestionar expediente'),
('Gestionar consultas'),
('Gestionar tiposProcedimientos'),
('Gestionar procedimientosMedicos'),
('Gestionar doctorEspecialidades'),
('Gestionar laboratorista'),
('Gestionar especialidadesLaboratorista'),
('Gestionar tiposExamenes'),
('Gestionar examenes'),
('Gestionar tiposMedicamentos'),
('Gestionar laboratorios'),
('Gestionar medicamentos'),
('Gestionar tiposEquiposMedicos'),
('Gestionar proveedores'),
('Gestionar inventario'),
('Gestionar equiposMedicos'),
('Gestionar medicamentosRecetados'),
('Gestionar enfermeros'),
('Gestionar personalProcedimientos'),
('Gestionar tiposPago'),
('Gestionar facturasConsultas'),
('Gestionar facturasExamenes'),
('Gestionar facturasProcedimientos'),
('Gestionar detallesFacturasExamenes'),
('Gestionar detallesFacturasProcedimientos'),
('Gestionar insumosMedicos');

insert into asignacionRolesOpciones (idRol, idOpcion) values
	-- Sys
	('8','1'),('8','2'),('8','3'),('8','4'),('8','5'),('8','6'),('8','7'),('8','8'),('8','9'),('8','10'),
    ('8','11'),('8','12'),('8','13'),('8','14'),('8','15'),('8','16'),('8','17'),('8','18'),('8','19'),('8','20'),
    ('8','21'),('8','22'),('8','23'),('8','24'),('8','25'),('8','26'),('8','27'),('8','28'),('8','29'),('8','30'),
    ('8','31'),('8','32'),('8','33'),('8','34'),('8','35'),('8','36'),('8','37'),('8','38'),('8','39'),('8','40'),
    ('8','41'),('8','42'),('8','43'),('8','44'),('8','45'),

	-- Doctor
	('1', '1'),('1', '2'), ('1', '3'),	('1', '4'),	('1', '5'),
	('1', '14'),('1', '15'),('1', '20'),('1', '27'),('1', '28'),
	('1', '38'),('1', '37'),('1', '23'),('1', '21'),('1', '18'),
    ('1', '30'),('1', '29'),('1', '31'),('1', '19'),
    
	-- cocinera
	('4', '20'), ('4', '5'), ('4','21'),
    
	-- Secretaria 2
	(2,1), (2,2), (2,3), (2,4), (2,5), (2,6), (2,7), (2,12), (2,14), (2,15), (2,20), (2,21), 
	(2,27), (2,28), (2,30), (2,32), (2,33), (2,35), (2,34), (2,37), (2,39), (2,40), (2,41), 
	(2,42), (2,43), (2,44),

	-- Contador  6
	(6,27), (6,28), (6,32), (6,33), (6,34), (6,35), (6,36), (6,39), (6,40), (6,41), (6,42), 
	(6,43), (6,44),
	
    -- enfermero: 
    ('4','5'),	
    ('4','20'),	
    ('4','21'),	
    ('4','17'),	
    ('4','31'),	
    -- laboratorista
    ('5','5'),	
    ('5','20'),	
    ('5','27'), 
    ('5','28'),	
    -- Recursos humanos:
    ('7','1'),
    ('7','2'),
    ('7','3'),
    ('7','4'),
    ('7','7'),
    ('7','12'),
    ('7','25');
    
insert into Usuarios(usuario, contraseña, idRol, idEmpleado) values
	('user1', '123456789',1,1),
	('user2','123456789',2,2),
	('user3', '123456789',3,4),
	('user4','123456789',4,7),
	('user5', '123456789',5,8),
	('user6','123456789',6,9),
	('user7', '123456789',7,10),
	('user8', '123456789',8,11);
 
 -- consultas
 
 -- Realizar 2 consultas, que lleven al menos, un campo definido y WHERE.
-- 1	-- select idEnfermeros, idEmpleado, JVPE from clinica.Enfermeros
	-- where JVPE = '234567';
 
-- 2	-- select idDoctor, idEmpleados, JVPM from clinica.doctores
	-- where JVPM = '3456789';
    
-- Realizar 2 actualizaciones que lleven al menos, un campo definido y WHERE.

-- 1	-- UPDATE paciente
		-- SET nombrePaciente = 'Lorenzo Gustavo', apellidoPaciente = 'Martinez Gutierrez'
        -- WHERE duiPaciente = '98765432-0';
-- 2
		-- UPDATE paciente
		-- SET nombrePaciente = 'Kristy Camila', apellidoPaciente = 'Gonzalez Rivas'
        -- WHERE duiPaciente = '16234857-3';
        
-- Realizar 2 eliminaciones que lleven WHERE.
 -- 1 -- DELETE FROM clinica.empleados WHERE nombreEmpleado = 'Pedro Manuel';
 -- 2 -- DELETE FROM clinica.empleados where duiEmpleado = '87654321-0';