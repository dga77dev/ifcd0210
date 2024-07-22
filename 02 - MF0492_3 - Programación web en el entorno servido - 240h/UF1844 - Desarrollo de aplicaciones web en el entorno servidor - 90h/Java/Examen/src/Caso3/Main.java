package Caso3;

public class Main {
    public static void main(String[] args) {

        // Crear una instancia de un rectangulo con valores 5 y 10
        Rectangulo rectangulo1 = new Rectangulo(5, 10);

        // Se muestra el resultado de calcular el area en la clase Rectangulo
        double resultadoArea = rectangulo1.calcularArea();
        System.out.println("El área del rectángulo de longitud 5 y ancho 10 es: " + resultadoArea);

    }
}
