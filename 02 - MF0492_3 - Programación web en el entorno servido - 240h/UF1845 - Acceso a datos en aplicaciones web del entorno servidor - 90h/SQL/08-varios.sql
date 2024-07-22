-- Eliminar un registros según condición
-- DELETE FROM alumnos WHERE nombre = "Trucho Lucho";

-- Para renombrar el nombre de un campo por otro nombre de campo
-- ALTER TABLA tabla RENAME nombre_id nuevo_nombre_campo;

-- Eliminar una tabla y eliminar BD
-- DROP TABLE tabla;
-- o DROP DATABASE nombre

-- Eliminar EL CONTENIDO DE una tabla
-- TRUNCATE TABLE alumnos 
-- 
-- DELETE FROM TABLA WHERE condicion

-- Copia de una tabla
-- CREATE TABLE copia_de_tabla AS SELECT * FROM Estudiante;

-- Tablas temporales
-- CREATE TABLE #EMPDETAL (id, INT, NOMBRE VARCHAR(25));  

-- Agragar una nueva columna a una tabla
-- ALTER TABLE nombre_tabla ADD nueva_comumna VACHAR(2);

-- Modificar el tipo de dato

-- ALTER TABLE tabla MODIFY COLUMN nombre_columna TIPO DE DATO;

-- Eliminar una columna
-- ALTER TABLE tabla DROP COLUMN nombre_columna;

-- Cambiar nombre de una columna
-- ALTER TABLE tabla RENAME COLUMN columna nuevo_nombre

-- Cambiar nombre de una tabla
-- ALTER TABLE tabla RENAME TO nuevo_nombre_tabla





