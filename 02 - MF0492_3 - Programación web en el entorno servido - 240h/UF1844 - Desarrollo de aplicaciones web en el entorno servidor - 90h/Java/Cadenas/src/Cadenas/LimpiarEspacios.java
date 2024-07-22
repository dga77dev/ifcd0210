/*
8. Eliminación de Espacios en Blanco:
Declara una cadena de texto que contenga espacios en blanco al principio y al final.
Utiliza el método trim() para eliminar estos espacios en blanco y muestra la cadena resultante en la consola.
 */
package Cadenas;

public class LimpiarEspacios {
    public static void main(String[] args) {
        String textoConEspacios = "    Hola pepillo grillo amarillo    ";

        // Eliminar espacios en blanco al principio y al final usando el método trim()
        String textoSinEspacios = textoConEspacios.trim();

        // Mostrar la cadena resultante en la consola
        System.out.println("Texto original: '" + textoConEspacios + "'");
        System.out.println("Texto sin espacios en blanco: '" + textoSinEspacios + "'");
    }
}
