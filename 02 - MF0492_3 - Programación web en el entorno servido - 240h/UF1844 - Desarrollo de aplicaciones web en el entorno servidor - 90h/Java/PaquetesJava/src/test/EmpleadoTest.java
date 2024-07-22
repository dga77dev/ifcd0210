package test;

import modelo.Empleado;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class EmpleadoTest {

    @Test
    public void testConstructor() {
        Empleado empleado = new Empleado("Juan", 30, 50000, "Gerente");
        assertEquals("Juan", empleado.getNombre());
        assertEquals(30, empleado.getEdad());
        assertEquals(50000, empleado.getSalario(), 0.001);
        assertEquals("Gerente", empleado.getPuesto());
    }

    @Test
    public void testGettersAndSetters() {
        Empleado empleado = new Empleado("Juan", 30, 50000, "Gerente");

        empleado.setNombre("Pedro");
        assertEquals("Pedro", empleado.getNombre());

        empleado.setEdad(35);
        assertEquals(35, empleado.getEdad());

        empleado.setSalario(60000);
        assertEquals(60000, empleado.getSalario(), 0.001);

        empleado.setPuesto("Director");
        assertEquals("Director", empleado.getPuesto());
    }
}
