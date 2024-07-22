// javascript no tiene polimorfismo pero se puede implementar ni interfaz de clases.
//
// Definir la baraja española como un objeto
const baraja = {
    Oros: [
        { valor: 1, nombre: 'As' },
        { valor: 2, nombre: 'Dos' },
        { valor: 3, nombre: 'Tres' },
        { valor: 4, nombre: 'Cuatro' },
        { valor: 5, nombre: 'Cinco' },
        { valor: 6, nombre: 'Seis' },
        { valor: 7, nombre: 'Siete' },
        { valor: 8, nombre: 'Ocho' },
        { valor: 9, nombre: 'Nueve' },
        { valor: 10, nombre: 'Sota' },
        { valor: 11, nombre: 'Caballo' },
        { valor: 12, nombre: 'Rey' }
    ],
    Copas: [
        { valor: 1, nombre: 'As' },
        { valor: 2, nombre: 'Dos' },
        { valor: 3, nombre: 'Tres' },
        { valor: 4, nombre: 'Cuatro' },
        { valor: 5, nombre: 'Cinco' },
        { valor: 6, nombre: 'Seis' },
        { valor: 7, nombre: 'Siete' },
        { valor: 8, nombre: 'Ocho' },
        { valor: 9, nombre: 'Nueve' },
        { valor: 10, nombre: 'Sota' },
        { valor: 11, nombre: 'Caballo' },
        { valor: 12, nombre: 'Rey' }
    ],
    Espadas: [
        { valor: 1, nombre: 'As' },
        { valor: 2, nombre: 'Dos' },
        { valor: 3, nombre: 'Tres' },
        { valor: 4, nombre: 'Cuatro' },
        { valor: 5, nombre: 'Cinco' },
        { valor: 6, nombre: 'Seis' },
        { valor: 7, nombre: 'Siete' },
        { valor: 8, nombre: 'Ocho' },
        { valor: 9, nombre: 'Nueve' },
        { valor: 10, nombre: 'Sota' },
        { valor: 11, nombre: 'Caballo' },
        { valor: 12, nombre: 'Rey' }
    ],
    Bastos: [
        { valor: 1, nombre: 'As' },
        { valor: 2, nombre: 'Dos' },
        { valor: 3, nombre: 'Tres' },
        { valor: 4, nombre: 'Cuatro' },
        { valor: 5, nombre: 'Cinco' },
        { valor: 6, nombre: 'Seis' },
        { valor: 7, nombre: 'Siete' },
        { valor: 8, nombre: 'Ocho' },
        { valor: 9, nombre: 'Nueve' },
        { valor: 10, nombre: 'Sota' },
        { valor: 11, nombre: 'Caballo' },
        { valor: 12, nombre: 'Rey' }
    ]
};

// Imprimir la baraja completa en la consola
console.log(baraja);