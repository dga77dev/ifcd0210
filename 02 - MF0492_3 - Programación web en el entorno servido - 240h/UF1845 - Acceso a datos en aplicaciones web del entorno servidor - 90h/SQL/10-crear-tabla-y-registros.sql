use prueba;
SELECT * FROM pedidos
UNION						-- con union muestra todos eliminando los duplicados
SELECT * FROM pedidos2;


-- SELECT * FROM pedidos1
-- UNION ALL				-- con union muestra todos CON LOS DUPLICADOS 
-- SELECT * FROM pedidos2;



