// Manipulaciones de texto
// Las cadenas de texto tienen indice que representa cada carácter. empezando por 0.

// Acceso a caracteres

const str = "Hola";
console.log(str[0]); // Salida: "H"

// 1. Longitud de una cadena
var v2 = "Pepe";
console.log(v2.length); // El resultado es 4 pero para recorrerlo en un bucle habria que ponerle el -1.!!
console.log(v2[v2.length-1]);

// 2. son inmutable no se puede modificara los caracteres de una cadena.

str[0] = "F"; // Se ignora la cadena de caracteres es inmutable.
console.log(str); 

// ************** FUNCIONES PARA MANIPULAR CADENAS DE CARACTERES (VER PDF)

// 1. Longitud de cadena

let texto = "Hola mundo";
console.log("Longitud de la variable texto es:", texto.length); 

// 2. Devolver el caracter de una posición

console.log("El primer carácter es: ",texto.charAt(0));  // H

// 3. Devolver una subcadena desde una posicion hasta otra

console.log(texto.substring(0, 4)); // DESDE la posicion 0 al 4 (Extrae desde el 0 hasta el 3)
console.log(texto[3]); 

// 4. Devolver la primera posición de una subcadena dentro de la cadena

console.log("Posicion de la subcadena mundo",texto.indexOf("mundo"));

// 5. Reemplazar una parte de la cadena por otra 
console.log("Reemplazando mundo x amigorrr:",texto.replace("mundo", "amigorrr"));

// 6. Convertir a mayusculas o minusculas

console.log(texto.toUpperCase());
console.log(texto.toLowerCase()); 

// 7. Eliminar los espacios en blanco AL PRINCIPIO Y AL FINAL DE LA CADENA

console.log("texto sin espacios:",texto.trim()); 

// 8. Convertir una cadena en un array donde pongamos un separador )

let vArray = texto.split(" "); // En la cadena cada vez que vea un espacio hace un elemento de array. Le podemos decir cualquier caracter.
console.log("Array: ",vArray);

// 9. Concatenar dos o más cadenas

let str1 = "Hola";
let str2 = "mundo";
console.log("Concatenar dos cadenas: ",str1.concat("x", str2)); // x Es el caracter que se incluye entre cadenas. pondremos un espacio.

// 10. Comprobar si una cadena empieza o termina por una subcadena

console.log(texto.startsWith("Hola")); // true. Empieza por Hola
console.log(texto.endsWith("Hola")); // false. No termina por Hola

// 11. Extrae una subcadena de una cadena DESDE una posición HASTA otra.

console.log(texto.slice(1, 4)); // ola (Extrae desde el 1 hasta el 3)

// 12. Repetir una cadena x vece.

console.log(texto.repeat(3));

