package Caso3;

public class Rectangulo {
    public int longitud, ancho;
    // Constructor
    public Rectangulo(int longitud, int ancho) {
        this.longitud = longitud;
        this.ancho = ancho;
    }

    // Método para calcular el área
    public double calcularArea() {
        return longitud * ancho;
    }
}
