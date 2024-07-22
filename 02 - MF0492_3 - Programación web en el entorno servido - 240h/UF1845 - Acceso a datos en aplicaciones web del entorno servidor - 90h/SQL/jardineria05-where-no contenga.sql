-- Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que
-- no sean representantes de ventas.

USE jardineria;
SELECT nombre, apellido1, apellido2, puesto 
	FROM empleado
    WHERE puesto!="Representante Ventas" order by nombre, apellido1;