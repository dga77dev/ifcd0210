// TIPOS DE DATOS MÁS ESTRUCTURADOS

// ****** BIGINT

const valorGrande = 1234567890123456789012345678901234567890n;

// ****** FUNCION

function sumar(a, b) {
    return a + b;
}

// Tipo Date (Fecha)

var fechaActual = new Date();
console.log("Fecha actual:", fechaActual);


var miCumpleaños = new Date(1990, 6, 15); 
console.log("Mi cumpleaños:", miCumpleaños);

// Fecha de forma individual

fecha = new Date();
let año = fecha.getFullYear();
let mes = fecha.getMonth(); // Los meses comienzan desde 0 (enero) hasta 11 (diciembre)
let dia = fecha.getDate();
let hora = fecha.getHours();

var minutos = fecha.getMinutes();
var segundos = fecha.getSeconds();
console.log ("${dia}"); // probar si sale en windows igual.
console.log("Fecha actual: ${dia}/${mes + 1}/${año}"); // para no tener que concatenar por separado $nombredevariable
console.log('Hora actual: ${hora}:${minutos}:${segundos}');

// Fecha como cadena de texto

var fecha = new Date();
var opciones = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
var fechaFormateada = fecha.toLocaleDateString('es-ES', opciones);
console.log("Fecha formateada:", fechaFormateada);


// Operaciones con fechas:

fechaActual = new Date();
fechaFutura = new Date(fechaActual);
fechaFutura.setDate(fechaActual.getDate() + 7); // Sumar 7 días
console.log("Fecha dentro de una semana:", fechaFutura);


var milisegundosEnUnDia = 24 * 60 * 60 * 1000;
var fechaPasada = new Date(fechaActual.getTime() - milisegundosEnUnDia); // Restar 1 día
console.log("Fecha de ayer:", fechaPasada);

var dia1 = fecha.getDate();
console.log(dia1);



var segundosDia = 24 * 60 * 60;
var diasMes 
console.log("Segundos en mes...."+segundosDia*30);

console.log(fechaActual.getTime);

// ******** RegExp (Expresión Regular)

var expresionRegular = /[a-z]+/;

// Definir una expresión regular para buscar números de teléfono en formato (XXX) XXX-XXXX
var expresionRegular = /\(\d{3}\) \d{3}-\d{4}/;

// Definir una cadena de texto para buscar el número de teléfono
const texto = "Mi número de teléfono es (123) 456-7890. Llámame si tienes alguna pregunta.";

// Buscar coincidencias utilizando la expresión regul
const coincidencias = texto.match(expresionRegular);

// Imprimir las coincidencias encontradas
console.log("Coincidencias encontradas:", coincidencias);


// ******************************** SET

// Crear un nuevo Set
const miSet = new Set();
// Agregar elementos al Set
miSet.add(1);
miSet.add(2);
miSet.add(3);
miSet.add(1); // Duplicado, será ignorado
// Verificar si un elemento está en el Set
console.log(miSet.has(2)); // Imprimirá: true
console.log(miSet.has(4)); // Imprimirá: false
// Obtener el tamaño del Set
console.log("Tamaño del Set:", miSet.size); // Imprimirá: 3
// Iterar sobre los elementos del Set
miSet.forEach(function(valor) {
console.log("Elemento:", valor);
});
// Eliminar un elemento del Set
miSet.delete(2);
// Convertir el Set a un array
const arrayDesdeSet = Array.from(miSet);
console.log("Array desde Set:", arrayDesdeSet); // Imprimirá: [1, 3]


// los arrays si se pueden tipar para manejo de enteros de x bits

const arrayEnteros = new Int32Array(3); // Array de 3 enteros de 32 bits con signo
const typedArray = new Uint8Array(4);

// Array de tipo de caracteres.

const caracteresArray = new Uint8Array(5);

