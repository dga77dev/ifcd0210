package Ejercicio2;
import java.util.Scanner;

/*
    Calcular la média aritmetica de un array;
 */

public class E2 {

    // Método que devuelve el resulado.
    //
    public static double calcularMedia(int[] numeros) {
        int suma=0;
        for (int i = 0; i<numeros.length; i++ ){
            suma += numeros[i];
        }
        return (double) suma / numeros.length;
    }

    // Programa

    public static void main(String[] args) {

        Integer n, x, resultado;
        Scanner scanner = new Scanner(System.in);
        resultado = 0;

        // Se pregunta el tamaño del array y lo creamos
        System.out.print("Introduce la cantidad de numeros para calcular la media aritmetica: ");
        n = scanner.nextInt();
        int[] numeros = new int[n];

        // Se introducen los valores para el array y se llama al método para que devuelva la media aritmetica

        for (int i = 0; i<n; i++ ){
            System.out.print("Introduce un número entero: ");
            numeros[i] = scanner.nextInt();
            resultado += numeros[i];
        }
        double media = calcularMedia(numeros);

        // Mostrar el resultado
        System.out.println("La media aritmética es: " + media);

    }
}
