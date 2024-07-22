// Operadores aritmeticos

let suma = 5 + 3; // suma = 8
let resta = 10 - 4; // resta = 6
let multiplicacion = 2 * 6; // multiplicacion = 12
let division = 20 / 4; // division = 5
let modulo = 11 % 3; // modulo = 2 (resto de la división)

let x = 5;
let resultado = ++x; // 6. a resultado se le asigna x+1
resultado++; // 7. resultado se le incrimenta en 1

console.log(resultado);


// Operadores de asignación

let n = 10; // Asignación simple
let y = 5;
console.log(n);
let z = n + y; // z = 15

// Operadores de asignación compuesta
z += 5;
console.log(z);

// Operadores de comparación
a=5;
b="5";

console.log(a==b); // Muestra true porque el valor es igual aunque no sea el mismo tipo.
console.log(a===b); // Que sea el mismo valor y el mismo tipo en este caso false;


console.log(5!=6); // 5 no es igual a 6 es verddad
console.log(5!==6);  // true  porque 5 no es igual a 6 ni al tipo

// Igualdad estricta

console.log(5 === 5); // true
console.log("5" === 5); // false
console.log(5 === "5"); // false
console.log(5 === 6); // false

console.log(5 != 6); // true
console.log(5 != "6"); // false (se realiza una conversión de tipo)
// Desigualdad estricta
console.log(5 !== 6); // true
console.log(5 !== "6"); // true


// Mayor que, menor que

console.log(5 > 3); // true
console.log(5 < 3); // false

// Mayor o igual que, menor o igual que
console.log(5 >= 3); // true
console.log(5 <= 3); // false

// Operadores lógicos

let c = true;
let d = false;
console.log(c && d); // AND lógico (false)
console.log(c || d); // OR lógico (true)
console.log(!c); // NOT lógico (false)

x = 5;
y = 10;
z = 15;

// Operador lógico AND (&&) Se prioriza primero los de comparación < y luego el logico &&
 if (x < y && y < z) {
    console.log("x es menor que y & y es menor que z");
        } else {
    console.log("Al menos una de las condiciones no se cumple");
}

// Operador OR (||)
if (x < y || y > z) {
    console.log("x es menor que y o y es mayor que z");
    } else {
    console.log("Ninguna de las condiciones se cumple");
}

// Operador NOT !
let esMayor = !(x < y);
console.log("¿x es mayor que y?", esMayor);

// XOR No existe en JS. Hay que simularlo. Solo uno de los dos es falso.

function xor(a, b) {
    return (a || b) && !(a && b);
}

console.log(xor(true, true)); // false 
console.log(xor(true, false)); // true
console.log(xor(false, true)); // true
console.log(xor(false, false)); //true

// Operadores de concatenación

// Ejemplo de operador de concatenación
let nombre = "Juan";
let apellido = "Pérez";
let nombreCompleto = nombre + " " + apellido; // nombreCompleto = "Juan Pérez"
console.log(nombreCompleto);
let edad = 30;
let ciudad = "Madrid";
// Concatenación de cadenas de texto
console.log("Nombre completo:", nombreCompleto);
// Concatenación de cadena y número
let mensajeEdad = "Tengo " + edad + " años";
console.log("Mensaje de edad:", mensajeEdad);
let direccion = "Vivo en " + ciudad + ", España";
console.log("Dirección:", direccion); // La coma deja un espacio

// Saber tipos de operadores typeof

let tipoDeDato = typeof 5; 
console.log(tipoDeDato);
let esCasado = false;
let lista = [1, 2, 3];
let persona = { nombre: "María", edad: 25 };
console.log(typeof nombre); // Imprime "string"
console.log(typeof edad); // Imprime "number"
console.log(typeof esCasado); // Imprime "boolean"
console.log(typeof lista); // Imprime "object" (array es un tipo de objeto en JavaScript)
console.log(typeof persona); // Imprime "object"


// Condicionales
//

// if

edad = 18;
if (edad >= 18) { console.log("Eres mayor de edad"); }

// elseif

let hora = 14;
if (hora < 12) {
console.log("Buenos días");
} else if (hora < 18) {
console.log("Buenas tardes");
} else {
console.log("Buenas noches");
}

// else

hora = 20;
if (hora < 12) {
console.log("Buenos días");
} else {
console.log("Buenas noches");
}

// Condicion abreviada

edad = 20;
let mensaje = (edad >= 18) ? "Eres mayor de edad" : "Eres menor de edad"; // Asigna valor a mensaje dependiendo de la edad
console.log(mensaje);


// Bucles

// Bucle for. Cuando queremos que se repita un número de veces determinado.

for (let i = 0; i < 5; i++) {
    console.log(i); // empieza por 0 hasta 4
}
console.log("\n");


// White. Miestras se cumpla una condición
let contador = 0;
while (contador < 5) {
    console.log(contador);
    contador++;
}

console.log("\n");

// DoWhile. Se repite siempre al menos una vez.

contador = 0;
do {
    console.log(contador);
    contador++;
} while (contador < 5);

// *********************** SWITCH

let dia = 3;
let nombreDia;
switch (dia) {
case 1:
    nombreDia = "Lunes";
break;
case 2:
    nombreDia = "Martes";
break;
case 3:
    nombreDia = "Miércoles";
break;
case 4:
    nombreDia = "Jueves";
break;
case 5:
    nombreDia = "Viernes";
break;
case 6:
    nombreDia = "Sábado";
break;
case 7:
    nombreDia = "Domingo";
break;

default:
    nombreDia = "Día no válido";
}
console.log("Hoy es " + nombreDia);


/*  aÑO BISIESTO.
Todos los años bisiestos son divisibles entre 4.
Aquellos años que son divisibles entre 4, pero no entre 100, son bisiestos.
Los años que son divisibles entre 100, pero no entre 400, no son bisiestos.
Sin embargo, los años divisibles entre 100 y entre 400 sí que son bisiestos.

Se ponen las condiciones en ese orden
*/

var anio=2020;
switch (true) {
        case (anio % 400 == 0):
            console.log("Bisiesto d 400"); 
            break;
        case (anio % 100 == 0):
            console.log("No Bisiesto d 100");
            break;
        case (anio % 4 == 0):
            console.log("Bisiesto d 4");
            break;
        default:
            console.log("No Bisiesto");
            break;
}
console.log ("Tipo de texto es: "+typeof anio);
// con if
var anio=2020;
if (anio % 400 == 0) {
            console.log("Bisiesto d 400"); 
        }
        else if (anio % 100 == 0) {
            console.log("No Bisiesto d 100");
        }
        else if (anio % 4 == 0) {
            console.log("Bisiesto d 4");
        }
        else {
            console.log("No Bisiesto");
        
}

// Anidamientos en bucles, (for dentro de otro o funcion dentro de otra)


// Funciones

saludar("pepe");
saludar("miguel");

function saludar(nombre) {
    console.log("¡Hola, " + nombre + "!");
}

saludar("Pepa");

// Otra funcion


b=10;
a=20;
var area = areaCuadrado(b,a);

function areaCuadrado(base,altura){
    return base*altura
}
console.log(area);

areaCuadrado(b,a);
function areaCuadrado2(base,altura){
    console.log(base*altura);
}
