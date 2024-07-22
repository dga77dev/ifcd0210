


USE prueba;
SELECT cliente, SUM(`venta`) AS `totalpedidos`
FROM pedidos
GROUP BY cliente
HAVING SUM(`venta`) > 500;