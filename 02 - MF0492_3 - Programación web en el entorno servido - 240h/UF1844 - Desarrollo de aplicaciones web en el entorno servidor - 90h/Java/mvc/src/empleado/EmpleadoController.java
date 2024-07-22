package empleado;

public class EmpleadoController {
    private EmpleadoModel modelo;
    private EmpleadoView vista;

    public EmpleadoController(EmpleadoModel modelo, EmpleadoView vista) {
        this.modelo = modelo;
        this.vista = vista;
    }


    /* Coge de la vista */

    public void actualizarVista() {
        vista.mostrarEmpleado(modelo.getNombre(), modelo.getEdad(), modelo.getSalario());
    }

    public void setEmpleado(String nombre, int edad, double salario) {
        modelo.setNombre(nombre);
        modelo.setEdad(edad);
        modelo.setSalario(salario);
    }
}
