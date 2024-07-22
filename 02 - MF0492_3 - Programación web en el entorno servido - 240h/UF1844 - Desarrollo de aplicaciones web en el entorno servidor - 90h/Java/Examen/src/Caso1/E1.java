package Caso1;
import java.util.Scanner;

public class E1 {
    public static void main(String[] args) {

        // Declaramos variables


        String linea;
        int n, x;
        Scanner scanner = new Scanner(System.in);

        // Preguntar número
        System.out.print("Introduce un número entero positivo: ");
        n = scanner.nextInt();

        // Bucle anidado en el que i es el número de filas que quermos
        // y x se recorre cada iteracción del bucle i concatenando los
        // asteriscos */
        for (int i=0 ; i <n ; i++){
            linea=""; // Creamos nueva linea en cada salto
            for (x=0; x <= i; x++) {
                //System.out.println (x);
                linea += "*";
            }
            System.out.println (linea);
        }


    }
}