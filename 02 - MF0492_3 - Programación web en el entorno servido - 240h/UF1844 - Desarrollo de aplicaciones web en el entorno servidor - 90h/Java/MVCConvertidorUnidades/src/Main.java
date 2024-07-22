public class Main {
    // ConvertidorApp.java
        public static void main(String[] args) {
            ConvertidorModel modelo = new ConvertidorModel();
            ConvertidorView vista = new ConvertidorView();
            ConvertidorController controlador = new ConvertidorController(modelo, vista);
            // Se llama para convertir las unidades.
            controlador.convertirUnidades();
        }
}
