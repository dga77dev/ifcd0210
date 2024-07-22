// Definir una clase persona  y sub clase profesion
class Persona {
    constructor(nombre, edad, ciudad) {
        this.nombre = nombre;
        this.edad = edad;
        this.ciudad = ciudad;
    }
    // Método de la clase
    saludar(){
        console.log("¡Hola!, mi nombre es", this.nombre, "tengo",this.edad,"años y soy de",this.ciudad);
    }
}

class Profesion extends Persona {
    constructor(nombre, edad, empleo, sueldo, autonomo) {
        super(nombre, edad); // Llama del constructor de la clase Padre con super y lo hereda
        this.empleo = empleo;
        this.sueldo = sueldo;
        this.autonomo = autonomo;
    }
    // Método de la subclase
    diTrabajo(){
        console.log("Me llamo",this.nombre,"trabajo como",this.empleo,"y cobro", this.sueldo);
    }
}

let persona1 = new Persona("Juan", 30, "Madrid");
let persona2 = new Persona("María", 25, "Barcelona");
let persona3 = new Persona("Pedro", 35, "Sevilla");

let empleo1 = new Profesion("Barrendero", 1000, false);
let empleo2 = new Profesion("Comercial", 2500, true);
// Imprimir los objetos en la consola para verificar
console.log(persona1);
console.log(persona2);
console.log(persona3);
console.log(empleo1);
console.log(empleo2);
// Ejercurar métodos saludar

persona1.saludar();
persona2.saludar();
persona3.saludar();

