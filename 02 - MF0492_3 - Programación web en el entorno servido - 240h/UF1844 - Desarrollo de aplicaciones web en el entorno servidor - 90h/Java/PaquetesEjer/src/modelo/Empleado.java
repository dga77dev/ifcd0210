package modelo;

public class Empleado extends Persona {
    private double salario;
    private String puesto;

    public Empleado(String nombre, int edad, double salario, String puesto) {
        super(nombre, edad);
        this.salario = salario;
        this.puesto = puesto;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }
}
