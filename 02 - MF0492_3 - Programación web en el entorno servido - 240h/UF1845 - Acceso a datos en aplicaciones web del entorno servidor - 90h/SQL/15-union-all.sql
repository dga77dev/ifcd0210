USE prueba;
SELECT cliente FROM pedidos
UNION	all				-- une las dos tablas sin contar los repetidos (OJO LOS CAMPOS DEL SELECT DEBEN SER IGUAL EN NOMBRE Y CONTENIDO
						-- SI HAY MÁS CAMPOS TAMBIEN TIENE QUE SE IGUALES EN NOMBRE Y CONTENIDO. Si hay nulos tambien los agrega
SELECT cliente FROM pedidos2;