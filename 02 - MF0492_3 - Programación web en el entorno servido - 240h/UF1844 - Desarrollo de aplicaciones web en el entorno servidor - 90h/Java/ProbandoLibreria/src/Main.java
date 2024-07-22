public class Main {
package main;
import modelo.Empleado;
import modelo.Persona;
import servicio.PersonaService;


    public class Main {
        public static void main(String[] args) {
            Persona persona = new Persona("Juan", 25);
            Empleado empleado = new Empleado("María", 30, 50000.0, "Gerente");

            PersonaService personaService = new PersonaService();
            personaService.imprimirDetalles(persona);
            personaService.imprimirDetalles(empleado);
        }
    }}