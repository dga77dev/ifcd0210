-- 11. Devuelve un listado de todos los pedidos que fueron rechazados en 2009.

use jardineria;

select codigo_pedido, fecha_pedido, estado
	from pedido
    where estado = "rechazado" and YEAR(fecha_pedido)=2009;