import java.io.IOException;

public class PruebaArchivo {
    public static void main(String[] args) {
        // Crear instancia de GestorArchivoTexto
        GestorArchivoTexto gestor = new GestorArchivoTexto("resources/file.txt");

        // Crear el archivo si no existe
        try {
            gestor.crearArchivo();
        } catch (IOException e) {
            System.out.println("Error al crear el archivo: " + e.getMessage());
        }

        // Verificar existencia del archivo
        if (gestor.verificarExistenciaArchivo()) {
            System.out.println("El archivo existe en la carpeta resources.");
        } else {
            System.out.println("El archivo no existe en la carpeta resources.");
        }

        // Borrar el archivo si existe
        if (gestor.borrarArchivo()) {
            System.out.println("El archivo se ha borrado correctamente.");
        } else {
            System.out.println("No se pudo borrar el archivo.");
        }

        // Escribir texto en el archivo
        try {
            gestor.escribirTexto("Este es un texto de prueba.");
        } catch (IOException e) {
            System.out.println("Error al escribir en el archivo: " + e.getMessage());
        }

        // Leer texto del archivo
        try {
            String texto = gestor.leerTexto();
            System.out.println("Texto leído del archivo:");
            System.out.println(texto);
        } catch (IOException e) {
            System.out.println("Error al leer el archivo: " + e.getMessage());
        }
    }
}
