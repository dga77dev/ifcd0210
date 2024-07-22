/*
11. Estructuras de Control y Tipos Primitivos:
Escribe un programa que solicite al usuario ingresar su edad y una temperatura en grados Celsius.
Si la temperatura es superior a 25 grados y la edad es menor de 40 años, muestra "¡Hace calor!"
en la consola; de lo contrario, muestra "El clima es agradable".
 */

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce tu edad: ");
        int edad = scanner.nextInt();

        System.out.print("Introduce temperatura:");
        int temperatura = scanner.nextInt();

        // Control

        if (temperatura > 25 && edad < 40 ) {
            System.out.print ("¡Hace calor!");
        } else {
            System.out.print ("El clima es agradable.");
        }

    }
}