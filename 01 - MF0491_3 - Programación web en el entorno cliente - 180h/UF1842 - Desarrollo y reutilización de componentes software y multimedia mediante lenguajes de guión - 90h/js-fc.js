// comentario una linea

/*
    comentario varias lineas
*/


/* General

    - JS Es interpretado
    - Es CaseSensitive (Daría error ReferenceError)
    - Tipado débil

*/
/* Tipos de datos: */

number; // numero enteros y decimales


let num1 = 10;
let flotante = 3.14;
var suma = num1 + flotante;
console.log(suma);


undefined; // indefinido
null; // nulo

/* variable
    Hay variables de tipo var (global) y let (bloque)
*/
var edad = 16;
var mayor;
var a; 
/* constante
    no puede cambiar su valor
*/


// mostrar valores por consola 

console.log(edad);
console.log(mayor);


// operadores

// = operador de asignacion

// Declarar variable es crear el nombre de la variable.

var miIdioma = "Español"; // DECLARAMOS variable y ASIGNAMOS valor.

// Variable NO INICIALIZADA (es la que no contiene valor)

var numero; // devolvera undefined

// Operaciones aritmeticas + - * / % (% es el resto )

var suma = 7 + 12;
console.log(suma);


var div1 = 5.0 / 2;
console.log(div1);

var resto = 15 % 5;
console.log(resto);

var resto = 7 % 2;
console.log(resto);

// contador dos formas

var libros = 105;
libros = libros + 1;
libros++;
console.log(libros);

// reducir dos formas

libros = libros - 1;
libros--;
console.log(libros);

// sumar 5 a una variable. dos formas
a = 0;
a = a + 5;
a += 5;

console.log(a);

// restar 5
a = a - 5;
a -= 5; // resta- asigna= 5



//const z;
// console.log(z);