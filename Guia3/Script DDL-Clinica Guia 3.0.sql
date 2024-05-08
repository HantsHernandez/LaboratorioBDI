CREATE DATABASE clinica3;
USE clinica3;

CREATE TABLE Departamentos(
  idDepartamento CHAR(2) NOT NULL UNIQUE,
  departamento VARCHAR(25) NOT NULL,
  pais VARCHAR(25) NOT NULL,
  PRIMARY KEY (idDepartamento)
);


CREATE TABLE  Municipios(
  idMunicipio CHAR(3) NOT NULL UNIQUE,
  Municipio VARCHAR(50) NOT NULL,
  idDepartamento CHAR(2) NOT NULL,
  PRIMARY KEY (idMunicipio),
    FOREIGN KEY (idDepartamento)
    REFERENCES Departamentos (idDepartamento)
);


CREATE TABLE Distritos (
  idDistrito CHAR(5) NOT NULL UNIQUE,
  distrito VARCHAR(50) NOT NULL,
  idMunicipio CHAR(3) NOT NULL,
  PRIMARY KEY (idDistrito),
    FOREIGN KEY (idMunicipio)
    REFERENCES Municipios (idMunicipio)
);


CREATE TABLE Direcciones (
  idDireccion INT NOT NULL AUTO_INCREMENT,
  Linea1 VARCHAR(100) NULL,
  Linea2 VARCHAR(100) NULL,
  codigoPostal VARCHAR(5) NULL,
  idDistrito CHAR(5) NOT NULL,
  PRIMARY KEY (idDireccion),
    FOREIGN KEY (idDistrito)
    REFERENCES Distritos (idDistrito)
);


CREATE TABLE  Pacientes (
  idPaciente INT NOT NULL AUTO_INCREMENT,
  nombrePaciente VARCHAR(45) NOT NULL,
  apellidoPaciente VARCHAR(45) NOT NULL,
  generoPaciente VARCHAR(45) NOT NULL,
  fechaNacPaciente VARCHAR(45) NULL,
  emailPaciente VARCHAR(45) NULL,
  duiPaciente VARCHAR(45) NOT NULL,
  ocupacionPaciente VARCHAR(45) NULL,
  estadoCivil VARCHAR(45) NULL,
  idDireccion INT NOT NULL,
  PRIMARY KEY (idPaciente),
    FOREIGN KEY (idDireccion)
    REFERENCES Direcciones (idDireccion)
);


CREATE TABLE  Cargos (
  idTipoCargo INT NOT NULL AUTO_INCREMENT,
  TipoCargo VARCHAR(45) NOT NULL,
  PRIMARY KEY (idTipoCargo)
);


CREATE TABLE Empleados (
  idEmpleado INT NOT NULL AUTO_INCREMENT,
  nombreEmpleado VARCHAR(45) NOT NULL,
  apellidoEmpleado VARCHAR(45) NOT NULL,
  emailEmpleado VARCHAR(90) NOT NULL,
  telefonoEmpleado VARCHAR(45) NOT NULL,
  fechaContratacion VARCHAR(45) NOT NULL,
  duiEmpleado CHAR(10) NOT NULL,
  idDireccion INT NOT NULL,
  idTipoCargo INT NOT NULL,
  PRIMARY KEY (idEmpleado),
    FOREIGN KEY (idDireccion)
    REFERENCES Direcciones (idDireccion),
    FOREIGN KEY (idTipoCargo)
    REFERENCES Cargos (idTipoCargo)
);


CREATE TABLE Doctores (
  idDoctor INT NOT NULL AUTO_INCREMENT,
  idEmpleados INT NOT NULL,
  JVPM INT NOT NULL,
  PRIMARY KEY (idDoctor),
    FOREIGN KEY (idEmpleados)
    REFERENCES Empleados (idEmpleado)
);


CREATE TABLE Especialidades (
  idEspecialidad INT NOT NULL AUTO_INCREMENT,
  nombreEspecialidad VARCHAR(45) NOT NULL,
  PRIMARY KEY (idEspecialidad)
);


CREATE TABLE TipoCitas(
  idTipoCita INT NOT NULL AUTO_INCREMENT,
  tipoCita VARCHAR(45) NOT NULL,
  PRIMARY KEY (idTipoCita)
);


CREATE TABLE Citas (
  idCita INT NOT NULL AUTO_INCREMENT,
  fechaHoraCita DATETIME(6) NOT NULL,
  idPaciente INT NOT NULL,
  idTipoCita INT NOT NULL,
  PRIMARY KEY (idCita),
    FOREIGN KEY (idPaciente)
    REFERENCES Pacientes (idPaciente),
    FOREIGN KEY (idTipoCita)
    REFERENCES TipoCitas (idTipoCita)
);


CREATE TABLE Consultorios (
  idConsultorio INT NOT NULL AUTO_INCREMENT,
  nombreConsultorio VARCHAR(45) NOT NULL,
  seccionConsultorio VARCHAR(45) NOT NULL,
  pisoConsultorio VARCHAR(45) NOT NULL,
  PRIMARY KEY (idConsultorio)
);


CREATE TABLE TiposConsultas (
  idTipoConsulta INT NOT NULL AUTO_INCREMENT,
  tipoConsulta VARCHAR(45) NOT NULL,
  precioConsulta DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (idTipoConsulta)
);


CREATE TABLE ExamenesFisicos (
  idExamenFisico INT NOT NULL AUTO_INCREMENT,
  pulso VARCHAR(45) NOT NULL,
  presionArterial VARCHAR(45) NOT NULL,
  temperatura VARCHAR(45) NOT NULL,
  estadoPiel VARCHAR(45) NOT NULL,
  comportamiento VARCHAR(45) NOT NULL,
  inspeccionOjos VARCHAR(45) NULL,
  inspeccionOidos VARCHAR(45) NULL,
  inspeccionCabeza VARCHAR(45) NULL,
  inspeccionAbdomen VARCHAR(45) NOT NULL,
  inspeccionExtremidades VARCHAR(45) NOT NULL,
  funcionSensorial VARCHAR(45) NOT NULL,
  PRIMARY KEY (idExamenFisico)
);


CREATE TABLE Recetas (
  idrecetas INT NOT NULL AUTO_INCREMENT,
  fechaReceta DATE NOT NULL,
  duracionReceta INT NOT NULL,
  PRIMARY KEY (idrecetas)
)ENGINE = InnoDB;


CREATE TABLE Expediente (
  idExpediente INT NOT NULL AUTO_INCREMENT,
  padecimiento LONGTEXT NULL,
  alergias LONGTEXT NULL,
  tratamientos LONGTEXT NULL,
  notasAdicionales VARCHAR(45) NULL,
  idPaciente INT NOT NULL,
  PRIMARY KEY (idExpediente),
    FOREIGN KEY (idPaciente)
    REFERENCES Pacientes (idPaciente)
);


CREATE TABLE Consultas (
  idConsulta INT NOT NULL UNIQUE AUTO_INCREMENT,
  DiagnosticoConsulta VARCHAR(255) NOT NULL,
  EstadoConsulta ENUM('finalizada', 'pendiente', 'cancelada') NOT NULL,
  idTipoConsultas INT NOT NULL,
  idExamenFisico INT NOT NULL,
  idDoctor INT NOT NULL,
  idRecetas INT NOT NULL,
  idCita INT NOT NULL,
  idConsultorio INT NOT NULL,
  idExpediente INT NOT NULL,
  PRIMARY KEY (idConsulta),
    FOREIGN KEY (idTipoConsultas)
    REFERENCES TiposConsultas (idTipoConsulta),
    FOREIGN KEY (idExamenFisico)
    REFERENCES ExamenesFisicos (idExamenFisico),
    FOREIGN KEY (idDoctor)
    REFERENCES Doctores(idDoctor),
    FOREIGN KEY (idrecetas)
    REFERENCES Recetas (idrecetas),
    FOREIGN KEY (idCita)
    REFERENCES Citas (idCita),
    FOREIGN KEY (idConsultorio)
    REFERENCES Consultorios (idConsultorio),
    FOREIGN KEY (idExpediente)
    REFERENCES Expediente (idExpediente)
);


CREATE TABLE TiposProcedimientos (
  idTipoProcedimiento INT NOT NULL AUTO_INCREMENT,
  tipoProcedimiento VARCHAR(45) NOT NULL UNIQUE,
  descripcionProcedimiento VARCHAR(300) NOT NULL,
  PRIMARY KEY (idTipoProcedimiento) 
);


CREATE TABLE ProcedimientosMedicos (
  idProcedimiento INT NOT NULL UNIQUE AUTO_INCREMENT,
  fechaHoraProcedimiento DATETIME(6) NOT NULL,
  duracion TIME NOT NULL,
  idTipoProcedimiento INT NOT NULL,
  idConsulta INT NOT NULL,
  PRIMARY KEY (idProcedimiento),
    FOREIGN KEY (idTipoProcedimiento)
    REFERENCES TiposProcedimientos (idTipoProcedimiento),
    FOREIGN KEY (idConsulta)
    REFERENCES Consultas (idConsulta)
);


CREATE TABLE  DoctorEspecialidades (
  idDoctor INT NOT NULL ,
  idEspecialidad INT NOT NULL,
  PRIMARY KEY (idDoctor, idEspecialidad),
    FOREIGN KEY (idDoctor)
    REFERENCES Doctores (idDoctor),
    FOREIGN KEY (idEspecialidad)
    REFERENCES Especialidades (idEspecialidad)
);


CREATE TABLE  Laboratorista (
  idLaboratorista INT NOT NULL AUTO_INCREMENT,
  idEmpleados INT NOT NULL,
  JVPLC INT NOT NULL,
  PRIMARY KEY (idLaboratorista),
    FOREIGN KEY (idEmpleados)
    REFERENCES Empleados (idEmpleado)
);


CREATE TABLE EspecialidadLaboratorista (
  idLaboratorista INT NOT NULL ,
  idEspecialidad INT NOT NULL ,
  PRIMARY KEY (idLaboratorista, idEspecialidad),
    FOREIGN KEY (idLaboratorista)
    REFERENCES Laboratorista (idLaboratorista),
    FOREIGN KEY (idEspecialidad)
    REFERENCES Especialidades (idEspecialidad)
);


CREATE TABLE  TipoExamenes (
  idTipoExamen INT NOT NULL AUTO_INCREMENT,
  TipoExamen VARCHAR(45) NOT NULL UNIQUE,
  descripcionExamen VARCHAR(300) NOT NULL,
  PRIMARY KEY (idTipoExamen)
);


CREATE TABLE Examenes (
  idExamen INT NOT NULL AUTO_INCREMENT,
  fechaHoraExamen DATETIME(6) NOT NULL,
  muestraBiologica VARCHAR(45) NOT NULL,
  unidadesMedida VARCHAR(5) NOT NULL,
  idTipoExamen INT NOT NULL,
  idLaboratorista INT NOT NULL,
  idCita INT NOT NULL,
  PRIMARY KEY (idExamen),
    FOREIGN KEY (idTipoExamen)
    REFERENCES TipoExamenes(idTipoExamen),
    FOREIGN KEY (idLaboratorista)
    REFERENCES Laboratorista (idLaboratorista),
    FOREIGN KEY (idCita)
    REFERENCES Citas (idCita)
);


CREATE TABLE  TiposMedicamentos (
  idTipoMedicamento INT NOT NULL AUTO_INCREMENT,
  TipoMedicamento VARCHAR(45) NOT NULL UNIQUE,
  PRIMARY KEY (idTipoMedicamento)
);


CREATE TABLE Laboratorios (
  idLaboratorio INT NOT NULL AUTO_INCREMENT,
  nombreLaboratorio VARCHAR(45) NOT NULL,
  PRIMARY KEY (idLaboratorio)
);


CREATE TABLE Medicamentos (
  idMedicamentos INT NOT NULL AUTO_INCREMENT,
  nombreMedicamento VARCHAR(45) NOT NULL,
  formulaActiva VARCHAR(50) NOT NULL,
  idTipoMedicamento INT NOT NULL,
  idLaboratorio INT NOT NULL,
  PRIMARY KEY (idMedicamentos),
    FOREIGN KEY (idTipoMedicamento)
    REFERENCES TiposMedicamentos (idTipoMedicamento),
    FOREIGN KEY (idLaboratorio)
    REFERENCES Laboratorios (idLaboratorio)
);


CREATE TABLE TipoEquipoMedico (
  idTipoEquipoMedico INT NOT NULL AUTO_INCREMENT,
  tipoEquipoMedico VARCHAR(45) NOT NULL UNIQUE,
  PRIMARY KEY (idTipoEquipoMedico)
);


CREATE TABLE  Proveedores (
  idproveedores INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  telefono VARCHAR(45) NOT NULL,
  PRIMARY KEY (idproveedores)
);


CREATE TABLE Inventario (
  idInventario INT NOT NULL AUTO_INCREMENT,
  bodega VARCHAR(45) NOT NULL,
  seccion VARCHAR(45) NOT NULL,
  pasillo VARCHAR(45) NOT NULL,
  estante VARCHAR(45) NOT NULL,
  PRIMARY KEY (idInventario)
);


CREATE TABLE EquiposMedicos (
  idEquipoMedico INT NOT NULL AUTO_INCREMENT,
  nombreEquipo VARCHAR(45) NOT NULL,
  marcaEquipo VARCHAR(45) NULL,
  fechaAdquision DATE NOT NULL,
  idTipoEquipoMedico INT NOT NULL,
  idProveedores INT NOT NULL,
  idInventario INT NOT NULL,
  cantidad INT NOT NULL,
  PRIMARY KEY (idEquipoMedico),
    FOREIGN KEY (idTipoEquipoMedico)
    REFERENCES TipoEquipoMedico (idTipoEquipoMedico),
    FOREIGN KEY (idProveedores)
    REFERENCES Proveedores (idproveedores),
    FOREIGN KEY (idInventario)
    REFERENCES Inventario (idInventario)
);


CREATE TABLE  MedicamentosRecetados (
  idMedicamentos INT NOT NULL,
  idrecetas INT NOT NULL,
  dosis VARCHAR(200) NOT NULL,
  PRIMARY KEY (idMedicamentos, idrecetas),
    FOREIGN KEY (idMedicamentos)
    REFERENCES Medicamentos (idMedicamentos),
    FOREIGN KEY (idrecetas)
    REFERENCES Recetas (idrecetas)
);


CREATE TABLE  Enfermeros (
  idEnfermeros INT NOT NULL AUTO_INCREMENT,
  idEmpleado INT NOT NULL,
  JVPE INT NOT NULL,
  PRIMARY KEY (idEnfermeros),
    FOREIGN KEY (idEmpleado)
    REFERENCES Empleados (idEmpleado)
);


CREATE TABLE  PersonalProcedimientos (
  idPersonalProcedimientos INT NOT NULL AUTO_INCREMENT,
  idEnfermero INT NOT NULL,
  idDoctor INT NOT NULL,
  idProcedimiento INT NOT NULL,
  PRIMARY KEY (idPersonalProcedimientos),
    FOREIGN KEY (idEnfermero)
    REFERENCES Enfermeros (idEnfermeros),
    FOREIGN KEY (idDoctor)
    REFERENCES Doctores (idDoctor),
    FOREIGN KEY (idProcedimiento)
    REFERENCES ProcedimientosMedicos (idProcedimiento)
);


CREATE TABLE TiposPago(
	idTipoPago int primary key auto_increment,
    tipoPago varchar(45)
);



CREATE TABLE  FacturaConsulta (
  idFacturaConsulta INT NOT NULL AUTO_INCREMENT,
  idConsulta INT NOT NULL,
  idPaciente INT NOT NULL,
  idTiPoPago int not null,
  fecha DATE NOT NULL,
  total DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (idFacturaConsulta),
    FOREIGN KEY (idConsulta)
    REFERENCES Consultas (idConsulta),
    FOREIGN KEY (idPaciente)
    REFERENCES Pacientes (idPaciente),
    FOREIGN KEY(idTipoPago)
    REFERENCES TiposPago(idTipoPago)
);


CREATE TABLE  FacturasExamenes (
  idFacturaExamenes INT NOT NULL AUTO_INCREMENT,
  idPaciente INT NOT NULL,
  idTiPoPago int not null,
  fechaFE DATETIME(2) NOT NULL,
  totalFE DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (idFacturaExamenes),
    FOREIGN KEY (idPaciente)
    REFERENCES Pacientes (idPaciente),
    FOREIGN KEY(idTipoPago)
    REFERENCES TiposPago(idTipoPago)
);


CREATE TABLE  FacturaProcedimientos (
  idFacturaProcedimientos INT NOT NULL AUTO_INCREMENT,
  idPaciente INT NOT NULL,
  idTiPoPago int not null,
  fechaFP DATETIME(2) NOT NULL,
  totalFp DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (idFacturaProcedimientos),
    FOREIGN KEY (idPaciente)
    REFERENCES Pacientes (idPaciente),
    FOREIGN KEY(idTipoPago)
    REFERENCES TiposPago(idTipoPago)
);


CREATE TABLE  DetallesFacturaExamen (
  idDetallesFacturaExamen INT NOT NULL AUTO_INCREMENT,
  precioUnitario DECIMAL(6,2) NOT NULL,
  idFacturaProcedimientos INT NOT NULL,
  idProcedimiento INT NOT NULL,
  PRIMARY KEY (idDetallesFacturaExamen),
    FOREIGN KEY (idFacturaProcedimientos)
    REFERENCES FacturaProcedimientos (idFacturaProcedimientos),
    FOREIGN KEY (idProcedimiento)
    REFERENCES ProcedimientosMedicos(idProcedimiento)
);


CREATE TABLE  DetallesFacturaProcedimientos (
  idDetallesFacturaProcedimientos INT NOT NULL AUTO_INCREMENT,
  precioUnitario DECIMAL(6,2) NOT NULL,
  idFacturaProcedimientos INT NOT NULL,
  idProcedimiento INT NOT NULL,
  PRIMARY KEY (idDetallesFacturaProcedimientos),
    FOREIGN KEY (idFacturaProcedimientos)
    REFERENCES FacturaProcedimientos (idFacturaProcedimientos),
    FOREIGN KEY (idProcedimiento)
    REFERENCES ProcedimientosMedicos(idProcedimiento)
);


CREATE TABLE InsumosMedicos (
  idInsumosMedicos INT NOT NULL AUTO_INCREMENT,
  idMedicamentos INT NOT NULL,
  idEquipoMedico INT NOT NULL,
  idProcedimiento INT NOT NULL,
  PRIMARY KEY (idInsumosMedicos),
    FOREIGN KEY (idMedicamentos)
    REFERENCES Medicamentos (idMedicamentos),
    FOREIGN KEY (idEquipoMedico)
    REFERENCES EquiposMedicos (idEquipoMedico),
    FOREIGN KEY (idProcedimiento)
    REFERENCES ProcedimientosMedicos (idProcedimiento)
);

CREATE TABLE  opciones(
	idOpcion INT AUTO_INCREMENT,
    opcion VARCHAR(50) NOT NULL,
    PRIMARY KEY (idOpcion)
);

CREATE TABLE roles(
	idRol int auto_increment,
    rol varchar(50) not null,
    primary key(idRol)
);
CREATE TABLE Usuarios(
  idUsuario int auto_increment,
  usuario varchar(50) not null,
  contraseña varchar(50) not null,
  idRol int not null,
  idEmpleado int not null,
  primary key(idUsuario),
  Foreign key(idRol) 
  references roles(idRol),
  Foreign Key(idEmpleado) 
  references empleados(idEmpleado)
);


CREATE TABLE asignacionRolesOpciones(
	idAsignacion int primary key auto_increment,
	idRol int not null,
	idOpcion int not null,
    Foreign key(idRol) 
	references roles(idROl),
	Foreign Key(idOpcion)
	references Opciones(idOpcion)
);