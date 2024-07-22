-- 13. Devuelve un listado con todos los pagos que se realizaron en el 
-- año 2008 mediante Paypal. Ordene el resultado de mayor a menor.

use jardineria;

select fecha_pago, forma_pago, total
	from pago
    where forma_pago = "Paypal" and YEAR(fecha_pago)=2008  order by total DESC;