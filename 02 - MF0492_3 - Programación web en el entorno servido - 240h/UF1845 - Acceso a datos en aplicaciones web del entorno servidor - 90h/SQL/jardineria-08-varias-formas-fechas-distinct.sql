-- 8. Devuelve un listado con el código de cliente de aquellos clientes que realizaron 
-- 	algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de 
-- 	cliente que aparezcan repetidos. Resuelva la consulta:
-- 	 Utilizando la función YEAR de MySQL.
-- 	 Utilizando la función DATE_FORMAT de MySQL.
-- 	 Sin utilizar ninguna de las funciones anteriores.

USE jardineria;

-- Con YEAR 

SELECT DISTINCT codigo_cliente
FROM pedido
WHERE YEAR(fecha_pedido) = 2008 
ORDER BY codigo_cliente ASC;

-- 	 Utilizando la función DATE_FORMAT de MySQL

SELECT DISTINCT codigo_cliente
FROM pedido
WHERE DATE_FORMAT(fecha_pedido, '%Y') = '2008'
ORDER BY codigo_cliente ASC;

-- Sin utilizar ninguna de las funciones anteriores.

SELECT DISTINCT codigo_cliente
FROM pedido
WHERE fecha_pedido >= '2008-01-01' AND fecha_pedido < '2009-01-01'
ORDER BY codigo_cliente ASC;

