import java.util.Scanner;

public class ConvertidorModel {

    public double Convertir(String unidadInicial, String unidadFinal, String cantidadStr) {
        double resultado = 0;

        double cantidad = Double.parseDouble(cantidadStr); // ?

        if (unidadInicial.equals("cm")){
            resultado = cantidad / 2.54;
        }
        else if(unidadInicial.equals("in")) {
            resultado = cantidad * 2.54;
        }
    return resultado;
    }
}




