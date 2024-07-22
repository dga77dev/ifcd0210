-- 1. Devuelve el nombre del cliente con mayor límite de crédito.

use jardineria;

select nombre_cliente, limite_credito
	from cliente
    WHERE limite_credito = (SELECT MAX(limite_credito)
    FROM cliente);