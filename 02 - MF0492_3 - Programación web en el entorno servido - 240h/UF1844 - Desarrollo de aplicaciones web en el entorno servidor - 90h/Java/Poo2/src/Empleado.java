public class Empleado {
    String nombre;
    int salario;

    // CONSTRUCTOR

    public Empleado (String nombre, int salario) {
        this.nombre = nombre;
        this.salario = salario;
    }

    // METODO PARA MOSTRAR DATOS DEL EMPLEADO

    public void mostrarEmpleado(){
        System.out.println("Nombre: "+ nombre);
        System.out.println("Salario:" + salario);
    }
}


