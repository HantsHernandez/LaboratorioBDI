DROP DATABASE IF EXISTS clinica;
CREATE DATABASE IF NOT EXISTS clinica;
USE clinica ;

SET FOREIGN_KEY_CHECKS  = 0;

CREATE TABLE IF NOT EXISTS departamentos(
  idDepartamento CHAR(2) NOT NULL UNIQUE,
  departamento VARCHAR(25) NOT NULL,
  pais VARCHAR(25) NOT NULL,
  PRIMARY KEY (idDepartamento)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS municipios(
  idMunicipio CHAR(3) NOT NULL UNIQUE,
  municipio VARCHAR(50) NOT NULL,
  idDepartamento CHAR(2) NOT NULL,
  PRIMARY KEY (idMunicipio),
    FOREIGN KEY (idDepartamento)
    REFERENCES departamentos (idDepartamento)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS distritos (
  idDistrito CHAR(5) NOT NULL UNIQUE,
  distrito VARCHAR(50) NOT NULL,
  idMunicipio CHAR(3) NOT NULL,
  PRIMARY KEY (idDistrito),
    FOREIGN KEY (idMunicipio)
    REFERENCES municipios (idMunicipio)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS direcciones (
  idDireccion INT NOT NULL AUTO_INCREMENT,
  linea1 VARCHAR(100) ,
  linea2 VARCHAR(100) ,
  codigoPostal VARCHAR(5) ,
  idDistrito CHAR(5) NOT NULL,
  PRIMARY KEY (idDireccion),
    FOREIGN KEY (idDistrito)
    REFERENCES distritos (idDistrito)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS pacientes (
  idPaciente INT NOT NULL AUTO_INCREMENT,
  nombrePaciente VARCHAR(45) NOT NULL,
  apellidoPaciente VARCHAR(45) NOT NULL,
  generoPaciente VARCHAR(45) NOT NULL,
  fechaNacPaciente VARCHAR(45) ,
  emailPaciente VARCHAR(45) ,
  duiPaciente VARCHAR(45) NOT NULL,
  ocupacionPaciente VARCHAR(45) ,
  estadoCivil VARCHAR(45) ,
  idDireccion INT NOT NULL,
  PRIMARY KEY (idPaciente),
    FOREIGN KEY (idDireccion)
    REFERENCES direcciones (idDireccion)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS cargos (
  idTipoCargo INT NOT NULL AUTO_INCREMENT,
  tipoCargo VARCHAR(45) NOT NULL,
  PRIMARY KEY (idTipoCargo)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS empleados (
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
    REFERENCES direcciones (idDireccion),
    FOREIGN KEY (idTipoCargo)
    REFERENCES cargos (idTipoCargo)
)ENGINE = InnoDB;

CREATE TABLE roles(
	idRol INT PRIMARY KEY auto_increment,
    rol VARCHAR(50) not null
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS opciones(
	idOpcion INT AUTO_INCREMENT,
    opcion VARCHAR(50) NOT NULL,
    PRIMARY KEY (idOpcion)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS asignacionRolesOpciones(
	idAsignacion INT AUTO_INCREMENT,
    idRol int not null,
    idOpcion int not null,
    PRIMARY KEY (idAsignacion),
		FOREIGN KEY (idRol)
        REFERENCES roles (idRol),
        FOREIGN KEY (idOpcion)
        REFERENCES opciones(idOpcion)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS usuarios(
	idUsuario INT AUTO_INCREMENT,
    usuario VARCHAR(45),
    contraseña VARCHAR(45),
    idRol INT NOT NULL,
    idEmpleado INT NOT NULL,
    PRIMARY KEY (idUsuario),
		FOREIGN KEY (idRol)
        REFERENCES roles(idRol),
        FOREIGN KEY (idEmpleado)
        REFERENCES empleados (idEmpleado)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS doctores (
  idDoctor INT NOT NULL AUTO_INCREMENT,
  idEmpleado INT NOT NULL,
  JVPM INT NOT NULL,
  idEspecialidad INT NOT NUll,
  PRIMARY KEY (idDoctor),
    FOREIGN KEY (idEmpleado)
    REFERENCES empleados (idEmpleado),
    FOREIGN KEY (idEspecialidad)
    REFERENCES especialidades (idEspecialidad)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS especialidades (
  idEspecialidad INT NOT NULL AUTO_INCREMENT,
  nombreEspecialidad VARCHAR(45) NOT NULL,
  PRIMARY KEY (idEspecialidad)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS tiposCitas(
  idTipoCita INT NOT NULL AUTO_INCREMENT,
  tipoCita VARCHAR(45) NOT NULL,
  PRIMARY KEY (idTipoCita)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS citas (
  idCita INT NOT NULL AUTO_INCREMENT,
  fechaHoraCita DATETIME(6) NOT NULL,
  idPaciente INT NOT NULL,
  idTipoCita INT NOT NULL,
  PRIMARY KEY (idCita),
    FOREIGN KEY (idPaciente)
    REFERENCES pacientes (idPaciente),
    FOREIGN KEY (idTipoCita)
    REFERENCES tiposCitas (idTipoCita)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS consultorios (
  idConsultorio INT NOT NULL AUTO_INCREMENT,
  nombreConsultorio VARCHAR(45) NOT NULL,
  seccionConsultorio VARCHAR(45) NOT NULL,
  pisoConsultorio VARCHAR(45) NOT NULL,
  PRIMARY KEY (idConsultorio)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS tiposConsultas (
  idTipoConsulta INT NOT NULL AUTO_INCREMENT,
  tipoConsulta VARCHAR(45) NOT NULL,
  precioConsulta DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (idTipoConsulta)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS examenesFisicos (
  idExamenFisico INT NOT NULL AUTO_INCREMENT,
  pulso VARCHAR(45) NOT NULL,
  presionArterial VARCHAR(45) NOT NULL,
  temperatura VARCHAR(45) NOT NULL,
  estadoPiel VARCHAR(45) NOT NULL,
  comportamiento VARCHAR(45) NOT NULL,
  inspeccionOjos VARCHAR(45) ,
  inspeccionOidos VARCHAR(45) ,
  inspeccionCabeza VARCHAR(45) ,
  inspeccionAbdomen VARCHAR(45) NOT NULL,
  inspeccionExtremidades VARCHAR(45) NOT NULL,
  funcionSensorial VARCHAR(45) NOT NULL,
  PRIMARY KEY (idExamenFisico)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS recetas (
  idReceta INT NOT NULL AUTO_INCREMENT,
  idExpediente INT NOT NULL ,
  fechaReceta DATE NOT NULL,
  duracionReceta INT NOT NULL,
  PRIMARY KEY (idReceta),
	FOREIGN KEY (idExpediente)
    REFERENCES expediente (idExpediente)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS expediente (
  idExpediente INT NOT NULL AUTO_INCREMENT,
  idReceta INT NOT NULL,
  padecimiento LONGTEXT ,
  alergia LONGTEXT ,
  tratamiento LONGTEXT ,
  notaAdicional VARCHAR(100) ,
  idPaciente INT NOT NULL,
  PRIMARY KEY (idExpediente),
    FOREIGN KEY (idPaciente)
    REFERENCES pacientes (idPaciente),
    FOREIGN KEY (idReceta)
    REFERENCES recetas(idReceta)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS consultas (
  idConsulta INT NOT NULL UNIQUE AUTO_INCREMENT,
  diagnosticoConsulta VARCHAR(255) NOT NULL,
  estadoConsulta ENUM('Finalizada', 'Pendiente', 'Cancelada') NOT NULL,
  fechaConsulta DATE NOT NULL,
  idTipoConsulta INT NOT NULL,
  idExamenFisico INT NOT NULL,
  idDoctor INT NOT NULL,
  idReceta INT NOT NULL,
  idCita INT NOT NULL,
  idConsultorio INT NOT NULL,
  idExpediente INT NOT NULL,
  PRIMARY KEY (idConsulta),
    FOREIGN KEY (idTipoConsulta)
    REFERENCES tiposConsultas (idTipoConsulta),
    FOREIGN KEY (idExamenFisico)
    REFERENCES examenesFisicos (idExamenFisico),
    FOREIGN KEY (idDoctor)
    REFERENCES doctores(idDoctor),
    FOREIGN KEY (idReceta)
    REFERENCES recetas (idReceta),
    FOREIGN KEY (idCita)
    REFERENCES citas (idCita),
    FOREIGN KEY (idConsultorio)
    REFERENCES consultorios (idConsultorio),
    FOREIGN KEY (idExpediente)
    REFERENCES expediente (idExpediente)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS tiposProcedimientos (
  idTipoProcedimiento INT NOT NULL AUTO_INCREMENT,
  tipoProcedimiento VARCHAR(45) NOT NULL UNIQUE,
  descripcionProcedimiento VARCHAR(300) NOT NULL,
  PRIMARY KEY (idTipoProcedimiento) 
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS procedimientosMedicos (
  idProcedimiento INT NOT NULL UNIQUE AUTO_INCREMENT,
  fechaHoraProcedimiento DATETIME(6) NOT NULL,
  duracion TIME NOT NULL,
  idTipoProcedimiento INT NOT NULL,
  idConsulta INT NOT NULL,
  PRIMARY KEY (idProcedimiento),
    FOREIGN KEY (idTipoProcedimiento)
    REFERENCES tiposProcedimientos (idTipoProcedimiento),
    FOREIGN KEY (idConsulta)
    REFERENCES consultas (idConsulta)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS doctorEspecialidades (
  idDoctor INT NOT NULL ,
  idEspecialidad INT NOT NULL,
  PRIMARY KEY (idDoctor, idEspecialidad),
    FOREIGN KEY (idDoctor)
    REFERENCES doctores (idDoctor),
    FOREIGN KEY (idEspecialidad)
    REFERENCES especialidades (idEspecialidad)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS laboratorista (
  idLaboratorista INT NOT NULL AUTO_INCREMENT,
  idEmpleado INT NOT NULL,
  JVPLC INT NOT NULL,
  PRIMARY KEY (idLaboratorista),
    FOREIGN KEY (idEmpleado)
    REFERENCES empleados (idEmpleado)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS especialidadesLaboratorista (
  idLaboratorista INT NOT NULL ,
  idEspecialidad INT NOT NULL ,
  PRIMARY KEY (idLaboratorista, idEspecialidad),
    FOREIGN KEY (idLaboratorista)
    REFERENCES laboratorista (idLaboratorista),
    FOREIGN KEY (idEspecialidad)
    REFERENCES especialidades (idEspecialidad)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS tiposExamenes (
  idTipoExamen INT NOT NULL AUTO_INCREMENT,
  TipoExamen VARCHAR(45) NOT NULL UNIQUE,
  descripcionExamen VARCHAR(300) NOT NULL,
  PRIMARY KEY (idTipoExamen)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS examenes (
  idExamen INT NOT NULL AUTO_INCREMENT,
  fechaHoraExamen DATETIME(6) NOT NULL,
  muestraBiologica VARCHAR(45) NOT NULL,
  unidadMedida VARCHAR(5) NOT NULL,
  idTipoExamen INT NOT NULL,
  idLaboratorista INT NOT NULL,
  idCita INT NOT NULL,
  PRIMARY KEY (idExamen),
    FOREIGN KEY (idTipoExamen)
    REFERENCES tiposExamenes(idTipoExamen),
    FOREIGN KEY (idLaboratorista)
    REFERENCES laboratorista (idLaboratorista),
    FOREIGN KEY (idCita)
    REFERENCES citas (idCita)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS tiposMedicamentos (
  idTipoMedicamento INT NOT NULL AUTO_INCREMENT,
  tipoMedicamento VARCHAR(45) NOT NULL UNIQUE,
  PRIMARY KEY (idTipoMedicamento)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS laboratorios (
  idLaboratorio INT NOT NULL AUTO_INCREMENT,
  nombreLaboratorio VARCHAR(45) NOT NULL,
  PRIMARY KEY (idLaboratorio)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS medicamentos (
  idMedicamento INT NOT NULL AUTO_INCREMENT,
  nombreMedicamento VARCHAR(45) NOT NULL,
  formulaActiva VARCHAR(50) NOT NULL,
  idTipoMedicamento INT NOT NULL,
  idLaboratorio INT NOT NULL,
  PRIMARY KEY (idMedicamento),
    FOREIGN KEY (idTipoMedicamento)
    REFERENCES tiposMedicamentos (idTipoMedicamento),
    FOREIGN KEY (idLaboratorio)
    REFERENCES laboratorios (idLaboratorio)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS tiposEquiposMedicos (
  idTipoEquipoMedico INT NOT NULL AUTO_INCREMENT,
  tipoEquipoMedico VARCHAR(45) NOT NULL UNIQUE,
  PRIMARY KEY (idTipoEquipoMedico)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS proveedores (
  idProveedor INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  telefono VARCHAR(45) NOT NULL,
  PRIMARY KEY (idProveedor)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS inventario (
  idInventario INT NOT NULL AUTO_INCREMENT,
  bodega VARCHAR(45) NOT NULL,
  seccion VARCHAR(45) NOT NULL,
  pasillo VARCHAR(45) NOT NULL,
  estante VARCHAR(45) NOT NULL,
  PRIMARY KEY (idInventario)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS equiposMedicos (
  idEquipoMedico INT NOT NULL AUTO_INCREMENT,
  nombreEquipo VARCHAR(45) NOT NULL,
  marcaEquipo VARCHAR(45) ,
  fechaAdquision DATE NOT NULL,
  idTipoEquipoMedico INT NOT NULL,
  idProveedor INT NOT NULL,
  idInventario INT NOT NULL,
  cantidad INT NOT NULL,
  PRIMARY KEY (idEquipoMedico),
    FOREIGN KEY (idTipoEquipoMedico)
    REFERENCES tiposEquiposMedicos (idTipoEquipoMedico),
    FOREIGN KEY (idProveedor)
    REFERENCES proveedores (idProveedor),
    FOREIGN KEY (idInventario)
    REFERENCES inventario (idInventario)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS medicamentosRecetados (
  idMedicamento INT NOT NULL,
  idReceta INT NOT NULL,
  dosis VARCHAR(200) NOT NULL,
  PRIMARY KEY (idMedicamento, idReceta),
    FOREIGN KEY (idMedicamento)
    REFERENCES medicamentos (idMedicamento),
    FOREIGN KEY (idReceta)
    REFERENCES recetas (idReceta)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS enfermeros (
  idEnfermero INT NOT NULL AUTO_INCREMENT,
  idEmpleado INT NOT NULL,
  JVPE INT NOT NULL,
  PRIMARY KEY (idEnfermero),
    FOREIGN KEY (idEmpleado)
    REFERENCES empleados (idEmpleado)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS personalProcedimientos (
  idPersonalProcedimiento INT NOT NULL AUTO_INCREMENT,
  idEnfermero INT NOT NULL,
  idDoctor INT NOT NULL,
  idProcedimiento INT NOT NULL,
  PRIMARY KEY (idPersonalProcedimiento),
    FOREIGN KEY (idEnfermero)
    REFERENCES enfermeros (idEnfermero),
    FOREIGN KEY (idDoctor)
    REFERENCES doctores (idDoctor),
    FOREIGN KEY (idProcedimiento)
    REFERENCES procedimientosMedicos (idProcedimiento)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS tiposPago(
	idTipoPago INT NOT NULL AUTO_INCREMENT,
    tipoPago VARCHAR(50) NOT NULL,
    PRIMARY KEY (idTipoPago)
)Engine = InnoDB;

CREATE TABLE IF NOT EXISTS facturasConsultas (
  idFacturaConsulta INT NOT NULL AUTO_INCREMENT,
  idConsulta INT NOT NULL,
  idPaciente INT NOT NULL,
  fecha DATE NOT NULL,
  total DECIMAL(6,2) NOT NULL,
  idTipoPago INT  NOT NULL,
  PRIMARY KEY (idFacturaConsulta),
    FOREIGN KEY (idConsulta)
    REFERENCES consultas (idConsulta),
    FOREIGN KEY (idPaciente)
    REFERENCES pacientes (idPaciente),
    FOREIGN KEY (idTipoPago)
    REFERENCES tiposPago (idTipoPago)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS facturasExamenes (
  idFacturaExamen INT NOT NULL AUTO_INCREMENT,
  idPaciente INT NOT NULL,
  fechaFE DATETIME(2) NOT NULL,
  totalFE DECIMAL(6,2) NOT NULL,
  idTipoPago INT NOT NULL,
  PRIMARY KEY (idFacturaExamen),
    FOREIGN KEY (idPaciente)
    REFERENCES pacientes (idPaciente),
    FOREIGN KEY (idTipoPago)
    REFERENCES tiposPago (idTipoPago)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS facturasProcedimientos (
  idFacturaProcedimiento INT NOT NULL AUTO_INCREMENT,
  idPaciente INT NOT NULL,
  fechaFP DATETIME(2) NOT NULL,
  totalFP DECIMAL(6,2) NOT NULL,
  idTipoPago INT NOT NULL,
  PRIMARY KEY (idFacturaProcedimiento),
    FOREIGN KEY (idPaciente)
    REFERENCES pacientes (idPaciente),
    FOREIGN KEY (idTipoPago)
    REFERENCES tiposPago (idTipoPago)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS detallesFacturasExamenes (
  idDetalleFacturaExamen INT NOT NULL AUTO_INCREMENT,
  precioUnitario DECIMAL(6,2) NOT NULL,
  idFacturaProcedimiento INT NOT NULL,
  idProcedimiento INT NOT NULL,
  PRIMARY KEY (idDetalleFacturaExamen),
    FOREIGN KEY (idFacturaProcedimiento)
    REFERENCES facturasProcedimientos (idFacturaProcedimiento),
    FOREIGN KEY (idProcedimiento)
    REFERENCES procedimientosMedicos(idProcedimiento)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS detallesFacturasProcedimientos (
  idDetalleFacturaProcedimiento INT NOT NULL AUTO_INCREMENT,
  precioUnitario DECIMAL(6,2) NOT NULL,
  idFacturaProcedimiento INT NOT NULL,
  idProcedimiento INT NOT NULL,
  PRIMARY KEY (idDetalleFacturaProcedimiento),
    FOREIGN KEY (idFacturaProcedimiento)
    REFERENCES facturasProcedimientos (idFacturaProcedimiento),
    FOREIGN KEY (idProcedimiento)
    REFERENCES procedimientosMedicos(idProcedimiento)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS insumosMedicos (
  idInsumoMedico INT NOT NULL AUTO_INCREMENT,
  idMedicamento INT NOT NULL,
  idEquipoMedico INT NOT NULL,
  idProcedimiento INT NOT NULL,
  PRIMARY KEY (idInsumoMedico),
    FOREIGN KEY (idMedicamento)
    REFERENCES medicamentos (idMedicamento),
    FOREIGN KEY (idEquipoMedico)
    REFERENCES equiposMedicos (idEquipoMedico),
    FOREIGN KEY (idProcedimiento)
    REFERENCES procedimientosMedicos (idProcedimiento)
)ENGINE = InnoDB;

SET FOREIGN_KEY_CHECKS  = 1;