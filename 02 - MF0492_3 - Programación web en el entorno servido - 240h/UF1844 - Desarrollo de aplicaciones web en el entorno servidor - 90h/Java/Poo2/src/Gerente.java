public class Gerente extends Empleado {
    String departamento;

    // CONSTRUCTOR
    public Gerente (String nombre, int salario, String departamento){
        super(nombre, salario);
        this.departamento = departamento;
    }

    // METODO QUE SOBREESCRIBE AL DE LA CLASE PADRE
    @Override       // Es una anotación de sobre carga
    public void mostrarEmpleado() {     // El método se tiene que llamar igual que el de la clase padre.
        super.mostrarEmpleado();
        System.out.println ("Departamento: " + departamento);
    }

}
