public class CuentaBancaria {

    // Atributos privados
    private String numeroCuenta;
    private String titular;
    private double saldo;

    // Constructor
    public CuentaBancaria(String numeroCuenta, String titular, double saldoInicial) {
        this.numeroCuenta = numeroCuenta;
        this.titular = titular;
        this.saldo = saldoInicial;
    }

    // Getters
    public String getNumeroCuenta() {
        return numeroCuenta;
    }

    public String getTitular() {
        return titular;
    }

    public double getSaldo() {
        return saldo;
    }

    // Setters
    public void setNumeroCuenta(String numeroCuenta) {
        this.numeroCuenta = numeroCuenta;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    // Método para depositar dinero
    public void depositar(double cantidad) {
            saldo += cantidad;
            System.out.println("Depósito de " + cantidad + " € realizado. Nuevo saldo: " + saldo);
    }

    // Método para retirar dinero
    public void retirar(double cantidad) {
            saldo -= cantidad;
            System.out.println("Retiro de " + cantidad + " € realizado. Nuevo saldo:" + saldo);
    }

    // Método para mostrar el saldo actual
    public void mostrarSaldo() {
        System.out.println("El saldo actual es: $" + saldo);
    }


}


