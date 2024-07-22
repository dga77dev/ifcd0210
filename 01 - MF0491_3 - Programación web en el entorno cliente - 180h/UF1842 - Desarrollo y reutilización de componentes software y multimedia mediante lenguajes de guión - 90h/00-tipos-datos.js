// Tipos de datos
//


//  ******************** NUMEROS

let numero = 100;
let flotante = 3.14;
let suma = numero + flotante;
let resta = numero - flotante;
let multiplicacion = numero * flotante;
let division = numero / flotante;

console.log(suma+ " La suma num+flo es tipo "+typeof suma);
console.log(resta+ " La suma num-flo es tipo "+typeof resta);
console.log(multiplicacion+ " La suma num*flo es tipo "+typeof multiplicacion);
console.log(division+ " La suma num/flo es tipo "+typeof division);

//  ******************** STRING

let saludo ="Hola mundo. ";
let nombre = `Juan`;

let mensaje = saludo + 'Mi nombre es '+nombre;

console.log(mensaje+ ' que es tipo '+typeof mensaje);

//  ******************** BOOLEANOS

let esVerdadero = true;
let esFalso = false;

// Realizar operaciones logicas

let resultadoAnd = esVerdadero && esFalso;
let resultadoOr = esVerdadero || esFalso;
let resultadoNot = !esVerdadero;

// ....

//  ******************** NULL
// Representa la ausencia de valor de forma intencionada

let miVariable = null;

if (miVariable === null) {
    console.log("La variable está inicializada como null.");
    } else {
        console.log ( "La variable no está inicializada como null,");
}

//  ******************** UNDEFINED
// Representa una variable que no ha sido asignada.



//  ******************** OBJETOS
// Se utiliza para almacenar colecciones de datos clase-valor

let persona = {
    nombre: "Juan",
    edad: 30,
    ciudad: "Madrid",
    saludar: function() {
        console.log ("Hola mi nombre es "+this.nombre +", teno "+this.edad+" años y vivo en "+this.ciudad+".");
    }
}

// *Acceder a las propiedades

console.log ("Nombre: ", persona.nombre);
console.log("Edad:", persona.edad);
console.log("Ciudad:", persona.ciudad); 

// *LLamar al método del objeto

persona.saludar();


//  ******************** Array
// Es una colección de valores.

var colores = ["rojo", "verde", "azul"]; // El indice de la posicion siempre es el 0
let numeros = [1, 2, 3, 4, 5]; // El indice empieza por 0 siempre

console.log("Primer elemento:", colores[0]); 
console.log("Segundo elemento:", numeros[1]); 

// Iterar son forEach ---> Recorre el array
console.log("Elementos del array:");
numeros.forEach(function(colores) {
    console.log(colores); 
});

// Añadir un elemento al final del array
numeros.push(6);
console.log("Array después de añadir un elemento:", numeros);

// Eliminar el último elemento del array
let ultimoElemento = numeros.pop();
console.log("Último elemento eliminado:", ultimoElemento);
console.log("Array después de eliminar el último elemento:", numeros); 

// ************* Symbol (No se utiza)

// Crear un símbolo con descripción
const miSimbolo = Symbol('Descripción de mi símbolo');
// Crear un objeto con una propiedad de tipo símbolo
const persona2 = {
nombre: 'Juan',
edad: 30,
[miSimbolo]: 'Valor secreto'
};

console.log(persona[miSimbolo]);



