/*
7. Búsqueda de Subcadena:
Escribe un programa que solicite al usuario ingresar una frase y una palabra. Luego,
busca si la palabra ingresada se encuentra dentro de la frase y muestra el resultado
en la consola.
 */
package Cadenas;
import java.util.Scanner;

public class BuscarSubcadena {
    public static void main(String[] args) {
        // Crear un objeto Scanner para la entrada de usuario
        Scanner scanner = new Scanner(System.in);

        // Solicitar al usuario ingresar una frase
        System.out.print("Ingresa una frase: ");
        String frase = scanner.nextLine();

        // Solicitar al usuario ingresar una palabra a buscar
        System.out.print("Ingresa una palabra a buscar: ");
        String palabra = scanner.nextLine();

        // Buscar si la palabra está dentro de la frase
        if (frase.contains(palabra)) {
            System.out.println("La palabra '" + palabra + "' se encuentra dentro de la frase.");
        } else {
            System.out.println("La palabra '" + palabra + "' no se encuentra dentro de la frase.");
        }

        // Cerrar el Scanner
        scanner.close();
    }
}
