package Caso2;

public class E2 {

    // Método que devuelve el resulado.

    public static double calcularMedia(int[] numeros) {
        int suma = 0;
        for (int i = 0; i < numeros.length; i++) {
            suma += numeros[i];
        }
        return (double) suma / numeros.length;
    }

    // Programa

    public static void main(String[] args) {

        // Declaramos y asignamos valores a un array de 5 elementos
        int[] numeros = new int[5];
        numeros[0] = 5;
        numeros[1] = 5;
        numeros[2] = 5;
        numeros[3] = 5;
        numeros[4] = 5;

        // Llamamos al metodo que calcula la media y lo almacena en media y mostramos resultado.
        double media = calcularMedia(numeros);
        System.out.println("La media aritmética es: "+media);
    }

}