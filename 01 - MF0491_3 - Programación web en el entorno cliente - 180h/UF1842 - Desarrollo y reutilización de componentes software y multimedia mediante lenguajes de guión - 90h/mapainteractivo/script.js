document.addEventListener('DOMContentLoaded', function() {
  const mapa = document.getElementById('mapa');

  // Definir las coordenadas de las ciudades
  const ciudades = {
    madrid: { left: '50%', top: '40%' },
    barcelona: { left: '66%', top: '33%' },
    valencia: { left: '68%', top: '52%' },
    sevilla: { left: '36%', top: '60%' },
    bilbao: { left: '30%', top: '22%' },
    malaga: { left: '42%', top: '70%' }
  };

  // Agregar las ciudades al mapa
  for (const ciudad in ciudades) {
    const coordenadas = ciudades[ciudad];
    const divCiudad = document.createElement('div');
    divCiudad.className = 'ciudad';
    divCiudad.style.left = coordenadas.left;
    divCiudad.style.top = coordenadas.top;
    divCiudad.setAttribute('title', ciudad.toUpperCase());
    mapa.appendChild(divCiudad);
  }

  // Mostrar nombre de la ciudad al hacer clic
  mapa.addEventListener('click', function(event) {
    const ciudadClicada = event.target.getAttribute('title');
    if (ciudadClicada) {
      alert(`¡Has hecho clic en ${ciudadClicada}!`);
    }
  });
});
