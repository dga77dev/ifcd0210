/*
15. Estructuras de Control Switch y Tipos Primitivos:
Crea un programa que solicite al usuario ingresar el código de un producto (utiliza un
valor char para representar el código). Utiliza una estructura switch para determinar el
nombre del producto correspondiente y muestra el resultado en la consola.
 */

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // Crear un objeto Scanner para leer desde la consola
        Scanner scanner = new Scanner(System.in);

        // Solicitar al usuario que ingrese un número entero
        System.out.print("Introduce un código (A-Z): ");
        char codigo = scanner.next().charAt(0);

        switch (codigo) {
            case'A':
            case 'a':
                System.out.println("Alcachofas.");
                break;
            case'B':
            case 'b':
                System.out.println("Bananas.");
                break;
            default:
                System.out.println("No tenemos nada.");
        }
    }
}