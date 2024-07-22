package servicio;

import modelo.Persona;
import modelo.Empleado;


public class PersonaService {
    public void imprimirDetalles(Persona persona) {
        System.out.println("Nombre: " + persona.getNombre());
        System.out.println("Edad: " + persona.getEdad());
    }

    public void imprimirDetalles(Empleado empleado) {
        System.out.println("Nombre: " + empleado.getNombre());
        System.out.println("Edad: " + empleado.getEdad());
        System.out.println("Salario: " + empleado.getSalario());
        System.out.println("Puesto: " + empleado.getPuesto());
    }
}
