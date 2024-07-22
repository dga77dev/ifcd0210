package Archivos;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class CrearArchivo {
    public static void main(String[] args) {
        // Define el nombre del archivo

        try {
            // Crear una instancia de File
            File archivo = new File("archivoEjemplo.txt");

            // Verificar si el archivo ya existe
            if (archivo.createNewFile()) {
                System.out.println("Archivo creado: " + archivo.getName());
            } else {
                System.out.println("El archivo ya existe.");
            }

            // Escribir en el archivo
            FileWriter escritor = new FileWriter(archivo);
            escritor.write("Este texto va a añadirse a archivoEjemplo.\n");
            escritor.write("Puedes agregar más líneas aquí.\n");
            escritor.close();

            System.out.println("Contenido escrito en el archivo.");
        } catch (IOException e) {
            System.out.println("Ocurrió un error.");
            e.printStackTrace();
        }
    }
}
