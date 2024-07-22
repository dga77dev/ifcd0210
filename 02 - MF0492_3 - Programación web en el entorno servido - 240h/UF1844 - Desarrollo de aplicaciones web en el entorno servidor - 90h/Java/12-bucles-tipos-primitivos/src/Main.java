/*
12. Bucles y Tipos Primitivos:
Utiliza un bucle for para calcular la suma de los primeros 10 números enteros.
Imprime el resultado en la consola.
 */

public class Main {
    public static void main(String[] args) {
        int acumulador=0;
        for (int i=0; i<11; i++){
            System.out.print (acumulador+" + "+ i + " = ");
            acumulador +=i;
            System.out.println (acumulador);
        }
        System.out.println("La suma de los 10 primeros números enteros es: "+acumulador);
    }
}