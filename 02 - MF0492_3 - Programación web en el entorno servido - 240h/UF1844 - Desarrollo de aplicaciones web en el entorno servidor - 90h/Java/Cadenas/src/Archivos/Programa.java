package Archivos;
import java.io.IOException;

public class Programa {

    public static void main(String[] args) {
        String archivo = "archivoEjemplo.txt";
        String lineaTexto  = "....................";
        GestionArchivoTexto nuevo = new GestionArchivoTexto(archivo);
        // nuevo.rutaArchivo = "archivoEjemplo.txt"; // sale error por que es privado en GestionArchivoTexto.

        nuevo.verificar();
        if (nuevo.verificar()) {
            System.out.println("Ya existe el archivo");
        } else {
            System.out.println("No existe");
        }

        try {
            nuevo.escribirTexto("Es un texto de prueba");
        } catch (IOException e) {
            System.out.println("Error al escribir en el archivo, error"+e.getMessage());
        }
        // nuevo.escribirTexto(lineaTexto);
    }
}
