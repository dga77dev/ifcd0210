package Cadenas;

import java.util.Scanner;

public class ContarPalabras {
    public static void main(String[] args) {
        // Crear un objeto Scanner para la entrada de usuario
        Scanner scanner = new Scanner(System.in);

        // Solicitar al usuario ingresar un párrafo
        System.out.print("Ingresa un párrafo: ");
        String parrafo = scanner.nextLine();

        // Dividir el párrafo en palabras utilizando espacios en blanco como delimitadores
        String[] palabras = parrafo.trim().split(" ");

        // Contar el número de palabras
        int numeroDePalabras = palabras.length;

        // Mostrar el resultado en la consola
        System.out.println("Número de palabras en el párrafo: " + numeroDePalabras);

        // Cerrar el Scanner
        scanner.close();
    }
}

