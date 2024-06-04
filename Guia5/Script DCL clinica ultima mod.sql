use clinica;

 create role if not exists 'Doctor';
 create role if not exists 'Secretaria';
 create role if not exists 'Cocinera';
 create role if not exists 'Enfermero';
 create role if not exists 'Laboratorista';
 create role if not exists 'Contador';
 create role if not exists 'Recursos_Humanos';
 create role if not exists 'SysAdmin';
 
 -- Sys Admin
 grant all on clinica.* to 'SysAdmin';
 
 -- Secretaria
 grant select, insert, update, delete on clinica.direcciones to Secretaria;
 grant select, insert, update, delete on clinica.pacientes to Secretaria;
 grant select, insert, update, delete on clinica.expediente to Secretaria;
 grant select, insert, update, delete on clinica.cargos to Secretaria;
 grant select, insert, update, delete on clinica.empleados to Secretaria;
 grant select, insert, update, delete on clinica.doctores to Secretaria;
 grant select, insert, update, delete on clinica.tiposcitas to Secretaria;
 grant select, insert, update, delete on clinica.citas to Secretaria;
 grant select, insert, update, delete on clinica.consultas to Secretaria;
 grant select, insert, update, delete on clinica.tiposexamenes to Secretaria;
 grant select, insert, update, delete on clinica.examenes to Secretaria;
 grant select, insert, update, delete on clinica.laboratorios to Secretaria;
 grant select, insert, update, delete on clinica.tiposequiposmedicos to Secretaria;
 grant select, insert, update, delete on clinica.proveedores to Secretaria;
 grant select, insert, update, delete on clinica.equiposmedicos to Secretaria;
 grant select, insert, update, delete on clinica.inventario to Secretaria;
 grant select, insert, update, delete on clinica.enfermeros to Secretaria;
 grant select, insert, update, delete on clinica.tipospago to Secretaria;
 grant select, insert, update, delete on clinica.facturasconsultas to Secretaria;
 grant select, insert, update, delete on clinica.facturasexamenes to Secretaria;
 grant select, insert, update, delete on clinica.facturasprocedimientos to Secretaria;
 grant select, insert, update, delete on clinica.detallesfacturasexamenes to Secretaria;
 grant select, insert, update, delete on clinica.detallesfacturasprocedimientos to Secretaria;
 grant select on clinica.departamentos to Secretaria;
 grant select on clinica.municipios to Secretaria;
 grant select on clinica.distritos to Secretaria;
 
 -- Laboratorista
 grant select, insert, update, delete on clinica.pacientes to Laboratorista;
 grant select, insert, update, delete on clinica.expediente to Laboratorista;
 grant select on clinica.tiposexamenes to Laboratorista;
 grant select on clinica.examenes to Laboratorista;
 
 -- Recursos Humanos
 grant select, insert, update, delete on clinica.direcciones to 'hr_viviangildan'@'localhost';
 grant select, insert, update, delete on clinica.empleados to 'hr_viviangildan'@'localhost';
 grant select, insert, update, delete on clinica.doctores to 'hr_viviangildan'@'localhost';
 grant select, insert, update, delete on clinica.especialidades to 'hr_viviangildan'@'localhost';
 grant select on clinica.departamentos to 'hr_viviangildan'@'localhost';
 grant select on clinica.municipios to 'hr_viviangildan'@'localhost';
 grant select on clinica.distritos to 'hr_viviangildan'@'localhost';
 
 -- Contador
 grant select on clinica.tiposexamenes to Contador;
 grant select on clinica.examenes to Contador;
 grant select on clinica.tiposequiposmedicos to Contador;
 grant select on clinica.proveedores to Contador;
 grant select on clinica.inventario to Contador;
 grant select on clinica.equiposmedicos to Contador;
 grant select on clinica.medicamentosrecetados to Contador;
 grant select on clinica.tipospago to Contador;
 grant select on clinica.facturasconsultas to Contador;
 grant select on clinica.facturasexamenes to Contador;
 grant select on clinica.facturasprocedimientos to Contador;
 grant select on clinica.detallesfacturasexamenes to Contador;
 grant select on clinica.detallesfacturasprocedimientos to Contador;
 
 -- Cocinera
 grant select on clinica.expediente to Cocinera;
 grant select on clinica.pacientes to Cocinera;
 grant select on clinica.consultas to Cocinera;
 
 -- Enfermero
 grant select, insert, update, delete on clinica.pacientes to Enfermero;
 grant select, insert, update, delete on clinica.expediente to Enfermero;
 grant select, insert, update, delete on clinica.consultas to Enfermero;
 grant select on clinica.tiposconsultas to Enfermero;
 grant select on clinica.medicamentos to Enfermero;
 
 -- Doctor
 -- Doctor
 grant select on clinica.departamentos to Doctor;
 grant select on clinica.municipios to Doctor;
 grant select on clinica.distritos to Doctor;
 grant select, insert, update, delete on clinica.direcciones to Doctor;
 grant select, insert, update, delete on clinica.pacientes to Doctor;
 grant select, insert, update, delete on clinica.tiposcitas to Doctor;
 grant select, insert, update, delete on clinica.citas to Doctor;
 grant select, insert, update, delete on clinica.expediente to Doctor;
 grant select, insert, update, delete on clinica.tiposexamenes to Doctor;
 grant select, insert, update, delete on clinica.examenes to Doctor;
 grant select, insert, update, delete on clinica.personalprocedimientos to Doctor;
 grant select, insert, update, delete on clinica.enfermeros to Doctor;
 grant select, insert, update, delete on clinica.procedimientosmedicos to Doctor;
 grant select, insert, update, delete on clinica.consultas to Doctor;
 grant select, insert, update, delete on clinica.examenesfisicos to Doctor;
 grant select, insert, update, delete on clinica.laboratorios to Doctor;
 grant select, insert, update, delete on clinica.tiposmedicamentos to Doctor;
 grant select, insert, update, delete on clinica.medicamentos to Doctor;
 grant select, insert, update, delete on clinica.recetas to Doctor;
 
 -- CREACION DE USUARIOS
create user if not exists 'admin_susanvaldez'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'doc_juanrodas'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'sec_kimgraves'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'coci_julietlewis'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'enf_edgaradams'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'lab_michaeltorres'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'conta_liamdoe'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'hr_viviangildan'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

-- VINCULAR USUARIOS A ROLES
grant Doctor TO 'doc_juanrodas'@'localhost';
grant Secretaria TO 'sec_kimgraves'@'localhost'; 
grant Cocinera TO 'coci_julietlewis'@'localhost';
grant Enfermero TO 'enf_edgaradams'@'localhost';
grant Laboratorista TO 'lab_michaeltorres'@'localhost';
grant Contador TO 'conta_liamdoe'@'localhost'; 
grant Recursos_Humanos TO 'hr_viviangildan'@'localhost';
grant SysAdmin TO 'admin_susanvaldez'@'localhost';

-- CONSULTAR PERMISOS POR ROL Y USUARIOS
-- Roles
show grants for 'Doctor';
show grants for 'Secretaria';
show grants for 'Cocinera';
show grants for 'Enfermero';
show grants for 'Laboratorista';
show grants for 'Contador';
show grants for 'Recursos_Humanos';
show grants for 'SysAdmin';
-- Usuarios
show grants for 'doc_juanrodas'@'localhost';
show grants for 'sec_kimgraves'@'localhost'; 
show grants for 'coci_julietlewis'@'localhost';
show grants for 'enf_edgaradams'@'localhost';
show grants for 'lab_michaeltorres'@'localhost';
show grants for 'conta_liamdoe'@'localhost'; 
show grants for 'hr_viviangildan'@'localhost';
show grants for 'admin_susanvaldez'@'localhost';
