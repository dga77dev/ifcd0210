package Caso4;

public class Main {
    public static void main(String[] args) {

        // Creamos los objetos modelo, vista y controlador que utiliza el modelo y la vista.

        ConvertidorModel modelo = new ConvertidorModel();
        ConvertidorView vista = new ConvertidorView();
        ConvertidorController controlador = new ConvertidorController(modelo, vista);

        // Se llama para convertir las unidades.
        controlador.convertirUnidades();
    }
}

