/*
4. Subcadena:
Declara una cadena de texto y luego utiliza el método substring() para extraer una subcadena de la cadena
original. Muestra la subcadena resultante en la consola.
 */

package Cadenas;

public class Subcadena {
    public static void main(String[] args) {
        // Declarar una cadena de texto
        String cadena = "Pepillo Grillo es amarillo";

        // Utilizar el método substring() para extraer una subcadena
        String subcadena = cadena.substring(8, 16); // Extraer desde el índice 8 hasta el 15

        // Mostrar la subcadena resultante en la consola
        System.out.println("La subcadena es: " + subcadena);
    }
}
