package Cadenas;
import java.util.Scanner;
/*
1. Longitud de una Cadena:
Escribe un programa que solicite al usuario ingresar una cadena de texto y luego muestre la longitud de la
cadena en la consola.
 */
public class  LongitudCadena{
    public static void main(String[] args) {
        // Crear un objeto Scanner para leer la entrada del usuario
        Scanner scanner = new Scanner(System.in);

        // Solicitar al usuario que ingrese una cadena de texto
        System.out.print("Ingresa una cadena de texto: ");
        String cadena = scanner.nextLine();

        // Calcular la longitud de la cadena
        int longitud = cadena.length();

        System.out.println("La longitud de la cadena es: " + longitud);
        scanner.close();
    }
}