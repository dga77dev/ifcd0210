/*
Suma de elementos: Escribe una función que reciba un array de números y
devuelva la suma de todos los elementos.
*/

var numeros = [4, 100, 10, 6, 15];

function sumaArray(arrayRecibido) {
    let acumulador = 0;
    for (let i = 0; i < arrayRecibido.length; i++){
        acumulador += arrayRecibido[i];
    }
    console.log(acumulador);
}

sumaArray(numeros)

/*
    Conteo de vocales: Escribe una función que tome una cadena de texto como
    entrada y devuelva el número de vocales que contiene.

    Sol: Recorrer una cadena comprobando si la letra está en el array de vocales.
*/

let contador = 0;
let cadena = "Acido desoxirribonucleico";
const vocales = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
for (let i=0 ; i<cadena.length; i ++) {
    if (vocales.includes(cadena[i])) {  // Si el array (aeiouAEIOU) contiene la letra suma 1.
        contador++;
    }
}
console.log("\n Hay",contador,"vocales");

/*
    Buscar el número mayor: Escribe una función que reciba un array de números y
    devuelva el número más grande.
*/


// Metodo recorrer la lista

let mayor = 0;
let elArray = [4,7,22,102,1, -5, -1 -7, 12.5, 12.2];
for (let i=0 ; i<elArray.length; i ++) {
    if ((elArray[i]>mayor)) {  // Si el array (aeiouAEIOU) contiene la letra suma 1.
        mayor = elArray[i]
    }
}
console.log("\nEl número mayour del array es:",mayor,"y es de tipo",typeof(mayor));

/* Método 2 no sirve. ordenar la lista y coger el ultimo valor

elArray = [4,7,22,12,1, -5, -1 -7, 12.5, 12.2];
parseInt(elArray.sort()); // Lo ordena como string así que no sirve porque ordena por codigo ascii
console.log(elArray);
console.log(typeof(elArray[0]));
*/

/*
    Revertir una cadena: Escribe una función que tome una cadena de texto como
    entrada y devuelva la misma cadena pero en orden inverso.
*/

console.log("\nArray reverse:",elArray.reverse());

/*
    Pares e impares: Escribe una función que reciba un array de números y devuelva
    dos arrays separados, uno con los números pares y otro con los números impares.
*/

numeros = [4, 2, 3, 8 , 9 ,1 , -2 ,23, 1];
let pares =[];
let impares = [];

function creaArrays(valor) {
    for (let i=0; i<valor.length; i++) {
        if (valor[i]%2 == 0) {
            pares.push(valor[i]);
        } 
        else {
            impares.push(valor[i]);
        }
    }
    console.log ("\nPares:",pares);
    console.log ("\nImpares", impares);
}

creaArrays(numeros);

/*
    Eliminar duplicados: Escribe una función que tome un array como entrada y
    devuelva un nuevo array sin ningún elemento duplicado.
*/

otroArray = ["Enero", "Luna", "Misil", "K9", "Entrenamiento", "Misil"];
function elimina(valor){
    let sw=0;
    for (let i=0; i<valor.length; i++){
        for (let j=i; j<valor.length; j++){
            // if
        }
    }
}
elimina(otroArray);
