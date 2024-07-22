-- Devuelve un listado con la ciudad y el teléfono de las oficinas de España
USE jardineria;
SELECT ciudad, telefono
	FROM oficina
    WHERE pais="España";