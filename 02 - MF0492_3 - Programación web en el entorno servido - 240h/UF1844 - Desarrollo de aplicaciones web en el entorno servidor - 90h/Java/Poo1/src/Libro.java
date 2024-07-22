public class Libro {

    // Atributos
    String titulo;
    String autor;
    int year;

    // CONSTRUCTOR ** SE LLAMA IGUAL QUE LA CLASE **

    public Libro(String titulo, String autor, int year) {
        this.titulo = titulo;
        this.autor = autor;
        this.year = year;
    }

    // METODO mostrar los detalles del libro
    public void mostrarLibro() {
        System.out.println("Título: " + titulo);
        System.out.println("Autor: " + autor);
        System.out.println("Año de Publicación: " + year);
    }

}
