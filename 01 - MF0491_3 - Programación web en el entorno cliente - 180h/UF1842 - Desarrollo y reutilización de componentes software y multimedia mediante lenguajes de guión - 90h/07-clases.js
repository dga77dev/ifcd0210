// Definir una clase persona y crear 3 objetos persona

class Persona {
    constructor(nombre, edad, ciudad) {
        this.nombre = nombre;
        this.edad = edad;
        this.ciudad = ciudad;
    }
}

let persona1 = new Persona("Juan", 30, "Madrid");
let persona2 = new Persona("María", 25, "Barcelona");
let persona3 = new Persona("Pedro", 35, "Sevilla");

// Imprimir los objetos en la consola para verificar
console.log(persona1);
console.log(persona2);
console.log(persona3);