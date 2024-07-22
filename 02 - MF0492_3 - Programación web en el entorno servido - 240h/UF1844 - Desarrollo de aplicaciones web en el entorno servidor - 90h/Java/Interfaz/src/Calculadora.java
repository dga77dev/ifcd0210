public class Calculadora implements OperacionesMatematicas {

    @Override
    public double sumar(double a, double b) {
        return a + b;
    }

    @Override
    public double restar(double a, double b) {
        return a - b;
    }

    @Override
    public double multiplicar(double a, double b) {
        return a * b;
    }

    @Override
    public double dividir(double a, double b) {
        if (b == 0) {
            System.out.println("No se puede dividir por cero.");
            return Double.NaN;  // Devuelve "not a number" en caso de división por cero
        }
        return a / b;
    }
}

