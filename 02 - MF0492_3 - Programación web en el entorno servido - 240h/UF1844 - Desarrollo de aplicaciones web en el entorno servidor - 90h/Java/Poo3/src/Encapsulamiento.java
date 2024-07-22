/*
5. Modificar la clase "CuentaBancaria" para que todos los atributos sean privados.
Proporciona métodosgetter y setter para acceder y modificar los atributos.
 */

public class Encapsulamiento {
    public static void main(String[] args) {
        CuentaBancaria cuenta = new CuentaBancaria("Cuenta1", "Pepe Pérez", 1000);
        cuenta.mostrarSaldo();
        cuenta.depositar(500);
        cuenta.retirar(300);
        cuenta.mostrarSaldo();

        // Acceso a los atributos mediante getters y setters
        System.out.println(cuenta.getNumeroCuenta());
        cuenta.setTitular("Maria Perez"); // Se cambia el titular con el setter
        System.out.println(cuenta.getTitular());
    }
}