-- 16. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo 
-- 	representante de ventas tenga el código de empleado 11 o 30

use jardineria;
select nombre_cliente, ciudad, codigo_empleado_rep_ventas
	from cliente
    where ciudad="Madrid" AND (codigo_empleado_rep_ventas=11 OR codigo_empleado_rep_ventas=30);
