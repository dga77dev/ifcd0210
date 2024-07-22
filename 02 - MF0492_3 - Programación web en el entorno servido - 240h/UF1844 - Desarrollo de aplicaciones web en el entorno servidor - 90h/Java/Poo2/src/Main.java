/*
    HERENCIA Y POLIMORFISMO
    3. Definir una clase "Empleado" con atributos para el nombre y el salario. Crea una subclase "Gerente" que
    agrega un atributo para el departamento y sobrescribe un método para mostrar los detalles del empleado.
    4. Definir una clase abstracta "Vehiculo" con un método abstracto "mover". Crea subclases "Coche" y
    "Bicicleta" que implementen el método "mover" de diferentes maneras.
*/
public class Main {
    public static void main(String[] args) {
        // 3- Hereda de la clase empleado atributos y sobreescribe su metodo
        Gerente jefe1 = new Gerente("Paco", 1000, "RRHH");
     // ^Clase^             ^Constructor //<---

        // Gerente jefe2 = new Gerente(); // Da error por que tiene constructor si no si funcina.
        jefe1.mostrarEmpleado();

        // 4- Abstraccion
        Vehiculo miCoche = new Coche();
        Vehiculo miBicicleta = new Bicicleta();

        miCoche.mover();
        miBicicleta.mover();


    }
}