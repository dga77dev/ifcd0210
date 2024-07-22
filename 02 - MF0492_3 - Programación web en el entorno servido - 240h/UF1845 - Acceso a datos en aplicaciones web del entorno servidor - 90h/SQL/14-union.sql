USE prueba;
SELECT cliente FROM pedidos 
UNION					-- une las dos tablas sin contar los repetidos (OJO LOS CAMPOS DEL SELECT DEBEN SER IGUAL EN NOMBRE Y CONTENIDO
						-- SI HAY MÁS CAMPOS TAMBIEN TIENE QUE SE IGUALES EN NOMBRE Y CONTENIDO. los nulos tambien se agrega
SELECT cliente FROM pedidos2;