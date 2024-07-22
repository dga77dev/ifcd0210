-- 1. mostrar los pedidos ordenados por los mas recientes

use ventas;
select *
	FROM pedido ORDER by fecha;

-- 2. recuperar todos los datos de los dos pedidos con mayor valor.

use ventas;
select *
FROM pedido
ORDER BY total DESC
LIMIT 2;

-- 3. Recuperar los ids de los clientes que hayan realizado algun pedido y no mostrar repetidos

use ventas;
select DISTINCT *
FROM pedido ORDER BY id_cliente asc;

-- 4 Listado de todos los pedidos hecho en el año 2014 de  más de 2500 euros.

use ventas;
select *
	from pedido
    where year(fecha) = 2014 and total > 2500;
    
-- 5 Nombre y apellidos los comerciales que tienen comision entre 0.05 y 0.011

use ventas;
select nombre, apellido1, apellido2
	from comercial
    where   BETWEEN 0.05 AND  0.011; -- se puede usar be


-- 6 de los clientes recuperar id, nombre y primer apellido cuyo segundo apellido no sea nulo
-- ordenador por apellido y nombre.

use ventas;
select id, nombre, apellido1
	from cliente
	where apellido2 is not null order by apellido1, apellido2, nombre ASC;

-- 7. los nombres de los clientes que empiezan por A y terminan por n minuscula y los que empiezan por P y ordenarlo alfabeticamente
-- con patrones %

use ventas;
select nombre
	from cliente
		where nombre like 'A% %n' order by nombre;


