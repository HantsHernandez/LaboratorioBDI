-- DML BASE DE DATOS CLINICA

use clinica;

SET FOREIGN_KEY_CHECKS  = 0;

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
	('Caserio Florencia, 3era Calle, #5', 'Casa rosada', 'SON01', '02305'),-- 10
    ('Col Las Ranas, 5ta calle, #34', null, 'USO04', '87871'), -- 11
    ('Res El Mango, Apt #45', null, 'SVS01', '56482'), -- 12
    ('Urb Amesterdam, Blvd Holanda, casa #89', null, 'MOS05', '03425'), -- 13
    ('Col Vista Del Mar, Calle Alta Mira, #67', null,'SMN08','45647'), -- 14
    ('Res Machu Picchu, Apt 345', null, 'LUN05', '67432'), -- 15
    ('Col Madera, Calle 13, #121N', 'Frente al fereteria', 'SON02', '02311'),  -- 16					
	('Barrio El Caldero, Av 6, #25I', 'Frente escuela', 'SOE01', '02305'), -- 17
	('Res El Cangrejo, Blvd Vaquero, #30A', 'Frente a estacion policia', 'SOO01', '02302'), -- 18
	('Barrio El Centro, Calle 44, #78', 'Atras de catedral', 'SOC01', '02301'), -- 19
	('Col La Frontera, Calle 56, #54G', 'Frente taller mecanico', 'AHS03', '02113'), -- 20
	('Res Buenavista, Calle 6, #7A', 'Contiguo a Alcaldia', 'SAC01', '02201'), -- 21
	('Res Altavista, Av 7, #10S', 'Contiguo al ISSS', 'SSC03', '01101'), -- 22
    ('Col El Bosque, Calle A, #1', 'Junto al parque', 'LLC01', '04201'), -- 23
	('Barrio El Centro, Av 8, #12', 'Cerca del mercado', 'CHS01', '06101'), -- 24
	('Residencial Las Palmas, Calle B, #3', 'Frente a la piscina', 'SSN01', '01123'), -- 25
	('Colonia La Montaña, Calle C, #45', 'Al lado del campo de fútbol', 'LLT03', '04789'), -- 26
	('Residencial Los Pinos, Av 10, #25', 'Cerca de la plaza central', 'CAE01', '08123'), -- 27
	('Barrio San José, Calle D, #7', 'Frente a la escuela', 'SAN02', '04123'), -- 28
	('Colonia Los Almendros, Av 15, #30', 'Al lado del supermercado', 'SMC01', '05123'), -- 29
	('Barrio El Carmen, Calle E, #9', 'Cerca del centro de salud', 'USE01', '07123'), -- 30
	('Colonia La Primavera, Calle F, #18', 'Junto al parque infantil', 'SSO01', '02123'), -- 31
	('Residencial Las Flores, Av 20, #5', 'Frente a la iglesia', 'CHN01', '07123'), -- 32
    ('Colonia Los Robles, Calle G, #12', 'Cerca del polideportivo', 'MOS01', '03123'), -- 33
    ('Barrio El Rosario, Calle H, #23', 'Junto a la estación de bomberos', 'AHC01', '08123'), -- 34
    ('Residencial La Ceiba, Av 25, #45', 'Frente al parque acuático', 'CUS01', '09123'), -- 35
    ('Colonia Los Cedros, Calle I, #8', 'Cerca del centro comercial', 'SAO01', '02123'), -- 36
    ('Barrio San Juan, Av 30, #12', 'Al lado del campo de baloncesto', 'SVN01', '06123'); -- 37
    
insert into pacientes values
-- idPaciente, nombrePaciente, apellidoPaciente, generoPaciente, fechaNaPaciente, emailPaciente, duiPaciente, OcupacionPaciente, estadoCivil, idDireccion
    ('1','María José','García Pérez','Femenino','1990-01-01','Mariajose.garcia@email.com','16234857-3','Abogada','Soltera','26'),
    ('2','Juan Carlos','Martínez López','Masculino','1985-05-15','juancarlos.martinez@email.com','12345678-9','Ingeniero','Casado','27'),
	('3','Ana María','González Ramírez','Femenino','1988-09-23','anamaria.gr@email.com','87654321-0','Doctora','Casada','28'),
    ('4','Dolores Antonia','Santos Santos','Femenino','1993-11-04','doloresSS@email.com','02342232-1','Piloto','Soltera','29'),
    ('5','Pedro Antonio','Fernández Díaz','Masculino','1983-06-07','pedrofd@email.com','98765432-0','Arquitecto','Soltero','30'),
    ('6','Marta Nancy','Fernandez Duran','Femenino','1990-03-30','2mFD@email.com','68565535-1','Contador','Casada','31'),
    ('7','Henry Moises','Quan Cruise','Masculino','2001-01-01','hmqc@email.com','09834562-0','Atleta','Casado','32'),
    ('8','Cedric Benjamin','Walsh Bonn','Masculino','1992-04-01','cbwb@email.com','23459876-3','Profesor','Soltero','33'),
    ('9','Alice Milly','Cooper White','Femenino','1999-01-30','amcw@email.com','66775444-7','Policia','Soltera','34'),
    ('10','Bob Joshua','Lasso','Masculino','1993-08-14','bjl@email.com','92111672-3','Biologo','Casado','35');
    
    
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
    ('9','Contador'),
    ('10', 'Administrador de Sistemas'),
    ('11', 'Recusrsos Humanos'),
    ('12', 'Recepcionista'),
    ('13', 'Administrativo');

insert into empleados values
-- idEmpleado, nombresEmpleado, apellidosEmpleado, emailEmpleado,  telefonoEmpleado, fechaContratacion, DuiEmpleado, idDireccion, idTipoCargo
	('1','Juan Carlos', 'Rodas Gonzalez', 'juancarlos@email.com','6532-4526', '1995-01-01','12345678-0','1','1'),           -- doctor
    ('2','Carlos José', 'Martínez López', 'carlos@email.com', '9632-7412', '1993-04-15', '23456789-0', '2', '2'),           -- secretario
    ('3','Pedro Manuel', 'Orellana Mendez', 'juanmanuel@email.com', '1478-8523', '1985-06-20', '12345678-9', '3', '1'),      -- doctor
	('4','Diego Franciso', 'Sanchez Castro','diegofrancisco@email.com', '7895-5698', '1990-02-02', '13456524-1','4','5'),    -- vigilancia
	('5','Raul Edgardo', 'Del Valle Garcia', 'rauledgardo@email.com', '6598-2548', '1980-03-03', '19624716-2','5','3'),     -- conductor
	('6','Mary Carmen', 'Perez de Hernandez', 'marycarmen@email.com',  '7965-2526', '1985-04-04', '67825193-3','6','1'),       -- doctor
    ('7','María Fernanda', 'Gómez Martínez', 'mariafernanda@email.com', '3698-1478', '1991-12-10', '98765432-1', '8', '8'),      -- Laboratorista
    ('8','Ana Gabriela', 'Pérez Rodríguez', 'anagabriela@email.com', '6112-5421', '1994-08-05', '87654321-0', '9', '6'),         -- ordenanza
    ('9','Diego Alex', 'Castillo Pérez', 'alexperez12@email.com', '6576-7728', '1989-10-13', '05553329-6', '10', '7'),         -- enfermero
    ('10','Angela Maria', 'Escobar Torres', 'escobarAmaria@email.com', '7576-3428', '1996-02-01', '04213589-5', '7', '7'),     -- enfermero
    ('11','Vivian Aurora','Gildan Perez','vagp@email.com','8790-0005','2000-03-24', '67842234-9','9','11'),   -- Recursos Humanos
    ('12','Lilian Diana','Smith Contreras','ldsc@email.com','4565-7780','1990-12-24','44456756-2','12','8'),   -- Laboratorista
    ('13','Liam Chris','Doe Stevens','lchds@email.com','6766-4500','1997-06-06','55678898-4','13','9'),   -- contador
    ('14','Susan Margaret','Valdez','smv@email.com','7884-3256','2000-08-11','33334576-1','14','10'),    -- Sys Admin
    ('15','Jaimie Jimmy','Dutton','jj2d@email.com','6892-2367','1989-10-23','55569823-5','15','1'),      -- Doc
    ('16','Scott Jona','Miller Brown','sjmb@email.com','7776-9012','1984-11-01','88772213-0','16','1'),    -- Doc
    ('17','Mitch Dave','Planko Lockwood','mdpl@email.com','6565-2333','1990-07-28','99917231-8','17','1'),  -- Doc
    ('18','Logan Hugh','Acosta','lha@email.com','8823-4512','1996-02-29','89885643-3','18','1'),          -- Doc
    ('19','Amanda Stacy','Barnes McKay','asbm@email.com','6534-7612','1991-09-21','99888121-4','19','1'),   -- Doc
    ('20','Mathew Alexander','Rojas Dunn','mard@email.com','4323-3498','1995-07-27','88881234-4','20','11'),  -- Recursos Humanos
    ('21','Juliet Margaret','Lewis Price','jmlp@email.com','9809-2322','1980-05-05','00991234-1','21','4'),  -- cocinera
    ('22','Matt Daniel','Rodriguez','mdj@email.com','7111-1271','1978-08-20','00999999-1','22','6'),		-- ordenanza
    ('23','Edgar Eric','Adams Hakuna','2eah@email.com','9000-9241','1979-10-04','01287892-3','23','7'),		-- enfermero
    ('24','Michael Walter','Torres Matata','mwtm@email.com','8834-1204','1974-12-12','76117420-1','24','8'),	-- Laboratorista
    ('25','Kim Julie','Graves Lee','kjgl@email.com','5198-0429','1990-02-11','45119893-8','25','2');			-- secretaria
    
    
insert into doctores values
-- idDoctor, idEmpleado, JVPM, idEspecialidad
    ('1', '1', '1234567', '1'),
    ('2', '3', '2345678', '2'),
    ('3', '6', '3456789', '3'),
    ('4','15','6674358', '4'),
    ('5','16','1541239', '5'),
    ('6','17','8793451', '10'),
    ('7','18','1237891', '7'),
    ('8','19','3450989', '9');
    
insert into especialidades  values
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
    ('10','Otorrinolaringología'),
    ('11','Analista de Laboratorio Clínico'),
    ('12','Analista de Laboratorio Forense');

insert into tiposCitas  values
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
  ('5','2024-04-14 08:00', '5', '5'),
  ('6','2024-05-01 10:00','6','1'),
  ('7','2024-05-10 13:00','7','9'),
  ('8','2024-05-15 07:00','8','6'),
  ('9','2024-06-21 14:45','9','7'),
  ('10','2024-09-30 15:35','10','5');

insert into consultorios  values
-- idConsultorio, nombreConsultorio, seccionConsultorio, pisoConsultorio
  ('1','Consultorio A', 'Sección A', 'Primer Piso'),
  ('2','Consultorio B', 'Sección B', 'Segundo Piso'),
  ('3','Consultorio C', 'Sección C', 'Tercer Piso'),
  ('4','Consultorio D', 'Sección D', 'Cuarto Piso'),
  ('5','Consultorio E', 'Sección E', 'Quinto Piso');
  
insert into tiposConsultas  values
-- idTipoConsulta, tipoConsultas, precioConsulta
  ('1','Consulta General','5.00'),
  ('2','Consulta Especializada','15.00'),
  ('3','Chequeo Médico Anual','8.00'),
  ('4','Consulta de Emergencia','50.00'),
  ('5','Procedimiento Médico','100.00'),
  ('6','Consulta Preoperatoria','20.00'),
  ('7','Consulta Postoperatoria','20.00'),
  ('8','Consulta de Seguimiento','8.00'),
  ('9','Vacunación','5.00');

insert into examenesFisicos  values
-- idExamenFisico, pulso, presionArterial, temperatura, estadoPiel, comportamiento, inspeccionOjos, inspeccionOidos, inspeccionCabeza, inspeccionAbdomen, inspeccionExtremidades, funcionSensorial 
  ('1','75 bpm','120/80 mmHg','37.2°C','Normal','Alerta','Sin anormalidades','Sin anormalidades','Normal','Suave','Normal','Normal'),
  ('2','80 bpm','130/85 mmHg','36.9°C','Normal','Tranquilo','Sin anormalidades','Sin anormalidades','Normal','Suave','Normal','Normal'),
  ('3','72 bpm','118/78 mmHg','37.0°C','Normal','Alerta','Sin anormalidades','Sin anormalidades','Normal','Suave','Normal','Normal'),
  ('4','78 bpm','122/82 mmHg','37.1°C','Normal','Tranquilo','Sin anormalidades','Sin anormalidades','Normal','Suave','Normal','Normal'),
  ('5','85 bpm','126/80 mmHg','36.8°C','Normal','Alerta','Sin anormalidades','Sin anormalidades','Normal','Suave','Normal','Normal'),
  ('6','80 bpm','120/80 mmHg','37.5°C','Normal','Normal','Sin alteraciones','Audición normal','Cabeza simétrica','Sin distensión abdominal','Sin edema en extremidades','Normal'),
  ('7','88 bpm','120/80 mmHg','37.3°C','Normal','Tranquilo','Pupilas normales y reactivas','Audición normal','Cabeza simétrica','Ruidos intestinales presentes','Sin edema en extremidades','Normal'),
  ('8','82 bpm','130/85 mmHg','36.9°C','Normal','Inquieto','Pupilas isocóricas y reactivas','Audición normal','Cabeza simétrica','Sin dolor a la palpación','Sin edema en extremidades','Normal'),
  ('9','90 bpm','125/80 mmHg','37.1°C','Normal','Activo','Pupilas normales y reactivas','Audición normal','Cabeza simétrica','Ruidos intestinales presentes','Sin edema en extremidades','Normal'),
  ('10','95 bpm','115/75 mmHg','36.7°C','Normal','Tranquilo','Pupilas iguales y reactivas','Audición normal','Cabeza simétrica','Sin distensión abdominal','Sin edema en extremidades','Normal'),
  ('11','80 bpm','120/80 mmHg','37.0°C','Normal','Inquieto','Sin alteraciones', 'Audición normal','Cabeza simétrica','Sin dolor a la palpación','Sin edema en extremidades','Normal');

insert into recetas (idExpediente, fechaReceta, duracionReceta) values
-- idExpediente, fechaReceta, duracionReceta
  ('1','2024-04-10', '7'),
  ('2','2024-04-11', '10'),
  ('3','2024-04-12', '4'),
  ('4','2024-04-13', '5'),
  ('5','2024-04-14', '1'),
  ('6','2024-04-29', '3'),
  ('7','2024-04-30', '7'),
  ('8','2024-05-01', '14'),
  ('9','2024-05-02', '10'),
  ('10','2024-05-03', '5');

  
  
insert into expediente (idReceta, padecimiento, alergia, tratamiento, notaAdicional, idPaciente)  values
-- idReceta, padecimiento, alergias, tratamiento, notasAdicionales, idPaciente
  ('1','Hipertensión arterial','Ninguna','Losartán 50mg diario','N/A','1'),
  ('2','Diabetes tipo 2','Penicilina','Metformina 1000mg diario','N/A','2'),
  ('3','Asma', 'Aspirina','Salbutamol inhalador según necesidad','N/A','3'),
  ('4','Sin padecimientos conocidos','Ninguna','N/A','N/A','4'),
  ('5','Dolor de espalda crónico','Ninguna','Fisioterapia','N/A','5'),
  ('6','Fractura de brazo','Ninguna','Férula y reposo','Revisión mensual de la evolución','6'),
  ('7','Dolor crónico de espalda','Ninguna','Terapia física','Ejercicios recomendados para mejorar la postura','7'),
  ('8','Lesión en la rodilla','Ninguna','Rehabilitación','Evitar actividades de alto impacto','8'),
  ('9','Gastritis','Ninguna', 'Antiácidos y dieta','Evitar comidas muy condimentadas','9'),
  ('10','Intoxicación alimentaria','Alimentos contaminados','Hidratación y dieta suave','Reposo y evitar alimentos no cocidos','10');
  
insert into consultas  values
-- idConsulta, diagnosticoConsulta, estadoConsulta, idTipoConsultas, idExamenFisico, idDoctor, idRecetas, idCita, idConsultorio, idExpediente
  ('1','Dolor de cabeza','finalizada', '2024-04-10','1','1','1','1','1','1','1'),
  ('2','Dolor abdominal','pendiente', '2024-04-23','2','2','2','2','2','2','2'),
  ('3','Fiebre','cancelada', '2024-03-12', '3','3','3','3','3','3','3'),
  ('4','Problemas respiratorios','finalizada', '2024-09-10', '4','4','1','4','4','4','4'),
  ('5','Examen de rutina','pendiente', '2024-10-10', '5','5','2','5','5','5','5'),
  ('6','Presión arterial alta','Finalizada', '2024-11-11', '5','5','3','5','5','5','5'),
  ('7','Dolor de cabeza severo','Finalizada', '2024-04-29', '1','6','4','6','6','1','6'),
  ('8','Lesión en la rodilla','Finalizada', '2024-04-15', '9','7','5','7','7','2','7'),
  ('9','Resfriado leve','Finalizada', '2024-12-23', '6','8','6','8','8','3','8'),
  ('10','Consulta de seguimiento','Finalizada', '2024-01-10', '7','9','7','9','9','4','9'),
  ('11','Consulta preventiva','Finalizada', '2024-07-24', '5','10','8','10','10','5','10');

insert into tiposProcedimientos  values
-- idTipoProcedimiento, tipoProcedimiento, descripcionProcedimiento
  ('1','Extracción de sangre','Obtención de muestra de sangre.'),
  ('2','Colonoscopia','Examen del colon y recto.'),
  ('3','Cirugía de cataratas','Extracción de cataratas del ojo.'),
  ('4','Artroscopia de rodilla','Examen y tratamiento de la rodilla.'),
  ('5','Biopsia de piel','Extracción de muestra de piel para diagnóstico.'),
  ('6','Artroscopia','Procedimiento para examinar y tratar problemas en las articulaciones.'),
  ('7','Laparoscopia','Procedimiento quirúrgico realizado a través de pequeñas incisiones en la cavidad abdominal.'),
  ('8','Biopsia','Procedimiento para obtener y examinar muestras de tejido o células.'),
  ('9','Cesárea','Procedimiento quirúrgico para el parto de un bebé a través de una incisión en el abdomen y útero.'),
  ('10','Amniocentesis','Procedimiento para obtener líquido amniótico para diagnóstico prenatal.');
  
insert into  procedimientosMedicos  values
-- idProcedimiento, fechaHoraProcedimiento, duracion, idTipoProcedimiento, idConsulta
  ('1','2024-04-10 09:00','01:30', 1, 1),
  ('2','2024-04-11 11:30','01:15', 2, 2),
  ('3','2024-04-12 14:00','02:00', 3, 3),
  ('4','2024-04-13 10:45','00:45', 4, 4),
  ('5','2024-04-14 13:30','01:00', 5, 5),
  ('6','2024-04-25 16:30','00:45:00', 6, 6),
  ('7','2024-04-26 09:00','01:30:00', 7, 7),
  ('8','2024-04-26 10:30','01:00:00', 8, 8),
  ('9','2024-04-26 12:00','01:45:00', 9, 9),
  ('10','2024-04-26 14:00','00:45:00', 10, 10);
  
insert into doctorEspecialidades  values
-- idDoctor,idEspecialidad
  ('1','1'),
  ('2','2'),
  ('3','3'),
  ('4','4'),
  ('5','5'),
  ('6','10'),
  ('7','7'),
  ('8','9');
  
insert into laboratorista  values
-- idLaboratorista, idEmpleados, JVPLC
  ('1','7', '123456'),
  ('2','12','012345'),
  ('3','24','123889');

  
insert into especialidadesLaboratorista  values
-- idLaboratorista, idEspecialidad 
  ('1', '11'),
  ('2','11'),
  ('3','12');
  
insert into tiposExamenes  values
-- idTipoExamen, TipoExamen, descripcionExamen
  ('1','Análisis de sangre','Evaluación de la sangre.'),
  ('2','Radiografía de tórax','Visión de los órganos del tórax.'),
  ('3','Ecografía abdominal','Visualización de órganos abdominales.'),
  ('4','Resonancia magnética cerebral','Detalles del cerebro.'),
  ('5','Colonoscopia','Examen del colon y recto.'),
  ('6','Endoscopia','Visualización interna de órganos con un endoscopio para diagnóstico o tratamiento.'),
  ('7','Tomografía computarizada','Imágenes detalladas de cortes transversales del cuerpo para diagnóstico.'),
  ('8','Resonancia magnética','Imágenes detalladas de estructuras internas del cuerpo mediante campos magnéticos.'),
  ('9','Electrocardiograma','Registro de la actividad eléctrica del corazón para evaluar su funcionamiento.'),
  ('10','Hematología','Examen de sangre para evaluar la composición y función de las células sanguíneas.'),
  ('11','Orina','Análisis de la orina para detectar problemas renales, infecciones u otros trastornos.');
  
insert into examenes  values
--   idExamen, fechaHoraExamen, muestraBiologica, unidadesMedida, idTipoExamen, idLaboratorista, idCita 
    ('1','2024-04-10 09:00:00', 'Sangre', 'ml', 1, 1, 1),
    ('2','2024-04-11 10:30:00', 'Orina', 'ml', 2, 1, 2),
    ('3','2024-04-12 11:45:00', 'Tejido', 'mg', 3, 1, 3),
    ('4','2024-04-13 13:00:00', 'Líquido cefalorraquídeo', 'ml', 4, 1, 4),
    ('5','2024-04-14 14:15:00', 'Heces', 'g', 5, 3, 5),
    ('6','2024-04-27 16:30:00', 'Sangre', 'ml', 6, 3, 6),
    ('7','2024-04-28 08:00:00', 'Orina', 'ml', 7, 2, 7),
    ('8','2024-04-28 09:45:00', 'Tejido', 'mg', 8, 2, 8),
    ('9','2024-04-29 10:30:00', 'Orina', 'ml', 9, 2, 9),
    ('10','2024-04-29 12:15:00', 'Sangre', 'ml', 10, 3, 10);
    
insert into tiposMedicamentos  values
-- idTipoMedicamento, tipoMedicamento
   ('1','Analgésico'),
   ('2','Antiinflamatorio'),
   ('3','Antipirético'),
   ('4','Antidepresivo'),
   ('5','Antihipertensivo'),
   ('6','Broncodilatador'),
   ('7','Digestivo'),
   ('8','Expectorante'),
   ('9','Hipoglucemiante'),
   ('10','Inmunosupresor'),
   ('11','Laxante');

insert into laboratorios  values
-- idLaboratorio, nombreLaboratorio
    ('1','LabMedic'),
    ('2','LabAnalítica'),
	('3','LabGenético'),
	('4','LabBiomed'),
	('5','LabMicrobio'),
	('6','LabBioquímica'),
	('7','LabImágenes'),
	('8','LabSaludTotal'),
	('9','LabVitalis'),
	('10','LabDiagnósticoMédico');

insert into medicamentos  values
-- idMedicamentos, nombreMedicamento, formulaActiva, idTipoMedicamento, idLaboratorio 
   ('1','Paracetamol', 'Paracetamol', 1, 1),
   ('2','Amoxicilina', 'Amoxicilina', 2, 1),
   ('3','Ibuprofeno', 'Ibuprofeno', 3, 2),
   ('4','Acetaminofén', 'Acetaminofén', 4, 4),
   ('5','Omeprazol', 'Omeprazol', 1, 3),
   ('6','Diazepam', 'Diazepam', 3, 6),
   ('7','Aspirina', 'Ácido acetilsalicílico', 1, 7),
   ('8','Atorvastatina', 'Atorvastatina', 2, 8),
   ('9','Metformina', 'Metformina', 3, 9),
   ('10','Ciprofloxacino', 'Ciprofloxacino', 2, 10);
   
insert into tiposEquiposMedicos  values
-- idTipoEquipoMedico, tipoEquipoMedico
('1','Tomógrafo'),
('2','Resonancia Magnética'),
('3','Ecógrafo'),
('4','Monitor de Signos Vitales'),
('5','Desfibrilador'),
('6','Equipo de Rayos X'),
('7','Endoscopio'),
('8','Ventilador Mecánico'),
('9','Electrocardiograma'),
('10','Máquina de Anestesia');

insert into proveedores  values
-- idproveedores, nombre , direccion, telefono
('1','Proveedor A', 'Calle Principal 123', '12345678'),
('2','Proveedor B', 'Avenida Central 456', '23456789'),
('3','Proveedor C', 'Calle Secundaria 789', '34567890'),
('4','Proveedor D', 'Avenida Norte 321', '45678901'),
('5','Proveedor E', 'Calle Este 654', '56789012'),
('6','Proveedor F', 'Boulevard Sur #987, Lugar', '77771209'),
('7','Proveedor G', 'Calle Este #246, Localidad', '22231144'),
('8','Proveedor H', 'Avenida Oeste #135, Paraje', '23230912'),
('9','Proveedor I', 'Camino Real #357, Sector', '33418231'),
('10','Proveedor J', 'Ruta Rápida #579, Zona', '55122211');
   
insert into inventario  values
-- idInventario, bodega, seccion, pasillo, estante
   ('1','Bodega Principal', 'Sección A', 'Pasillo 1', 'Estante 1'),
   ('2','Bodega Secundaria', 'Sección B', 'Pasillo 2', 'Estante 2'),
   ('3','Bodega de Almacenamiento', 'Sección C', 'Pasillo 3', 'Estante 3'),
   ('4','Bodega de Suministros', 'Sección D', 'Pasillo 4', 'Estante 4'),
   ('5','Bodega de Emergencia', 'Sección E', 'Pasillo 5', 'Estante 5'),
   ('6', 'Bodega Principal', 'Sección F', 'Pasillo 6', 'Estante 6'),
   ('7', 'Bodega Secundaria', 'Sección G', 'Pasillo 7', 'Estante 7'),
   ('8', 'Bodega de Almacenamiento', 'Sección H', 'Pasillo 8', 'Estante 8'),
   ('9', 'Bodega de Suministros', 'Sección I', 'Pasillo 9', 'Estante 9'),
   ('10', 'Bodega de Emergencia', 'Sección J', 'Pasillo 10', 'Estante 10'),
   ('11', 'Bodega Principal', 'Sección K', 'Pasillo 11', 'Estante 11'),
   ('12', 'Bodega Secundaria', 'Sección L', 'Pasillo 12', 'Estante 12'),
   ('13', 'Bodega de Almacenamiento', 'Sección M', 'Pasillo 13', 'Estante 13'),
   ('14', 'Bodega de Suministros', 'Sección N', 'Pasillo 14', 'Estante 14'),
   ('15', 'Bodega de Emergencia', 'Sección O', 'Pasillo 15', 'Estante 15');
   
insert into equiposMedicos values
-- idEquipoMedico, nombreEquipo, marcaEquipo, fechaAdquision, idTipoEquipoMedico, idProveedores, idInventario, cantidad
('1','Tomógrafo 3D', 'XYZ Medical', '2024-01-15', 1, 1, 1, 1),
('2','Resonancia Magnética', 'ABC Healthcare', '2023-09-20', 2, 2, 2, 1),
('3','Ecógrafo Portátil', 'MedTech Inc.', '2024-03-05', 3, 3, 3, 5),
('4','Monitor de Signos Vitales', 'VitalTech', '2023-11-10', 4, 4, 4, 15),
('5','Desfibrilador Automático', 'Rescue Medical', '2024-02-28', 5, 5, 5, 10),
('6','Equipo de Rayos X', 'Marca X', '2022-01-15', 1, 1, 1, 3),
('7','Desfibrilador', 'Marca Z', '2022-03-25', 3, 3, 3, 2),
('8','Ecógrafo', 'Marca B', '2022-05-10', 5, 5, 5, 4),
('9','Tomógrafo', 'Marca C', '2022-06-15', 6, 6, 6, 2),
('10','Ventilador Mecánico', 'Marca E', '2022-08-25', 8, 8, 8, 3),
('11','Electrocardiograma', 'Marca F', '2022-09-30', 9, 9, 9, 2),
('12','Máquina de Anestesia', 'Marca G', '2022-10-15', 10, 10, 10, 1),
('13','Equipo de Rayos X', 'Marca H', '2022-11-20', 1, 1, 11, 4),
('14','Monitor de Signos Vitales', 'Marca I', '2022-12-25', 2, 2, 12, 5),
('15','Endoscopio', 'Marca K', '2023-02-15', 4, 4, 14, 1);

insert into medicamentosRecetados  values
-- idMedicamentos,idRecetas,dosis
  (1, 1, 'Tomar 1 tableta cada 8 horas con alimentos'),
  (2, 2, 'Tomar 1 cápsula cada 12 horas con agua'),
  (3, 3, 'Aplicar una capa delgada sobre la piel afectada cada noche'),
  (4, 4, 'Tomar 2 tabletas cada 6 horas después de las comidas'),
  (5, 5, 'Tomar 1 tableta al día antes de dormir'),
  (6, 6, '500mg cada 8 horas'),
  (7, 7, '200mg cada 12 horas'),
  (8, 8, '500mg cada 6 horas'),
  (9, 9, '10mg una vez al día'),
  (10, 10, '20mg una vez al día');
  
insert into  enfermeros  values
-- idEnfermeros, idEmpleado, JVPE
  ('1', '9', '123456'),
  ('2', '10', '234567'),
  ('3','23','112123');
  
insert into personalProcedimientos  values
-- idPersonalProcedimientos, idEnfermero, idDoctor, idProcedimiento
  (1, 1, 1, 1),
  (2, 2, 5, 2),
  (3, 1, 3, 3),
  (4, 3, 2, 4),
  (5, 2, 8, 5),
  (6, 3, 8, 8);

insert into tiposPago (tipoPago) values 
	('Efectivo'),
    ('Tarjeta'),
    ('Cheque'),
    ('Transferencia bancaria'),
    ('Pago en cuotas'),
    ('Pago por seguro medico');

insert into facturasConsultas  values
-- idFacturaConsulta, idConsulta, idPaciente, fecha, total, idTipoPago
  ('1', 1, 1, '2024-04-01', '5.00','1'),
  ('2', 2, 2, '2024-04-02', '15.00','1'),
  ('3', 3, 3, '2024-04-03', '8.00','2'),
  ('4', 4, 4, '2024-04-04', '100.00','4'),
  ('5', 5, 5, '2024-04-05', '20.00','5'),
  ('6', 6, 6, '2024-04-06', '300.00','1'),
  ('7', 7, 7, '2024-04-07', '175.00','1'),
  ('8', 8, 8, '2024-04-08', '190.00','3'),
  ('9', 9, 9, '2024-04-09', '210.00','3'),
  ('10', 10, 10, '2024-04-10', '220.00','6');
  
insert into facturasExamenes  values 
-- idFacturaExamenes, idPaciente, fechaFE, totalFE, idTipoPago
  ('1', 1, '2024-04-01 08:30:00', '5.00','1'),
  ('2', 2, '2024-04-02 09:45:00', '15.00','1'),
  ('3', 3, '2024-04-03 10:15:00', '8.00','2'),
  ('4', 4, '2024-04-04 11:20:00', '100.00','2'),
  ('5', 5, '2024-04-05 12:00:00', '20.00','3'),
  ('6', 6, '2024-04-06 13:00:00', '90.00','5'),
  ('7', 7, '2024-04-07 14:00:00', '110.00','6'),
  ('8', 8, '2024-04-08 15:00:00', '130.00','1'),
  ('9', 9, '2024-04-09 16:00:00', '180.00','2'),
  ('10', 10, '2024-04-10 17:00:00', '160.00','3');
  
insert into facturasProcedimientos  values
-- idFacturaProcedimientos, idPaciente, fechaFP, totalFp, idTipoPago
  ('1', 1, '2024-04-01 08:30:00', '5.00','1'),
  ('2', 2, '2024-04-02 09:45:00', '15.00','1'),
  ('3', 3, '2024-04-03 10:15:00', '8.00','1'),
  ('4', 4, '2024-04-04 11:20:00', '100.00','2'),
  ('5', 5, '2024-04-05 12:00:00', '20.00','3'),
  ('6', 6, '2024-04-06 13:00:00', '550.00','3'),
  ('7', 7, '2024-04-07 14:00:00', '400.00','6'),
  ('8', 8, '2024-04-08 15:00:00', '900.00','1'),
  ('9', 9, '2024-04-09 16:00:00', '750.00','4'),
  ('10', 10, '2024-04-10 17:00:00', '650.00','2');

insert into detallesFacturasExamenes  values
-- idDetallesFacturaExamen, precioUnitario, idFacturaProcedimientos, idProcedimiento
  ('1','5.00', 1, 1),
  ('2','5.00', 2, 2),
  ('3','5.00', 3, 3),
  ('4','5.00', 4, 4),
  ('5','5.00', 5, 5),
  ('6','70.00', 6, 6),
  ('7','110.00', 7, 7),
  ('8','130.00', 8, 8),
  ('9','180.00', 9, 9),
  ('10','160.00', 10, 10);

insert into detallesFacturasProcedimientos  values
--  idDetallesFacturaProcedimientos, precioUnitario, idFacturaProcedimientos, idProcedimiento 
  ('1','5.00','5','5'),
  ('2','5.00','5','5'),
  ('3','5.00','5','5'),
  ('4','5.00','5','5'),
  ('5','5.00','5','5'),
  ('6','550.00', '6', '6'),
  ('7','400.00', '7', '7'),
  ('8','900.00', '8', '8'),
  ('9','750.00', '9', '9'),
  ('10','650.00', '10', '10');
  
insert into insumosMedicos  values
-- idInsumosMedicos, idMedicametos, idEquipoMedico, idProcedimiento,
 (1, 1, 1, 1),
 (2, 2, 2, 2),
 (3, 3, 3, 3),
 (4, 4, 4, 4),
 (5, 5, 5, 5);
 
 insert into roles (rol) values
	('Doctor'),				-- 1
    ('Secretaria'),			-- 2
    ('Cocinera'),			-- 3
    ('Enfermero'),			-- 4
    ('Laboratorista'),		-- 5
    ('Contador'),			-- 6
    ('Recursos Humanos'),	-- 7
    ('SysAdmin');			-- 8
    
    
insert into opciones (opcion) values
	('Gestionar departamentos'),		-- 1
	('Gestionar municipios'),			-- 2
	('Gestionar distritos'),			-- 3
	('Gestionar direcciones'),			-- 4
	('Gestionar pacientes'),			-- 5
	('Gestionar cargos'),				-- 6
	('Gestionar empleados'),			-- 7
	('Gestionar roles'),				-- 8
	('Gestionar opciones'),				-- 9
	('Gestionar asignacionRolesOpciones'), -- 10
	('Gestionar usuarios'),				-- 11
	('Gestionar doctores'),				-- 12
	('Gestionar especialidades'),		-- 13
	('Gestionar tiposCitas'),			-- 14
	('Gestionar citas'),				-- 15
	('Gestionar consultorios'),			-- 16
	('Gestionar tiposConsultas'),		-- 17
	('Gestionar examenesFisicos'),		-- 18
	('Gestionar recetas'),				-- 19
	('Gestionar expediente'),			-- 20
	('Gestionar consultas'),			-- 21
	('Gestionar tiposProcedimientos'),	-- 22
	('Gestionar procedimientosMedicos'), -- 23
	('Gestionar doctorEspecialidades'),	 -- 24
	('Gestionar laboratorista'),		-- 25
	('Gestionar especialidadesLaboratorista'),	-- 26
	('Gestionar tiposExamenes'),		-- 27
	('Gestionar examenes'),				-- 28
	('Gestionar tiposMedicamentos'),	-- 29
	('Gestionar laboratorios'),			-- 30
	('Gestionar medicamentos'),			-- 31
	('Gestionar tiposEquiposMedicos'),	-- 32
	('Gestionar proveedores'),			-- 33
	('Gestionar inventario'),			-- 34
	('Gestionar equiposMedicos'),		-- 35
	('Gestionar medicamentosRecetados'),	-- 36
	('Gestionar enfermeros'),			-- 37
	('Gestionar personalProcedimientos'),	-- 38
	('Gestionar tiposPago'),			-- 39
	('Gestionar facturasConsultas'),	-- 40
	('Gestionar facturasExamenes'),		-- 41
	('Gestionar facturasProcedimientos'),	-- 42
	('Gestionar detallesFacturasExamenes'),	-- 43
	('Gestionar detallesFacturasProcedimientos'),	-- 44
	('Gestionar insumosMedicos');		-- 45
    
insert into asignacionRolesOpciones (idRol, idOpcion) values
	-- SysAdmi: Todos los permisos
	('8','1'),('8','2'),('8','3'),('8','4'),('8','5'),('8','6'),('8','7'),('8','8'),('8','9'),('8','10'),
    ('8','11'),('8','12'),('8','13'),('8','14'),('8','15'),('8','16'),('8','17'),('8','18'),('8','19'),('8','20'),
    ('8','21'),('8','22'),('8','23'),('8','24'),('8','25'),('8','26'),('8','27'),('8','28'),('8','29'),('8','30'),
    ('8','31'),('8','32'),('8','33'),('8','34'),('8','35'),('8','36'),('8','37'),('8','38'),('8','39'),('8','40'),
    ('8','41'),('8','42'),('8','43'),('8','44'),('8','45'),
    
    -- enfermero: 
    ('4','5'),	-- Paciente
    ('4','20'),	-- Expediente
    ('4','21'),	-- Consulta
    ('4','17'),	-- Tipoconsulta
    ('4','31'),	-- medicamentos
    
    -- laboratorista
    ('5','5'),	-- paciente
    ('5','20'),	-- expediente
    ('5','27'),	-- tipo examen 
    ('5','28'),	-- examenes
    
    -- Recursos humanos:
    ('7','1'),
    ('7','2'),
    ('7','3'),
    ('7','4'),
    ('7','7'),
    ('7','12'),
    ('7','25'),
    
    	-- Secretaria 2
	(2,1), (2,2), (2,3), (2,4), (2,5), (2,6), (2,7), (2,12), (2,14), (2,15), (2,20), (2,21), 
	(2,27), (2,28), (2,30), (2,32), (2,33), (2,35), (2,34), (2,37), (2,39), (2,40), (2,41), 
	(2,42), (2,43), (2,44),

	-- Contador  6
	(6,27), (6,28), (6,32), (6,33), (6,34), (6,35), (6,36), (6,39), (6,40), (6,41), (6,42), 
	(6,43), (6,44),
    
    -- cocinera
	('4', '20'), ('4', '5'), ('4','21'),
    
    -- Doctor
	('1', '1'),('1', '2'), ('1', '3'),	('1', '4'),	('1', '5'),
	('1', '14'),('1', '15'),('1', '20'),('1', '27'),('1', '28'),
	('1', '38'),('1', '37'),('1', '23'),('1', '21'),('1', '18'),
    ('1', '30'),('1', '29'),('1', '31'),('1', '19');
    
    insert into Usuarios(usuario, contraseña, idRol, idEmpleado) values
	('user1', '123456789',1,1),		-- Doctor
	('user2','123456789',2,2),		-- Secretaria
	('user3', '123456789',3,21),	-- cocinera
	('user4','123456789',4,9),		-- enfermero
	('user5', '123456789',5,7),		-- laboratorista
	('user6','123456789',6,13),		-- contador
	('user7', '123456789',7,11),	-- recursos humanos
	('user8', '123456789',8,14);	-- sys admin
 
 SET FOREIGN_KEY_CHECKS  = 1;

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