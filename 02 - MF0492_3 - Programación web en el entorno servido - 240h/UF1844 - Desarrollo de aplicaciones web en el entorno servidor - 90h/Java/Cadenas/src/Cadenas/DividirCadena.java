/*
6. División de Cadena:
Declara una cadena de texto que contenga una frase larga.
Utiliza el método split() para dividir la cadena en
palabras individuales y muestra cada palabra en la consola en una línea separada.
 */
package Cadenas;

public class DividirCadena {
    public static void main(String[] args) {
        String frase = "Esta es una frase larga para dividir en palabras individuales";

        String[] palabras = frase.split(" "); // Se crea una array qye contiene cada palabra

        for (String palabra : palabras) {
            System.out.println(palabra);
        }
    }
}
