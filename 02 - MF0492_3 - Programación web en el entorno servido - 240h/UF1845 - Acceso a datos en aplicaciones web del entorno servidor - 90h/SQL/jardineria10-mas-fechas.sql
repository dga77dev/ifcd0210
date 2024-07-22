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