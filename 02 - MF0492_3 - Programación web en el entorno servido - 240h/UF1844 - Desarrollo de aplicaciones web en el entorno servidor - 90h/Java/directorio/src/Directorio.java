import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class directorio {
    public static void main(String[] args) {
        // Comando a ejecutar
        String command = "ls"; // Para Linux/Mac

        try {
            // Ejecutar el comando
            Process process = Runtime.getRuntime().exec(command);

            // Leer la salida del proceso
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }

            // Esperar a que el proceso termine y obtener el código de salida
            int exitCode = process.waitFor();
            System.out.println("Exited with code: " + exitCode);

        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }
}
