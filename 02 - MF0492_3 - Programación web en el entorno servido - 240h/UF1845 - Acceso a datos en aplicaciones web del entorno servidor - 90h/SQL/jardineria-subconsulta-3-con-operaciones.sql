-- 3. Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en
--    cuenta que tendrá que calcular cuál es el número total de unidades que se han
--    vendido de cada producto a partir de los datos de la tabla detalle_pedido)

use jardineria;
SELECT p.codigo_producto, p.nombre, total
FROM producto p
INNER JOIN (
    SELECT codigo_producto, SUM(cantidad*precio_unidad) AS total
    FROM detalle_pedido 
    GROUP BY codigo_producto
) dp ON p.codigo_producto = dp.codigo_producto
ORDER BY dp.total DESC

