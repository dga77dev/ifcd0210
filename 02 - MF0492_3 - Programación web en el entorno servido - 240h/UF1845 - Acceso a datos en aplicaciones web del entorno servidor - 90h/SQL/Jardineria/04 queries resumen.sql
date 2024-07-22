-- 1. ¿Cuántos empleados hay en la compañía?
SELECT COUNT(*) AS total_empleados FROM empleado;

-- 2. ¿Cuántos clientes tiene cada país?
SELECT pais, COUNT(*) AS total_clientes
FROM cliente
GROUP BY pais;

-- 3. ¿Cuál fue el pago medio en 2009?
SELECT AVG(total) AS pago_medio_2009
FROM pago
WHERE YEAR(fecha_pago) = 2009;

-- 4. ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos.
SELECT estado, COUNT(*) AS total_pedidos
FROM pedido
GROUP BY estado
ORDER BY total_pedidos DESC;

-- 5. Calcula el precio de venta del producto más caro y más barato en una misma consulta.
SELECT MAX(precio_venta) AS max_precio_venta, MIN(precio_venta) AS min_precio_venta
FROM producto;

-- 6. Calcula el número de clientes que tiene la empresa.
SELECT COUNT(*) AS total_clientes FROM cliente;

-- 7. ¿Cuántos clientes existen con domicilio en la ciudad de Madrid?
SELECT COUNT(*) AS total_clientes_madrid
FROM cliente
WHERE ciudad = 'Madrid';

-- 8. ¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M?
SELECT ciudad, COUNT(*) AS total_clientes
FROM cliente
WHERE ciudad LIKE 'M%'
GROUP BY ciudad;

-- 9. Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.
SELECT e.nombre, e.apellido1, e.apellido2, COUNT(c.codigo_cliente) AS total_clientes
FROM empleado e
JOIN cliente c ON e.codigo_empleado = c.codigo_empleado_rep_ventas
GROUP BY e.nombre, e.apellido1, e.apellido2;

-- 10. Calcula el número de clientes que no tiene asignado representante de ventas.
SELECT COUNT(*) AS total_clientes_sin_rep
FROM cliente
WHERE codigo_empleado_rep_ventas IS NULL;

-- 11. Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.
SELECT c.nombre_cliente, MIN(p.fecha_pago) AS primer_pago, MAX(p.fecha_pago) AS ultimo_pago
FROM cliente c
JOIN pago p ON c.codigo_cliente = p.codigo_cliente
GROUP BY c.nombre_cliente;

-- 12. Calcula el número de productos diferentes que hay en cada uno de los pedidos.
SELECT codigo_pedido, COUNT(DISTINCT codigo_producto) AS total_productos
FROM detalle_pedido
GROUP BY codigo_pedido;

-- 13. Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos.
SELECT codigo_pedido, SUM(cantidad) AS total_cantidad
FROM detalle_pedido
GROUP BY codigo_pedido;

-- 14. Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han vendido de cada uno. El listado deberá estar ordenado por el número total de unidades vendidas.
SELECT p.nombre, SUM(dp.cantidad) AS total_unidades
FROM producto p
JOIN detalle_pedido dp ON p.codigo_producto = dp.codigo_producto
GROUP BY p.nombre
ORDER BY total_unidades DESC
LIMIT 20;

-- 15. La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el IVA y el total facturado.
SELECT 
  SUM(dp.precio_unidad * dp.cantidad) AS base_imponible,
  SUM(dp.precio_unidad * dp.cantidad) * 0.21 AS IVA,
  SUM(dp.precio_unidad * dp.cantidad) * 1.21 AS total_facturado
FROM detalle_pedido dp;

-- 16. La misma información que en la pregunta anterior, pero agrupada por código de producto.
SELECT 
  dp.codigo_producto,
  SUM(dp.precio_unidad * dp.cantidad) AS base_imponible,
  SUM(dp.precio_unidad * dp.cantidad) * 0.21 AS IVA,
  SUM(dp.precio_unidad * dp.cantidad) * 1.21 AS total_facturado
FROM detalle_pedido dp
GROUP BY dp.codigo_producto;

-- 17. La misma información que en la pregunta anterior, pero agrupada por código de producto filtrada por los códigos que empiecen por OR.
SELECT 
  dp.codigo_producto,
  SUM(dp.precio_unidad * dp.cantidad) AS base_imponible,
  SUM(dp.precio_unidad * dp.cantidad) * 0.21 AS IVA,
  SUM(dp.precio_unidad * dp.cantidad) * 1.21 AS total_facturado
FROM detalle_pedido dp
WHERE dp.codigo_producto LIKE 'OR%'
GROUP BY dp.codigo_producto;

-- 18. Lista las ventas totales de los productos que hayan facturado más de 3000 euros. Se mostrará el nombre, unidades vendidas, total facturado y total facturado con impuestos (21% IVA).
SELECT 
  p.nombre,
  SUM(dp.cantidad) AS unidades_vendidas,
  SUM(dp.precio_unidad * dp.cantidad) AS total_facturado,
  SUM(dp.precio_unidad * dp.cantidad) * 1.21 AS total_facturado_con_IVA
FROM producto p
JOIN detalle_pedido dp ON p.codigo_producto = dp.codigo_producto
GROUP BY p.nombre
HAVING total_facturado > 3000;

-- 19. Muestre la suma total de todos los pagos que se realizaron para cada uno de los años que aparecen en la tabla pagos.
SELECT YEAR(fecha_pago) AS anio, SUM(total) AS total_pagos
FROM pago
GROUP BY YEAR(fecha_pago);
