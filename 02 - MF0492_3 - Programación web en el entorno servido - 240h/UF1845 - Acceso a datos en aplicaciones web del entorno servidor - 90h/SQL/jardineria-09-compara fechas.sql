-- 9. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y 
-- 	fecha de entrega de los pedidos que no han sido entregados a tiempo.

use jardineria;

select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega
	from pedido
    where fecha_entrega > fecha_esperada;

