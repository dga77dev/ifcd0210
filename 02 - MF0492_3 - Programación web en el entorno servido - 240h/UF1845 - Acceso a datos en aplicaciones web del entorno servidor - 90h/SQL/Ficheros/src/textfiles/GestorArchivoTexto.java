package textfiles;

import java.io.File;
import java.io.FileWriter;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;

public class GestorArchivoTexto {
    private String rutaArchivo;

    public GestorArchivoTexto(String rutaArchivo) {
        this.rutaArchivo = rutaArchivo;
    }

    public boolean verificarExistenciaArchivo() {
        File archivo = new File(rutaArchivo);
        return archivo.exists();
    }

    public boolean borrarArchivo() {
        File archivo = new File(rutaArchivo);
        return archivo.delete();
    }

    public void crearArchivo() throws IOException {
        File archivo = new File(rutaArchivo);
        if (!archivo.exists()) {
            archivo.createNewFile();
            System.out.println("Se ha creado un nuevo archivo.");
        }
    }

    public void escribirTexto(String texto) throws IOException {
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(rutaArchivo, true))) {
            bw.write(texto);
            bw.newLine(); // Añadir una nueva línea después de cada registro
            System.out.println("Se ha añadido texto al archivo.");
        }
    }

    public String leerTexto() throws IOException {
        StringBuilder contenido = new StringBuilder();
        try (BufferedReader br = new BufferedReader(new FileReader(rutaArchivo))) {
            String linea;
            while ((linea = br.readLine()) != null) {
                contenido.append(linea).append("\n");
            }
        }
        return contenido.toString();
    }
}
