-- Devuelve un listado con el nombre de los todos los clientes españoles.
USE jardineria;
SELECT nombre_cliente, pais
	FROM cliente
	WHERE pais="Spain";