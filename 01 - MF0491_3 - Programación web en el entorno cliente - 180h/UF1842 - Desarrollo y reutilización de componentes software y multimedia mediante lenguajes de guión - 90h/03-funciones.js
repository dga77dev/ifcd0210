// Funciones

saludar("Juan"); 
function saludar(nombre) {
    console.log("¡Hola, " + nombre + "!");
}


// Var y let en funciones

ejemplo();
var x = 2;
function ejemplo() {
    var x = 10;
    console.log("Dentro de la función:", x);
}

// Variable global
let variableGlobal = "Soy una variable global";

function ejemplo() {
    // Variable local
    let variableLocal = "Soy una variable local";
    console.log("Dentro de la función:");
    console.log("Variable local:", variableLocal);
    // console.log("Variable global:", variableGlobal); // Da error porque esta declarada fuera del bloque.
}




