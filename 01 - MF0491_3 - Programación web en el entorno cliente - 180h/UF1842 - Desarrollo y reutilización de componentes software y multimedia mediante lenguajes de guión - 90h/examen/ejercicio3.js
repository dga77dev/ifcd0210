// Creamos la clase Producto con el constructor para inicializar los valores  de las instancias

class Producto {
    constructor (nombre, precio, cantidad) {
        this.nombre = nombre;
        this.precio = precio;
        this.cantidad = cantidad;
    }

    // Método para calcular el total (la cantidad del objeto por el precio del objeto)
    
    calcularTotal(){
        let totalPagar = this.cantidad * this.precio;
        console.log("Total a pagar en",this.nombre, " ,",this.cantidad,"X",this.precio," es", totalPagar,"€.");
    }

    // Método para actualizar la cantidad del objeto machacando su valor por el que se le manda actualizar.

    actualizarCantidad(){
        this.cantidad = cantidadActualizar;
        console.log("Nueva cantidad de", this.nombre,": ", this.cantidad);
    }

}

// Creamos instancias

let venta1 = new Producto("Tomate", 0.25, 100);
let venta2 = new Producto("Patata", 0.10,20);
let venta3 = new Producto("Pipas", 0.1, 200);

// Pruebas llamando métodos y mostrando resultados:

// calcula el total de patatas (objeto venta2) Pasa sus argumentos y el método calcularTotal calcula
// el total del objeto venta2

venta2.calcularTotal();

// Cambiamos la cantidad de la venta2
var cantidadActualizar = 60; // contiene la nueva cantidad para un producto
venta2.actualizarCantidad(cantidadActualizar);

// Volvermos a calcular el total de la venta 2 con la cantidad actualizada

venta2.calcularTotal();
