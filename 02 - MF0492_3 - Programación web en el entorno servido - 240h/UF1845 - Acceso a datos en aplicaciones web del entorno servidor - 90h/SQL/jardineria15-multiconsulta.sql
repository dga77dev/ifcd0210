-- 15. Devuelve un listado con todos los productos que pertenecen a la 
-- 	gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar 
-- 	ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.

use jardineria;
select nombre, gama, cantidad_en_stock, precio_venta
	from producto
    where gama="Ornamentales" and cantidad_en_stock > 100 order by precio_venta desc;