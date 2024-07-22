package Archivos;
import java.io.File;
import java.io.IOException;
import java.io.FileWriter;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.BufferedWriter;

public class GestionArchivoTexto {
    // Atributos
    private String rutaArchivo; // Solo puede acceder la clase GestionArchivoTexto

    // Constructor
    public GestionArchivoTexto(String rutaArchivo){
        this.rutaArchivo = rutaArchivo;
    }

    // Metodos

    public boolean verificar(){
        File archivo = new File (rutaArchivo);
        return archivo.exists(); // retorna true si el archivo existe
    }

    public boolean eliminar(){
        File archivo = new File (rutaArchivo);
        return archivo.delete(); // Retorna true si el archivo se elimina
    }

    public void  crear(String texto) throws IOException {
            File archivo= new File(rutaArchivo);
            // Verificar si el archivo ya existe
            if (!archivo.exists()) {
                archivo.createNewFile();
                System.out.println ("Se ha creado un nuevo archivo.");
            } else {
                System.out.println("El archivo no se ha creado.");
            }
    }


    public void escribirTexto(String texto) throws IOException{
        try (BufferedWriter bw = new BufferedWriter (new FileWriter (rutaArchivo,true))) {
            bw.write(texto);
            bw.newLine(); // Anade una linea despues de cada registro
            System.out.println ("Se ha añadido texto al archivo.");
        }

    }

    public String leerTexto() throws IOException {
        StringBuilder contenido = new StringBuilder();
        try (BufferedReader br = new BufferedReader(new FileReader(rutaArchivo))) {
            String linea;
            while ((linea = br.readLine()) !=null) {
                contenido.append(linea).append("\n");
            }
        }
        return contenido.toString();
    }
}
