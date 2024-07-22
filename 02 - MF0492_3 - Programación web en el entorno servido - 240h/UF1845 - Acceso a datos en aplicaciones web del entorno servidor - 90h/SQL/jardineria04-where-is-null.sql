-- Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa
USE jardineria;
SELECT puesto, nombre, apellido1, apellido2, email
	FROM empleado WHERE codigo_jefe IS NULL;
    
-- (En SQL no se pone !=null se pone IS NULL o IS NOT NULL.  )
