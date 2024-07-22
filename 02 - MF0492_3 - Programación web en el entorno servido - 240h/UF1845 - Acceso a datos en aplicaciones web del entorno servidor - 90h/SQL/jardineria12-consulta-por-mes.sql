-- 12. Devuelve un listado de todos los pedidos que han sido entregados en el mes de 
-- enero de cualquier año.

use jardineria;

select codigo_pedido, fecha_entrega
	from pedido
    where month(fecha_entrega)=01;