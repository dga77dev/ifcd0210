package test;

import modelo.Persona;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class PersonaTest {

    @Test
    public void testConstructor() {
        Persona persona = new Persona("Juan", 25);
        assertEquals("Juan", persona.getNombre());
        assertEquals(25, persona.getEdad());
    }

    @Test
    public void testGettersAndSetters() {
        Persona persona = new Persona("Juan", 25);

        persona.setNombre("Pedro");
        assertEquals("Pedro", persona.getNombre());

        persona.setEdad(30);
        assertEquals(30, persona.getEdad());
    }
}
