public class Interfaz {
    public static void main(String[] args) {
        Calculadora calculadora = new Calculadora();

        // Ejemplos de uso
        double suma = calculadora.sumar(10, 5);
        double resta = calculadora.restar(10, 5);
        double multiplicacion = calculadora.multiplicar(10, 5);
        double division = calculadora.dividir(10, 5);

        System.out.println("Suma: " + suma);
        System.out.println("Resta: " + resta);
        System.out.println("Multiplicación: " + multiplicacion);
        System.out.println("División: " + division);

        // Ejemplo de división por cero
        division = calculadora.dividir(10, 0);
        System.out.println("División por cero: " + division);
    }
}