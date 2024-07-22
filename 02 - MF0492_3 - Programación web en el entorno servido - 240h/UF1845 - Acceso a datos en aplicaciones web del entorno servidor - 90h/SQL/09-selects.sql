USE prueba;

-- SELECT alumno_id, alumno_nombre FROM alumnos;

-- Saber numero de registro de una tabla
-- SELECT COUNT(*) FROM alumnos;

-- Numero de registro en la que los alumnos tienen mas de 40 años

-- SELECT COUNT(*) FROM alumnos WHERE alumno_edad > 40;

-- GROUP BY:Cuenta el número de registros que hay de cada valor en un campo:
-- Cuenta cuantos registros hay de cada valor en edad: Por cada edad saldrá el número de registros que existen 

-- SELECT COUNT(*), alumno_edad FROM alumnos GROUP BY alumno_edad ;

-- HAVING: Toma la tabla resultante.PENDIENTE*****FALLA*****
SELECT alumno_nombre, SUM(alumno_edad) AS totaledades
FROM alumnos
GROUP BY alumno_edad
HAVING SUM(alumno_edad)>1;





