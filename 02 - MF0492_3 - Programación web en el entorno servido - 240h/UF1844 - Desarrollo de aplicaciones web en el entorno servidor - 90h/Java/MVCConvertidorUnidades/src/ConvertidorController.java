public class ConvertidorController {
    private ConvertidorModel modelo;
    private ConvertidorView vista;

    public ConvertidorController(ConvertidorModel modelo, ConvertidorView vista) {
        this.modelo = modelo;
        this.vista = vista;
    }

    public void convertirUnidades(){
        String unidadInicial = vista.leerUnidad("Ingresar unidad inicial (cm/in):");


        String unidadFinal = vista.leerUnidad("Ingresar la unidad final (cm/in):");

        // validar que tipos sean correctos
        if (!unidadInicial.equals("cm") && !unidadFinal.equals("in")) {
            vista.mostrarMensaje ("LOS TIPOS DE MEDIDAS DEBEN SER CM O IN.");
        }

        // Validar que no sean las mismos tipos
        if (unidadInicial.equals(unidadFinal)) {
            vista.mostrarMensaje ("NO SE PUEDE HACER UNA CONVERSIÓN DEL MISMO TIPO");
            return;
        }

        String cantidadStr = vista.leerCantidad("Ingrese la cantidad a ingresar:");

        // Validar que sea numero la cantidad
        double cantidad;
        try {
            cantidad = Double.parseDouble(cantidadStr);
        } catch (NumberFormatException e) {
            vista.mostrarMensaje ("LA CANTIDAD INGRESADA NO ES VÁLIDA.");
            return;
        }


        // Convertir las unidades

        double resultado = modelo.Convertir(unidadInicial, unidadFinal, cantidadStr);
        vista.mostrarMensaje("Resultado es: " + resultado);
    }


}
