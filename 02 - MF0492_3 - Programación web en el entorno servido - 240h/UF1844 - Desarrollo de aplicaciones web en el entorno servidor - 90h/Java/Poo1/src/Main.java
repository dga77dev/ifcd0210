/*
Crear Clases y Objetos
1. Definir una clase "Libro” con atributos para el título, el autor y el año de publicación. Incluye un
constructor para inicializar estos atributos y un método para mostrar los detalles del libro.
2. Definir una clase "CuentaBancaria" con atributos para el número de cuenta, el titular y el saldo. Incluye
métodos para depositar, retirar dinero y mostrar el saldo actual.
 */


public class Main {
    public static void main(String[] args) {

        // Crear un objeto de la clase Libro
        Libro libro1 = new Libro("El problema final", "Arturo Pérez Reverte", 2023);

        // Mostrar info del libro
        libro1.mostrarLibro();

        CuentaBancaria cuenta1 = new CuentaBancaria ("cuenta1", "pepe", 2000);

        // Mostrar saldo

        cuenta1.verSaldo();

        // Depositar 500

        cuenta1.depositar(500);

        // Retirar 250

        cuenta1.retirar(250);

        // Mostrar saldo

        cuenta1.verSaldo();
    }
}