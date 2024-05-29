-- Guia 6 - JOIN
use clinica;

select 
	emp.nombreEmpleado, emp.apellidoEmpleado, emp.duiEmpleado,
    emp.telefonoEmpleado, emp.emailEmpleado, car.tipoCargo, dir.linea1, dir.linea2, dis.distrito, mun.municipio, dep.departamento
from empleados emp
inner join cargos car on emp.idTipoCargo = car.idTipoCargo
inner join direcciones dir on emp.idDireccion = dir.idDireccion
inner join distritos dis on dir.idDistrito = dis.idDistrito
inner join municipios mun on dis.idMunicipio = mun.idMunicipio
inner join departamentos dep on mun.idDepartamento = dep.idDepartamento;

-- Doctores
SELECT
	emp.nombreEmpleado AS 'Nombre', emp.apellidoEmpleado AS 'Apellido', esp.nombreEspecialidad AS 'Especialidad', car.tipoCargo AS 'Cargo', doc.JVPM,
    emp.emailEmpleado AS 'correo electronico', emp.duiEmpleado AS 'DUI', emp.telefonoEmpleado AS 'telefono', dir.linea1, dir.linea2, 
    dis.distrito, mun.municipio, dep.departamento
FROM empleados emp
INNER JOIN doctores doc ON emp.idEmpleado = doc.idEmpleado
INNER JOIN especialidades esp ON doc.idEspecialidad = esp.idEspecialidad
INNER JOIN cargos car ON emp.idTipoCargo = car.idTipoCargo
INNER JOIN direcciones dir ON emp.idDireccion = dir.idDireccion
INNER JOIN distritos dis ON dir.idDistrito = dis.idDistrito
INNER JOIN municipios mun ON dis.idMunicipio = mun.idMunicipio
INNER JOIN departamentos dep ON mun.idDepartamento = dep.idDepartamento;


