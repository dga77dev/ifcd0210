import java.io.IOException;

public class PruebaAnadirRegistros {
    public static void main(String[] args) {
        // Crear instancia de GestorArchivoTexto
        GestorArchivoTexto gestor = new GestorArchivoTexto("resources/file.txt");

        try {
            // Crear el archivo si no existe
            gestor.crearArchivo();

            // Escribir texto en el archivo
            gestor.escribirTexto("Este es un texto de prueba.");
            gestor.escribirTexto("Este es otro texto de prueba.");

            // Leer texto del archivo
            String contenido = gestor.leerTexto();
            System.out.println("Contenido del archivo:");
            System.out.println(contenido);
        } catch (IOException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
