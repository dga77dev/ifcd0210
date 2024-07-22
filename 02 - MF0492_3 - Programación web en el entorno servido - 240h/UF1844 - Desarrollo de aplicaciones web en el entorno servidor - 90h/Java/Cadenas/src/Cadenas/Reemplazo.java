/*
5. Reemplazo de Caracteres:
Escribe un programa que solicite al usuario ingresar una frase y luego reemplace todas
las ocurrencias de una letra específica por otra letra.
Muestra la frase resultante en la consola.
 */

package Cadenas;
import java.util.Scanner;

public class Reemplazo {
    public static void main(String[] args) {
// Crear un objeto Scanner para leer la entrada del usuario
        Scanner scanner = new Scanner(System.in);

        // Solicitar al usuario que ingrese una frase
        System.out.print("Ingresa una frase: ");
        String frase = scanner.nextLine();

        // Solicitar al usuario que ingrese la letra a reemplazar
        System.out.print("Ingresa la letra a reemplazar: ");
        char letraOriginal = scanner.next().charAt(0); // Lee solo el primer carácter

        // Solicitar al usuario que ingrese la letra por la que se reemplazará
        System.out.print("Ingresa la letra por la que se reemplazará: ");
        char letraReemplazo = scanner.next().charAt(0); // Lee solo el primer carácter

        // Realizar el reemplazo de caracteres en la frase
        String fraseModificada = frase.replace(letraOriginal, letraReemplazo);

        // Mostrar la frase resultante en la consola
        System.out.println("Frase resultante: " + fraseModificada);

        // Cerrar el Scanner
        scanner.close();
    }
}
