/*
14. Estructuras de Control Anidadas y Booleanos:
Escribe un programa que solicite al usuario ingresar su edad y si tiene un carnet
de estudiante (utiliza un valor boolean para representar esta condición).
Si la edad es menor de 18 o tiene un carnet de estudiante,
muestra "Tiene descuento"; de lo contrario, muestra "No tiene descuento".
 */

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce tu edad:");
        int edad = scanner.nextInt();

        System.out.print("¿Tienes carnet de estudiante (s/n):");
        char carnet = scanner.next().charAt(0);

        /* **Ver por que no funciona;
        if (carnet=="s") {
            boolean tiene = true;
        } else {
            boolean tiene = false;
        }
        */

        boolean tiene = (carnet == 's' || carnet == 'S');

        if (edad<18 || tiene  ) {
            System.out.println ("Tienes descuento.");
        } else {
            System.out.println ("No tienes descuento.");
        }
    }
}