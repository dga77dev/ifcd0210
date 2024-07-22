import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        /*
        Estructuras de Control Switch:
        Crea un programa que solicite al usuario ingresar un número del 1 al 7
        representando un día de la semana.
        Utiliza una estructura `switch` para mostrar el nombre del día en la consola.
         */

        Scanner scanner = new Scanner(System.in);
        System.out.print("Introduce un número entero: ");
        int numero = scanner.nextInt();

        switch (numero) {
            case 1:
                System.out.println("Es Lunes.");
                break;
            case 2:
                System.out.println("Es Martes.");
                break;
            case 3:
                System.out.println("Es Miércoles.");
                break;
            case 4:
                System.out.println("Es Jueves.");
                break;
            case 5:
                System.out.println("Es Viernes.");
                break;
            case 6:
                System.out.println("Es Sábado.");
                break;
            case 7:
                System.out.println("Es Domingo.");
                break;
        }
        scanner.close();
    }
}