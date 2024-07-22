-- 1.	Devuelve un listado con todos los pedidos que se han realizado.
-- Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.

use ventas;
select fecha, total, id
	FROM pedido ORDER by fecha;

-- 2. Devuelve todos los datos de los dos pedidos de mayor valor.

USE ventas;
SELECT id, total, fecha FROM pedido ORDER BY total DESC LIMIT 2;

-- 3. Recuperar los ids de los clientes que hayan realizado algun pedido y no mostrar repetidos

USE ventas;
SELECT DISTINCT id_cliente FROM pedido ORDER BY id_cliente asc;

-- 4.	Devuelve un listado de todos los pedidos que se realizaron durante el año 2017, cuya cantidad total sea superior a 500€.

USE ventas;
SELECT * FROM pedido WHERE YEAR(fecha) = 2017 and total > 500;
    
-- 5. Devuelve un listado con el nombre y los apellidos de los comerciales que tienen una comisión entre 0.05 y 0.11.

SELECT nombre, apellido1, apellido2, comision FROM comercial WHERE comision BETWEEN 0.05 AND 0.11; 

-- 6 Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido no es NULL.
-- El listado deberá estar ordenado alfabéticamente por apellidos y nombre.

USE ventas;
SELECT id, nombre, apellido1, apellido2	FROM cliente
	WHERE apellido2 is not null 
    ORDER BY apellido1, apellido2, nombre ASC;

-- 7. los nombres de los clientes que empiezan por A y terminan por n minuscula y los que empiezan por P y ordenarlo alfabeticamente
-- con patrones %

USE ventas;
SELECT nombre FROM cliente WHERE nombre LIKE 'A%n' OR nombre LIKE 'P%'
	ORDER BY nombre;
    
-- 8.	Devuelve un listado de los nombres de los clientes que no empiezan por A. El listado deberá estar ordenado alfabéticamente.

USE ventas;
SELECT nombre FROM cliente WHERE nombre NOT LIKE 'A%' ORDER BY nombre;
    
-- 9.	Devuelve un listado con los nombres de los comerciales que terminan por “o”. 
-- Tenga en cuenta que se deberán eliminar los nombres repetidos.

SELECT DISTINCT nombre FROM comercial WHERE nombre LIKE '%o';

-- 10.	Calcula la cantidad total que suman todos los pedidos que aparecen en la tabla pedido.

SELECT SUM(total) AS total_pedidos FROM pedido;

-- 11.	Calcula la cantidad media de todos los pedidos que aparecen en la tabla pedido.

SELECT AVG(total) AS media_pedidos FROM pedido;

-- 12.	Calcula el número total de comerciales distintos que aparecen en la tabla pedido.

SELECT COUNT(DISTINCT id_comercial) AS total_comerciales FROM pedido;

-- 13.	Calcula el número total de clientes que aparecen en la tabla cliente.

SELECT COUNT(id) AS total_clientes FROM cliente;

-- 14.	Calcula cuál es la mayor cantidad que aparece en la tabla pedido.

SELECT MAX(total) AS maximo_total FROM pedido;

-- 15.	Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente.

SELECT ciudad, MAX(categoria) AS max_categoria FROM cliente GROUP BY ciudad;

-- SUBCONSULTAS 
-- ------------

-- 16.	Devuelve un listado con todos los pedidos que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN).

SELECT *
	FROM pedido
		WHERE id_cliente = (
	SELECT id FROM cliente
		WHERE nombre = "Adela" AND apellido1= "Salas" AND apellido2="Díaz"
);

-- 17.	Devuelve el número de pedidos en los que ha participado el comercial Daniel Sáez Vega. (Sin utilizar INNER JOIN)

SELECT COUNT(*)
	FROM pedido WHERE id_comercial = ( 
		select id from comercial
			WHERE nombre = "Daniel" AND apellido1 = "Sáez" AND apellido2="Vega"
        );
        
-- 18.	Devuelve los datos del cliente que realizó el pedido más caro en el año 2019. (Sin utilizar INNER JOIN)

SELECT MAX(total) FROM pedido WHERE YEAR(fecha)=2019;

-- 19.	Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando ANY o ALL).


use ventas;
SELECT * FROM cliente 
	WHERE id != ALL	( SELECT id_cliente FROM pedido);

-- 20.	Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando IN o NOT IN).

SELECT * FROM cliente
	WHERE id NOT IN ( SELECT id_cliente FROM pedido );

-- 21.	Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).

SELECT *
FROM comercial  WHERE NOT EXISTS (
    SELECT * FROM pedido WHERE id_comercial = c.id
);
    
-- JOINS
-- -----

-- 22.	Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. 
-- El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.

SELECT DISTINCT c.id, c.nombre, c.apellido1, c.apellido2 FROM cliente c
	INNER JOIN pedido p ON p.id_cliente = c.id
	ORDER BY c.nombre, c.apellido1, c.apellido2;

-- 23.	Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. 
-- El resultado debe mostrar todos los datos de los pedidos y del cliente. 
-- El listado debe mostrar los datos de los clientes ordenados alfabéticamente.

SELECT p.id, p.fecha, p.total, c.nombre, c.apellido1, c.apellido2 
	FROM pedido p
	INNER JOIN cliente c ON c.id = p.id_cliente
    ORDER BY c.nombre, c.apellido1, c.apellido2; 

-- 24.	Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. 
-- El resultado debe mostrar todos los datos de los pedidos y de los comerciales. 
-- El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.

select  p.id, c.nombre, c.apellido1, c.apellido2 FROM pedido p
	inner join comercial c ON c.id = p.id_comercial
	order BY c.nombre, c.apellido1;
    
-- 25.	Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los comerciales 
-- asociados a cada pedido.

SELECT c.nombre, c.apellido1, c.apellido2, p.id, p.total, co.nombre, co.apellido1  FROM cliente c
	INNER JOIN pedido p ON c.id = p.id_cliente
    INNER JOIN comercial co ON co.id = p.id_comercial;

-- 26.	Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.

SELECT c.nombre, c.apellido1, c.apellido2, p.fecha, p.total FROM cliente c
	INNER JOIN pedido p ON p.id_cliente = c.id
		WHERE  YEAR(p.fecha) = 2017 AND total BETWEEN 300 AND 1000 ;

-- 27.	Devuelve un listado con todos los clientes junto con los datos de los pedidos que han realizado. 
-- Este listado también debe incluir los clientes que no han realizado ningún pedido. 
-- El listado debe estar ordenado alfabéticamente por el primer apellido, segundo apellido y nombre de los clientes.

SELECT c.id, c.nombre, c.apellido1, p.id, p.fecha, p.total FROM cliente c
	LEFT JOIN pedido p ON c.id = p.id_cliente
	ORDER BY c.nombre;

-- 28.	Devuelve un listado con todos los comerciales junto con los datos de los pedidos que han realizado.
-- Este listado también debe incluir los comerciales que no han realizado ningún pedido. 
-- El listado debe estar ordenado alfabéticamente por el primer apellido, segundo apellido y nombre de los comerciales.

SELECT co.nombre, co.apellido1, co.apellido2, p.id, p.total from comercial co
	LEFT JOIN pedido p ON co.id = p.id_comercial
    ORDER BY co.apellido1, co.apellido2, co.nombre;


-- SUBCONSULTAS
-- ------------

-- 29.	Devuelve un listado que solamente muestre los clientes que no han realizado ningún pedido.

SELECT c.id, c.nombre, c.apellido1, c.apellido2
FROM cliente c
	WHERE NOT EXISTS (
		SELECT 1
		FROM pedido p
		WHERE p.id_cliente = c.id
);
	
-- 30.	Devuelve un listado que solamente muestre los comerciales que no han realizado ningún pedido.

SELECT co.id, co.nombre, co.apellido1, co.apellido2
	FROM comercial co
    WHERE NOT EXISTS (
		SELECT 1
        FROM pedido p
        WHERE p.id_comercial = co.id
);