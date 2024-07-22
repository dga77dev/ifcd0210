
public class Main {
    public static void main(String[] args) {
        try {
            int num1, num2, resultado;
            num1 = 100;
            num2 = 0;
            resultado = num1 / num2;
            System.out.println(resultado);
        }
        catch (ArithmeticException e) {
            System.out.println("Error: ¡¡No se pueden realizar divisiones por 0.!!");
        }
        catch (NumberFormatException e) {
            System.out.println("Error: Se debe introducir números.");
            }
        }
    }
