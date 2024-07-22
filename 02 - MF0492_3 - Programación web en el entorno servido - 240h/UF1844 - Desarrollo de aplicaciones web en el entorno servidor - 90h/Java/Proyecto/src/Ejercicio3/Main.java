package Ejercicio3;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Leer el nombre de la persona
        System.out.print("Introduce el nombre: ");
        String nombre = scanner.nextLine();

        // Leer la edad de la persona
        System.out.print("Introduce la edad: ");
        int edad = scanner.nextInt();

        // Crear una instancia de Persona
        Persona persona = new Persona(nombre, edad);

        // Mostrar la información de la persona
        persona.mostrarInformacion();

        // Cerrar el scanner
        scanner.close();
    }
}

