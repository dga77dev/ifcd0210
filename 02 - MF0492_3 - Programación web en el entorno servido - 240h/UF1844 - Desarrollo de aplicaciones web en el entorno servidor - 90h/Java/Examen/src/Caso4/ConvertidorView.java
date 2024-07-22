package Caso4;
import java.util.Scanner;

public class ConvertidorView {

    // Para mostrar los mensajes por pantalla
    public void mostrarMensaje(String mensaje) {
        System.out.println(mensaje);
    }

    // Para obtener valores tipo de unidad pantalla
    public String leerUnidad(String mensaje) {
        Scanner scanner = new Scanner (System.in);
        System.out.print(mensaje);
        return scanner.nextLine();

    }

    // Para obtener la cantidad por pantalla
    public String leerCantidad(String mensaje) {
        Scanner scanner = new Scanner (System.in);
        System.out.print(mensaje);
        return scanner.nextLine();
    }
}

