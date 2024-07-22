package csvfiles;

import java.io.FileWriter;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.IOException;

public class ManejoCSV {
    
    // Método para escribir datos en un archivo CSV
    public static void escribirCSV(String[][] datos, String rutaArchivo) {
        try (FileWriter fw = new FileWriter(rutaArchivo)) {
            // Iterar sobre los datos para escribir cada fila en el archivo
            for (String[] fila : datos) {
                fw.write(String.join(",", fila) + "\n"); // Concatenar los datos de la fila separados por comas
            }
            System.out.println("Datos escritos correctamente en el archivo CSV.");
        } catch (IOException e) {
            e.printStackTrace(); // Manejar excepciones de E/S imprimiendo el rastreo de la pila
        }
    }

    // Método para leer datos desde un archivo CSV
    public static void leerCSV(String rutaArchivo) {
        try (BufferedReader br = new BufferedReader(new FileReader(rutaArchivo))) {
            String linea;
            // Leer cada línea del archivo
            while ((linea = br.readLine()) != null) {
                String[] datos = linea.split(","); // Separar los datos por comas
                for (String dato : datos) {
                    System.out.print(dato + "\t"); // Imprimir cada dato separado por tabulaciones
                }
                System.out.println(); // Nueva línea después de imprimir cada fila de datos
            }
        } catch (IOException e) {
            e.printStackTrace(); // Manejar excepciones de E/S imprimiendo el rastreo de la pila
        }
    }

    public static void main(String[] args) {
        // Datos de ejemplo para escribir en el archivo CSV
        String[][] datos = {
            {"Nombre", "Edad", "Ciudad"},
            {"Juan", "30", "Madrid"},
            {"María", "25", "Barcelona"},
            {"Carlos", "35", "Valencia"}
        };

        // Ruta del archivo CSV donde se guardarán y leerán los datos
        String rutaArchivo = "resources/datos.csv";

        // Escribir datos en el archivo CSV
        escribirCSV(datos, rutaArchivo);

        // Leer datos desde el archivo CSV
        System.out.println("Datos leídos desde el archivo CSV:");
        leerCSV(rutaArchivo);
    }
}
