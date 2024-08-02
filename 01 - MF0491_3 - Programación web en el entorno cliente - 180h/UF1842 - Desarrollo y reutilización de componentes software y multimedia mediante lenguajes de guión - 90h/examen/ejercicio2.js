/*
    Se recorre la cadena según el número de caracteres de la cadena y en cada iteración
    se comprueba el caracter de la cadena de esa posición que si está en al array de vocales
    sube el contador de vocales. Cuando termina el bucle y sale de la función muestra el mensaje
    correspondiente.
*/
let cadenaTexto = "Bienvenido a España";
let contador = 0;
let vocales = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
contarVocales()
console.log ("La variable cadenaTexto tiene", contador, "vocales.");

function contarVocales() {
    for (let i = 0; i< cadenaTexto.length; i++) {
        if (vocales.includes(cadenaTexto[i])) { // Si el array incluye la letra de la cadena de la posición i es que es vocal entonces suma 1 al contador de vocales.
            contador++;
        }
    }
}