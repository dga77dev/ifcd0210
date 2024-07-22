// Crear un objeto persona
let persona = {
    nombre: "Juan",
    edad: 30,
    ciudad: "Madrid"
};

// Imprimir el objeto en la consola
console.log(persona);

// Acceder a las propiedades del objeto persona
console.log("Nombre:", persona.nombre);
console.log("Edad:", persona.edad);
console.log("Ciudad:", persona.ciudad);

// Modificar la propiedad edad
persona.edad++;

// Imprimir el objeto modificado en la consola
console.log(persona);

// Agregar una propiedad
persona.altura=1.77;

// Eliminar una propiedad

delete persona.altura;
