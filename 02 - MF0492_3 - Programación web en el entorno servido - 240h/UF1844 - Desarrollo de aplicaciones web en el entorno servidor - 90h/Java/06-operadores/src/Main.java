public class Main {
    public static void main(String[] args) {
        /*
        Operadores Matemáticos y Asignación:
        Declara una variable entera `contador` y asígnale el valor 0. Utiliza un bucle `do-while` para incrementar
        `contador` en 5 en cada iteración hasta que `contador` sea mayor que 50. Muestra el valor de `contador` en
        cada iteración.
         */
        Integer contador = 0;
        do  {
            System.out.println(contador);
            contador +=5;
        } while (contador<=50);
    }
}