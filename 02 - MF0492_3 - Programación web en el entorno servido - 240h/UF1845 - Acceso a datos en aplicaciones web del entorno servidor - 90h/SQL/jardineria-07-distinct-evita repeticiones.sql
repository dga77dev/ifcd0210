-- 7. Devuelve un listado con los distintos estados por los que puede pasar un pedido.

USE jardineria;
SELECT distinct estado
	 FROM pedido;
     
-- (DISTINCT EVITA REPETICIONES)