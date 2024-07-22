public class Main {
    public static void main(String[] args) {
        /*
        Utiliza un bucle `while` para imprimir todos los números pares del 0 al 20 en la consola.
         */
        int x, i=0;
        while ( i<21 ) {
            i++;
            if (i%2 == 0) {
                System.out.println(i);
            }
        }
    }
}