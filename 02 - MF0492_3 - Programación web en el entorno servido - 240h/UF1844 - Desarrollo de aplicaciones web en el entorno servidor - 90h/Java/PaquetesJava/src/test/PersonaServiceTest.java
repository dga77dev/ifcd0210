package test;

import servicio.PersonaService;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import modelo.Persona;
import modelo.Empleado;

public class PersonaServiceTest {

    private final ByteArrayOutputStream outContent = new ByteArrayOutputStream();
    private final PrintStream originalOut = System.out;

    
    //Este método se ejecuta antes de cada prueba y redirige la salida estándar 
    //a un ByteArrayOutputStream para capturar la salida generada por el 
    //método imprimirDetalles.
    @Before
    public void setUpStreams() {
        System.setOut(new PrintStream(outContent));
    }

    //Este método se ejecuta después de cada prueba 
    //y restaura la salida estándar a su estado original.
    @After
    public void restoreStreams() {
        System.setOut(originalOut);
    }

    @Test
    public void testImprimirDetallesPersona() {
        Persona persona = new Persona("Juan", 30);
        PersonaService service = new PersonaService();
        service.imprimirDetalles(persona);
        String expectedOutput = "Nombre: Juan\nEdad: 30\n";
        assertEquals(expectedOutput, outContent.toString());
    }

    @Test
    public void testImprimirDetallesEmpleado() {
        Empleado empleado = new Empleado("Pedro", 35, 60000, "Gerente");
        PersonaService service = new PersonaService();
        service.imprimirDetalles(empleado);
        String expectedOutput = "Nombre: Pedro\nEdad: 35\nSalario: 60000.0\nPuesto: Gerente\n";
        assertEquals(expectedOutput, outContent.toString());
    }

    @Test
    public void testImprimirDetallesPersonaNull() {
        Persona persona = null;
        PersonaService service = new PersonaService();
        service.imprimirDetalles(persona);
        assertTrue(outContent.toString().isEmpty());
    }
}
