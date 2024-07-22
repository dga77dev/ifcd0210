use prueba;
SELECT cliente, SUM(venta) AS total
FROM pedidos						-- alumnos-- 1-
-- WHERE total                      -- 2 -No se pone si hay AGREGADOS (SUM).
GROUP BY cliente 				  -- para agrupar para recuperar tiene que estar en el select.
HAVING total > 500				-- Cuando lleva funcones Evalua para recuperar los datos Para poder meter funciones.
ORDER BY cliente ASC				-- Tiene que ser un campo que estemos recuperando. 
-- LIMIT 2,4					-- 2 es el offset (muestra 4 registro pero se carga los 2 primeros entonces muestra 2).