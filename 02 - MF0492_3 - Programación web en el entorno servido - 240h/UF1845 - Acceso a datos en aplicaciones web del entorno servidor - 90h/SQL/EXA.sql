-- 1.	Devuelve un listado con todos los pedidos que se han realizado.
-- Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.

use ventas;
select *
	FROM pedido ORDER by fecha;

-- 2. Devuelve todos los datos de los dos pedidos de mayor valor.

use ventas;
select *
FROM pedido
ORDER BY total DESC
LIMIT 2;

-- 3. Recuperar los ids de los clientes que hayan realizado algun pedido y no mostrar repetidos

use ventas;
select DISTINCT id_cliente
FROM pedido ORDER BY id_cliente asc;

-- 4 Listado de todos los pedidos hecho en el año 2014 de  más de 2500 euros.

use ventas;
select *
	from pedido
    where year(fecha) = 2014 and total > 2500;
    
-- 5 Nombre y apellidos los comerciales que tienen comision entre 0.05 y 0.011

SELECT nombre, apellido1, apellido2, comision
	FROM comercial
	WHERE comision BETWEEN 0.05 AND 0.11; -- se puede usar be


-- 6 de los clientes recuperar id, nombre y primer apellido cuyo segundo apellido no sea nulo
-- ordenador por apellido y nombre.

use ventas;
select id, nombre, apellido1
	from cliente
	where apellido2 is not null order by apellido1, apellido2, nombre ASC;

-- 7. los nombres de los clientes que empiezan por A y terminan por n minuscula y los que empiezan por P y ordenarlo alfabeticamente
-- con patrones %
use ventas;
SELECT nombre
	FROM cliente
	WHERE nombre LIKE 'A%n' OR nombre LIKE 'P%'
	ORDER BY nombre;
    
-- 8.	Devuelve un listado de los nombres de los clientes que no empiezan por A. El listado deberá estar ordenado alfabéticamente.

use ventas;
SELECT nombre
	FROM cliente
	WHERE nombre NOT LIKE 'A%'
	ORDER BY nombre;
    
-- 9.	Devuelve un listado con los nombres de los comerciales que terminan por “o”. Tenga en cuenta que se deberán eliminar los nombres repetidos.

SELECT DISTINCT nombre
FROM comercial
WHERE nombre LIKE '%o';

-- 10.	Calcula la cantidad total que suman todos los pedidos que aparecen en la tabla pedido.

-- 11.	Calcula la cantidad media de todos los pedidos que aparecen en la tabla pedido.

-- 12.	Calcula el número total de comerciales distintos que aparecen en la tabla pedido.

-- 13.	Calcula el número total de clientes que aparecen en la tabla cliente.

-- 14.	Calcula cuál es la mayor cantidad que aparece en la tabla pedido.

-- 15.	Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente.

-- 16.	Devuelve un listado con todos los pedidos que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN).

-- 17.	Devuelve el número de pedidos en los que ha participado el comercial Daniel Sáez Vega. (Sin utilizar INNER JOIN)

-- 18.	Devuelve los datos del cliente que realizó el pedido más caro en el año 2019. (Sin utilizar INNER JOIN)

-- 19.	Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando ANY o ALL).

-- 20.	Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando IN o NOT IN).

-- 21.	Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).

-- 22.	Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.

-- 23.	Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.

-- 24.	Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. El resultado debe mostrar todos los datos de los pedidos y de los comerciales. El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.

-- 25.	Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los comerciales asociados a cada pedido.

-- 26.	Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.

-- 27.	Devuelve un listado con todos los clientes junto con los datos de los pedidos que han realizado. Este listado también debe incluir los clientes que no han realizado ningún pedido. El listado debe estar ordenado alfabéticamente por el primer apellido, segundo apellido y nombre de los clientes.

-- 28.	Devuelve un listado con todos los comerciales junto con los datos de los pedidos que han realizado. Este listado también debe incluir los comerciales que no han realizado ningún pedido. El listado debe estar ordenado alfabéticamente por el primer apellido, segundo apellido y nombre de los comerciales.

-- 29.	Devuelve un listado que solamente muestre los clientes que no han realizado ningún pedido.

-- 30.	Devuelve un listado que solamente muestre los comerciales que no han realizado ningún pedido.    


