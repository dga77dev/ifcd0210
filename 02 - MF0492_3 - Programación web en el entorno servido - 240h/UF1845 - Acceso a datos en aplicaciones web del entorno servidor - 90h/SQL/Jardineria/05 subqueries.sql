-- Subconsultas con operadores básicos de comparación
-- 1. Devuelve el nombre del cliente con mayor límite de crédito.
SELECT nombre_cliente
FROM cliente
WHERE limite_credito = (SELECT MAX(limite_credito) FROM cliente);

-- 2. Devuelve el nombre del producto que tenga el precio de venta más caro.
SELECT nombre
FROM producto
WHERE precio_venta = (SELECT MAX(precio_venta) FROM producto);

-- 3. Devuelve el nombre del producto del que se han vendido más unidades.
SELECT nombre
FROM producto
WHERE codigo_producto = (
  SELECT codigo_producto
  FROM detalle_pedido
  GROUP BY codigo_producto
  ORDER BY SUM(cantidad) DESC
  LIMIT 1
);

-- 4. Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN).
SELECT nombre_cliente
FROM cliente
WHERE limite_credito > (
  SELECT IFNULL(SUM(total), 0)
  FROM pago
  WHERE pago.codigo_cliente = cliente.codigo_cliente
);

-- 5. Devuelve el producto que más unidades tiene en stock.
SELECT nombre
FROM producto
WHERE cantidad_en_stock = (SELECT MAX(cantidad_en_stock) FROM producto);

-- 6. Devuelve el producto que menos unidades tiene en stock.
SELECT nombre
FROM producto
WHERE cantidad_en_stock = (SELECT MIN(cantidad_en_stock) FROM producto);

-- 7. Devuelve el nombre, los apellidos y el email de los empleados que están a cargo de Alberto Soria.
SELECT nombre, apellido1, apellido2, email
FROM empleado
WHERE codigo_jefe = (
  SELECT codigo_empleado
  FROM empleado
  WHERE nombre = 'Alberto' AND apellido1 = 'Soria'
);

-- Subconsultas con ALL y ANY
-- 8. Devuelve el nombre del cliente con mayor límite de crédito.
SELECT nombre_cliente
FROM cliente
WHERE limite_credito >= ALL (SELECT limite_credito FROM cliente);

-- 9. Devuelve el nombre del producto que tenga el precio de venta más caro.
SELECT nombre
FROM producto
WHERE precio_venta >= ALL (SELECT precio_venta FROM producto);

-- 10. Devuelve el producto que menos unidades tiene en stock.
SELECT nombre
FROM producto
WHERE cantidad_en_stock <= ALL (SELECT cantidad_en_stock FROM producto);

-- Subconsultas con IN y NOT IN
-- 11. Devuelve el nombre, apellido1 y cargo de los empleados que no representen a ningún cliente.
SELECT nombre, apellido1, puesto
FROM empleado
WHERE codigo_empleado NOT IN (SELECT codigo_empleado_rep_ventas FROM cliente);

-- 12. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
SELECT nombre_cliente
FROM cliente
WHERE codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);

-- 13. Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.
SELECT nombre_cliente
FROM cliente
WHERE codigo_cliente IN (SELECT codigo_cliente FROM pago);

-- 14. Devuelve un listado de los productos que nunca han aparecido en un pedido.
SELECT nombre
FROM producto
WHERE codigo_producto NOT IN (SELECT codigo_producto FROM detalle_pedido);

-- 15. Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.
SELECT e.nombre, e.apellido1, e.apellido2, e.puesto, o.telefono
FROM empleado e
JOIN oficina o ON e.codigo_oficina = o.codigo_oficina
WHERE e.codigo_empleado NOT IN (SELECT codigo_empleado_rep_ventas FROM cliente);

-- 16. Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.
SELECT *
FROM oficina
WHERE codigo_oficina NOT IN (
  SELECT e.codigo_oficina
  FROM empleado e
  WHERE e.codigo_empleado IN (
    SELECT c.codigo_empleado_rep_ventas
    FROM cliente c
    WHERE c.codigo_cliente IN (
      SELECT p.codigo_cliente
      FROM pedido p
      JOIN detalle_pedido dp ON p.codigo_pedido = dp.codigo_pedido
      JOIN producto pr ON dp.codigo_producto = pr.codigo_producto
      WHERE pr.gama = 'Frutales'
    )
  )
);

-- 17. Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
SELECT nombre_cliente
FROM cliente
WHERE codigo_cliente IN (SELECT codigo_cliente FROM pedido)
AND codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);

-- Subconsultas con EXISTS y NOT EXISTS
-- 18. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
SELECT nombre_cliente
FROM cliente
WHERE NOT EXISTS (SELECT 1 FROM pago WHERE pago.codigo_cliente = cliente.codigo_cliente);

-- 19. Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.
SELECT nombre_cliente
FROM cliente
WHERE EXISTS (SELECT 1 FROM pago WHERE pago.codigo_cliente = cliente.codigo_cliente);

-- 20. Devuelve un listado de los productos que nunca han aparecido en un pedido.
SELECT nombre
FROM producto
WHERE NOT EXISTS (SELECT 1 FROM detalle_pedido WHERE detalle_pedido.codigo_producto = producto.codigo_producto);

-- 21. Devuelve un listado de los productos que han aparecido en un pedido alguna vez.
SELECT nombre
FROM producto
WHERE EXISTS (SELECT 1 FROM detalle_pedido WHERE detalle_pedido.codigo_producto = producto.codigo_producto);
