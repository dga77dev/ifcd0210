import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        /*
        Estructuras de Control Anidadas:
        Escribe un programa que solicite al usuario ingresar dos números enteros y
        luego determine si el primer número es divisible por el segundo número.
        Muestra el resultado en la consola.
         */

        // Introducir datos con objeto scanner.
        Scanner scanner = new Scanner(System.in);
        System.out.print("Introduce un número entero: ");
        int n1 = scanner.nextInt();

        System.out.print("Introduce otro número entero: ");
        int n2 = scanner.nextInt();

        // Comprobar si es divisible

        if (n1%n2 == 0) {
            System.out.println(n1+" es divisible por "+n2);
        } else {
            System.out.println(n1+" no es divisible por "+n2);
        }

        scanner.close();
    }
}