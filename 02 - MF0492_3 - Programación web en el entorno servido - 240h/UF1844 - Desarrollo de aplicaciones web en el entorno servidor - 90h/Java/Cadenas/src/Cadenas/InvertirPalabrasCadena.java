package Cadenas;

import java.util.Scanner;

public class InvertirPalabrasCadena {
    public static void main(String[] args) {
        // Crear un objeto Scanner para leer la entrada del usuario
        Scanner scanner = new Scanner(System.in);

        // Solicitar al usuario que ingrese una frase
        System.out.println("Por favor, ingresa una frase:");
        String frase = scanner.nextLine();

        // Dividir la frase en palabras utilizando el espacio como separador
        String[] palabras = frase.split(" ");

        // Crear un StringBuilder para construir la frase invertida
        StringBuilder fraseInvertida = new StringBuilder();

        // Recorrer las palabras en orden inverso y agregarlas al StringBuilder
        for (int i = palabras.length - 1; i >= 0; i--) {
            fraseInvertida.append(palabras[i]);
            if (i != 0) {
                fraseInvertida.append(" ");
            }
        }

        // Imprimir la frase invertida
        System.out.println("Frase invertida: " + fraseInvertida.toString());

        // Cerrar el objeto Scanner
        scanner.close();
    }
}


