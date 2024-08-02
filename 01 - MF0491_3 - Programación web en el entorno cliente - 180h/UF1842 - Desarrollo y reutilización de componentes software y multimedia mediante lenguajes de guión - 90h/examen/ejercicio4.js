// Array multidimensional con cocteles que contiene 3 elementos. El nombre pos(0), 
// un array de ingredientes pos(1) y las instrucciones pos(2).

var cocteles = [
    ["Mojito", ["Ron blanco", "Hojas de menta", "Lima", "Azúcar", "Agua con gas"], "Mezcla en un vaso el azúcar y el jugo de lima. Añade las hojas de menta y machácalas ligeramente. Agrega el ron y el agua con gas. Remueve bien y sirve con hielo. Decora con una ramita de menta y una rodaja de lima."],
    ["Piña Colada", ["Ron blanco", "Crema de coco", "Zumo de piña", "Hielo"], "Mezcla en una licuadora el ron, la crema de coco, el zumo de piña y el hielo. Bate hasta obtener una mezcla suave y homogénea. Sirve en un vaso alto y decora con una rodaja de piña y una cereza en un palillo."],
    ["Daiquiri de Fresa", ["Ron blanco", "Zumo de limón", "Jarabe de fresa", "Fresas frescas", "Hielo"], "Tritura las fresas en una licuadora. Añade el ron, el zumo de limón, el jarabe de fresa y el hielo. Bate hasta obtener una mezcla suave. Sirve en una copa de cóctel y decora con una fresa en el borde del vaso."],
    ["Margarita", ["Tequila", "Triple sec", "Zumo de lima", "Sal", "Hielo"], "Humedece el borde de una copa de cóctel y pásala por sal para escarcharla. En una coctelera, mezcla el tequila, el triple sec, el zumo de lima y el hielo. Agita bien y cuela la mezcla en la copa preparada. Decora con una rodaja de lima en el borde."]
];

// Bucle para recorrer los cócteles

for (let i=0 ; i<4 ; i++){
    
    // Mostramos el nombre que siempre será la posición 0
    console.log('Nombre: ',cocteles[i][0]); // Nombre
    
    
    console.log('\nIngredientes:');
    
    // Bucle para recorrer el array de cada tipo de cóctel. Se recorre hasta el final de los
    // elementos de ese coctel (length);

    for (let j=0 ; j<cocteles[i][1].length; j++) {

        // muestra el ingrediente por posiciones 
        console.log(`\n- ${cocteles[i][1][j]}`);
    }
    console.log('\nInstrucciones:', cocteles[i][2]); // la posición 2 contiene los ingredientes.
    console.log('\n\n');
}