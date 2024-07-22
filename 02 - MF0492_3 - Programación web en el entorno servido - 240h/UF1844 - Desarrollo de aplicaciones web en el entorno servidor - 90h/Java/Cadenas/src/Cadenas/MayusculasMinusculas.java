package Cadenas;

import java.util.Scanner;

public class MayusculasMinusculas {
    public static void main(String[] args) {
        // Crear un objeto Scanner para leer la entrada del usuario
        Scanner scanner = new Scanner(System.in);

        System.out.print("Ingresa una palabra en minúsculas: ");
        String palabra = scanner.nextLine();

        String palabraMayusculas = palabra.toUpperCase();

        // Mostrar la palabra en mayúsculas en la consola
        System.out.println("La palabra en mayúsculas es: " + palabraMayusculas);

        // Cerrar el Scanner
        scanner.close();
    }
}
