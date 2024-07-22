// Arrays

// Crear un array vacío
//
let miArray = [];
let miOtroArray = new Array();

// Crear array con datos;

let miArray2 = ["Juan", true, 55];
let miOtroArray2 = ["Reme", false, undefined, null, 34.3, "p"];

// 

const megaArray =[miArray2, miOtroArray2]; // Array con dos arrays

console.log(megaArray);

// Acceder a un elemento del array

console.log("Elemento 1 de miArray2:",miArray2[0]);

// Editar un elmento del array

console.log(miArray2);
miArray2 [2] = 20;
console.log(miArray2[2]);

// Número de elementos de un array

console.log(miArray2.length);

// Experimeno creando un elemento con un indice superior.
let miArray3=[];
miArray3[333]="Nuevo elemento"; // Experimento. Al crear un elemento en una posición crea los anteriores como
console.log(miArray3);
console.log(miArray3[200]);// Agregar un elemento al final

// Añadir un elemento al final del array

miArray2.push("nuevo ultimo elemento");
console.log(miArray2);
console.log(miArray2.length);

miArray2.push("Otro nuevo ultimo elemento", "mas otro extra"); // Añadimos 2 elementos al final.
console.log("\n>>>",miArray2);
console.log(miArray2.length);
console.log("\nElemento 3 del array",miArray2[3]);

// Añadir elementos al principio del Array

miArray2.unshift ("nuevo1", "nuevo2");
console.log("\nCon dos elementos nuevos al principio",miArray2);

// Eliminar el ultimo elemento del array

miArray2.pop();
console.log("Eliminando el ultimo elemento:",miArray2);

// Eliminar el primer elemento

miArray2.shift();
console.log("\nEliminando el primer elemento:",miArray2);

// Iterara (recorrer) un array con bucle
console.log("\n Recorrer Array\n");
for (let i = 0; i < miArray2.length; i++) {
    console.log(miArray2[i]);
}

// Cambiar en contenido del array eliminando y agregando elemento

miArray2.splice(2, 1, "Entre medias eliminando el indice2"); // primero borra 1 elemento en la posicion 2 
console.log("\nElemento numero 2 cambiado por EM", miArray2);

// Insertar un elemento en la posicion dos sin eliminar

miArray2.splice(2, 0, "Nuevo entre medias");
console.log("\nAgregando un elemento en la posicion 2", miArray2);

// Copia de una parte del array
let subArray = miArray2.slice(1, 4);
console.log("\nSubarray de elementos ENTRE(1, 4) O SEA el 1,2 y 3:", subArray);

// CONCATENAR DOS ARRAYS

let otroArrayMas = [true, false];
miArray2 = miArray2.concat(otroArrayMas);
console.log(miArray2);

// Pasar los elementos a una cadena añadiendo un separador

let cadena = miArray2.join("#");
console.log("\n Elementos del array a cadena:",cadena);

// Invertir elementos de una array;

miArray2.reverse();
console.log("Después de reverse():", miArray2);

//// continuará ARRAYMULTIDIMENSIONAL
////