-- Subconsultas
-- Con operadores básicos de comparación

-- 1. Devuelve el nombre del cliente con mayor límite de crédito.

use jardineria;

select nombre_cliente, limite_credito
	from cliente
    WHERE limite_credito = (SELECT MAX(limite_credito)
    FROM cliente);
    
-- 2. Devuelve el nombre del producto que tenga el precio de venta más caro.

use jardineria;

select nombre, precio_venta
	from producto
    WHERE precio_venta = (SELECT MAX(precio_venta)
    FROM producto);

-- 3. Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en
--    cuenta que tendrá que calcular cuál es el número total de unidades que se han
--    vendido de cada producto a partir de los datos de la tabla detalle_pedido)



-- 4. Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin
-- utilizar INNER JOIN).

-- 5. Devuelve el producto que más unidades tiene en stock.

-- 6. Devuelve el producto que menos unidades tiene en stock.

-- 7. Devuelve el nombre, los apellidos y el email de los empleados que están a cargo
-- de Alberto Soria.


-- Subconsultas con ALL y ANY

-- 8. Devuelve el nombre del cliente con mayor límite de crédito.
-- 9. Devuelve el nombre del producto que tenga el precio de venta más caro.
-- 10. Devuelve el producto que menos unidades tiene en stock.
--     Subconsultas con IN y NOT IN
-- 11. Devuelve el nombre, apellido1 y cargo de los empleados que no representen a
-- ningún cliente.

-- 12. Devuelve un listado que muestre solamente los clientes que no han realizado ningún
-- pago.

-- 13. Devuelve un listado que muestre solamente los clientes que sí han realizado algún
-- 	   pago.

-- 14. Devuelve un listado de los productos que nunca han aparecido en un pedido.
-- 15. Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados
-- 	   que no sean representante de ventas de ningún cliente.

-- 16. Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido
--     los representantes de ventas de algún cliente que haya realizado la compra de algún
--     producto de la gama Frutales.

-- 17. Devuelve un listado con los clientes que han realizado algún pedido pero no han
-- 	   realizado ningún pago.


-- 	 **  Subconsultas con EXISTS y NOT EXISTS **

-- 18. Devuelve un listado que muestre solamente los clientes que no han realizado ningún
-- 	   pago.


-- 19. Devuelve un listado que muestre solamente los clientes que sí han realizado algún
--     pago.

-- 20. Devuelve un listado de los productos que nunca han aparecido en un pedido.

-- 21. Devuelve un listado de los productos que han aparecido en un pedido alguna vez.