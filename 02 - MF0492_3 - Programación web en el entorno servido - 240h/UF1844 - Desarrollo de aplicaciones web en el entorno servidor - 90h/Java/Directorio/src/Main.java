import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;



public class Main {

        public static void main(String[] args) {
            // Comando a ejecutar
            String command = "cmd /c dir"; // Para Windows
            // String command = "ls"; // Para Linux/Mac

            // Crear el ProcessBuilder
            ProcessBuilder processBuilder = new ProcessBuilder(command.split(" "));

            try {
                // Iniciar el proceso
                Process process = processBuilder.start();

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

}