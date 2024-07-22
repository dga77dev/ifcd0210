-- 2. Devuelve el nombre del producto que tenga el precio de venta más caro.

use jardineria;

select nombre, precio_venta
	from producto
    WHERE precio_venta = (SELECT MAX(precio_venta)
    FROM producto);