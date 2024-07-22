package Archivos;

import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.IOException;

public class LeerConFilereader {
    public static void main(String[] args) {
        // Define el nombre del archivo que se va a leer
        String nombreArchivo = "archivoEjemplo.txt";

        try {
            // Crear una instancia de File
            File archivo = new File(nombreArchivo);

            // Verificar si el archivo existe
            if (archivo.exists()) {
                // Crear una instancia de FileReader y BufferedReader para leer el archivo
                FileReader lectorArchivo = new FileReader(archivo);
                BufferedReader lectorBuffer = new BufferedReader(lectorArchivo);

                String linea;
                // Leer el archivo línea por línea
                while ((linea = lectorBuffer.readLine()) != null) {
                    System.out.println(linea);
                }

                // Cerrar los lectores
                lectorBuffer.close();
                lectorArchivo.close();
            } else {
                System.out.println("El archivo no existe.");
            }
        } catch (IOException e) {
            System.out.println("Ocurrió un error.");
            e.printStackTrace();
        }
    }
}
