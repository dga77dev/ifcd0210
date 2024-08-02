// Array que contiene frutas que dispone la tienda para poder añadir
let frutaDisponible = ["Sandia", "Fresa", "Melocotón", "Pera", "Plátano", "Mora", "Naranja", "Limón"];

// Función para añadir frutas (añadiendo elemento li)

function masfruta(){
    // Preguntar fruta
    fruta = prompt("Añade una fruta:");
    // Comprobar que la fruta esta en la lista de fruta disponible: Si esta disponible lo añade sino mensaje.
    if (frutaDisponible.includes(fruta)) {

        // Obtener la lista de elementos

        var listaFruta = document.getElementById("lista");

        
        // Crear un nuevo elemento li
        var nuevoElemento = document.createElement("li");

        // Establecer contenido de li del nuevo elemento
        nuevoElemento.textContent = fruta;
//                nuevoElemento.textContent = fruta + (listaFruta.childElementCount + 1);
        // Agregar el nuevo elemento a la lista
        listaFruta.appendChild(nuevoElemento);
    } else {
        alert ("LO SENTIMOS  NO DISPONEMOS DE ESA FRUTA");
    }
}