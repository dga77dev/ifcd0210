package Ejercicio1;
import java.util.Scanner;

public class E1 {
    public static void main(String[] args) {
        String linea;
        int n, x;
        linea="";
        Scanner scanner = new Scanner(System.in);

        // Leer un entero
        System.out.print("Introduce el numero de repeticiones: ");
        n = scanner.nextInt();
        linea="";
        for (int i=0 ; i <n ; i++){
            for (x=0; x <= i; x++) {
                //System.out.println (x);
                linea += "*";
            }
            System.out.println (linea);
            linea="";
        }


    }
}
