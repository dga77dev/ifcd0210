package csvfiles;

public class PruebaCSV {
    public static void main(String[] args) {
        // Datos de ejemplo
        String[][] datos = {
            {"Nombre", "Edad", "Ciudad"},
            {"Juan", "30", "Madrid"},
            {"María", "25", "Barcelona"},
            {"Carlos", "35", "Valencia"}
        };

        // Ruta del archivo CSV en la carpeta resources
        String rutaArchivo = "resources/file.csv";

        // Escribir datos en el archivo CSV
        ManejoCSV.escribirCSV(datos, rutaArchivo);
        System.out.println("Datos escritos en el archivo CSV.");

        // Leer datos desde el archivo CSV
        System.out.println("Datos leídos desde el archivo CSV:");
        ManejoCSV.leerCSV(rutaArchivo);
    }
}
