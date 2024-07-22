use jardineria;
-- EJERCICIOS CONSULTA SOBRE UNA TABLA
-- 1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.


select codigo_oficina, ciudad FROM oficina;

-- 2. Devuelve un listado con la ciudad y el teléfono de las oficinas de España.

USE jardineria;
SELECT ciudad, telefono
	FROM oficina
    WHERE pais="España";

-- 3. Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe 
-- tiene un código de jefe igual a 7.

USE jardineria;
SELECT nombre, apellido1, apellido2, email 
	FROM empleado
	WHERE codigo_jefe = 7;

-- 4. Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.

USE jardineria;
SELECT puesto, nombre, apellido1, apellido2, email
	FROM empleado WHERE codigo_jefe IS NULL;
    
-- (En SQL no se pone !=null se pone IS NULL o IS NOT NULL.  )

-- 5. Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que 
-- no sean representantes de ventas.

USE jardineria;
SELECT nombre, apellido1, apellido2, puesto 
	FROM empleado
    WHERE puesto!="Representante Ventas";

-- 6. Devuelve un listado con el nombre de los todos los clientes españoles.

USE jardineria;
SELECT nombre_cliente, pais
	FROM cliente
	WHERE pais="Spain";

-- 7. Devuelve un listado con los distintos estados por los que puede pasar un pedido.

USE jardineria;
SELECT distinct estado
	 FROM pedido;
     
-- (DISTINCT EVITA REPETICIONES)


-- 8. Devuelve un listado con el código de cliente de aquellos clientes que realizaron 
-- 	algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de 
-- 	cliente que aparezcan repetidos. Resuelva la consulta:
-- 	 Utilizando la función YEAR de MySQL.
-- 	 Utilizando la función DATE_FORMAT de MySQL.
-- 	 Sin utilizar ninguna de las funciones anteriores.

USE jardineria;
SELECT DISTINCT codigo_cliente 
FROM pago 
WHERE YEAR(fecha_pago) = 2008;
-- Con YEAR 

SELECT DISTINCT codigo_cliente
FROM pago
WHERE YEAR(fecha_pago) = 2008 
ORDER BY codigo_cliente ASC;

-- 	 Utilizando la función DATE_FORMAT de MySQL

SELECT DISTINCT codigo_cliente
FROM pago
WHERE DATE_FORMAT(fecha_pago, '%Y') = '2008'
ORDER BY codigo_cliente ASC;

-- Sin utilizar ninguna de las funciones anteriores.

SELECT DISTINCT codigo_cliente
FROM pago
WHERE fecha_pago BETWEEN '2008-01-01' AND '2009-01-01'
ORDER BY codigo_cliente ASC;

-- 9. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y 
-- 	fecha de entrega de los pedidos que no han sido entregados a tiempo.

use jardineria;

select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega
	from pedido
    where fecha_entrega > fecha_esperada;

-- 10. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y 
-- 	fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días 
-- 	antes de la fecha esperada.
-- 	 Utilizando la función ADDDATE de MySQL.
-- 	 Utilizando la función DATEDIFF de MySQL.
-- 	 ¿Sería posible resolver esta consulta utilizando el operador de suma + o resta -?


use jardineria;

-- con adddate

select codigo_pedido, codigo_cliente, fecha_entrega, fecha_esperada
	from pedido
	where fecha_entrega <= ADDDATE(fecha_esperada, -2)
	order by fecha_entrega;
    
-- 	 Utilizando la función DATEDIFF de MySQL.

select codigo_pedido, codigo_cliente, fecha_entrega, fecha_esperada
	from pedido
	where DATEDIFF(fecha_entrega, fecha_esperada) <= -2
	order by fecha_entrega;

	-- con operadores aritmeticos seria pasar las fechas a dias julianos y restarlos.

-- 11. Devuelve un listado de todos los pedidos que fueron rechazados en 2009.

use jardineria;

select codigo_pedido, fecha_pedido, estado
	from pedido
    where estado = "rechazado" and YEAR(fecha_pedido)=2009;

-- 12. Devuelve un listado de todos los pedidos que han sido entregados en el mes de 
-- enero de cualquier año.

use jardineria;

select codigo_pedido, fecha_entrega
	from pedido
    where month(fecha_entrega)=01;

-- 13. Devuelve un listado con todos los pagos que se realizaron en el 
-- año 2008 mediante Paypal. Ordene el resultado de mayor a menor.

use jardineria;

select fecha_pago, forma_pago, total
	from pago
    where forma_pago = "Paypal" and YEAR(fecha_pago)=2008  order by total DESC;

-- 14. Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. 
-- 	Tenga en cuenta que no deben aparecer formas de pago repetidas.

use jardineria;
select distinct forma_pago from pago;

-- 15. Devuelve un listado con todos los productos que pertenecen a la 
-- 	gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar 
-- 	ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.

use jardineria;
select nombre, gama, cantidad_en_stock, precio_venta
	from producto
    where gama="Ornamentales" and cantidad_en_stock > 100 order by precio_venta desc;

-- 16. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo 
-- 	representante de ventas tenga el código de empleado 11 o 30.

use jardineria;
select nombre_cliente, ciudad, codigo_empleado_rep_ventas
	from cliente
    where ciudad="Madrid" AND (codigo_empleado_rep_ventas=11 OR codigo_empleado_rep_ventas=30);