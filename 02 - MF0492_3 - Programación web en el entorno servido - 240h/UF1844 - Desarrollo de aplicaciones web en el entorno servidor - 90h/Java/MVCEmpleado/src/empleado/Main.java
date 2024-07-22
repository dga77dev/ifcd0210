package empleado;

public class Main {
    public static void main(String[] args) {
        // Crear modelo, vista y controlador
        EmpleadoModel modelo = new EmpleadoModel("Juan", 30, 2500);
        EmpleadoView vista = new EmpleadoView();
        EmpleadoController controlador = new EmpleadoController(modelo, vista);

        // Actualizar vista con los datos actuales
        controlador.actualizarVista();

        // Cambiar los datos del empleado
        controlador.setEmpleado("Pedro", 35, 3000);

        // Actualizar vista con los nuevos datos
        controlador.actualizarVista();
    }
}

