import java.util.Scanner;

public class ConvertidorView {

    public void mostrarMensaje(String mensaje) {
        System.out.println(mensaje);
    }

    public String leerUnidad(String mensaje) {
        Scanner scanner = new Scanner (System.in);
        System.out.print(mensaje);
        return scanner.nextLine();

    }

    public String leerCantidad(String mensaje) {
        Scanner scanner = new Scanner (System.in);
        System.out.print(mensaje);
        return scanner.nextLine();
    }
}
