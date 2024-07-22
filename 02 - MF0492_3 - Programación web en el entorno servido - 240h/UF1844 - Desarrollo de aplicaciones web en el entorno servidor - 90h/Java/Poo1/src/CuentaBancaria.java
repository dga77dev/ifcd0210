public class CuentaBancaria {
    String numeroCuenta;
    String titular;
    int saldo;

    // Constructor ** Tiene que tener el mismo nombre que la clase

    public CuentaBancaria (String numeroCuenta, String titular, int saldo) {
        this.numeroCuenta = numeroCuenta;
        this.titular = titular;
        this.saldo = saldo;
    }


    public void depositar(int cantidad) {
        saldo += cantidad;
    }

    public void retirar(int cantidad) {
        saldo -= cantidad;
    }

    public void verSaldo() {
        System.out.println("Saldo actual"+saldo);
    }
}
