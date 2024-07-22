// footer.js
function createFooter() {
  // en el documento html se crea el elemento en el documento footer
  const footer = document.createElement('footer');
  // el contenido del hijo
  footer.innerHTML = `
      <div class="footer-content">
          <!-- Contenido del footer -->
          <p>© 2024 Mi Sitio Web. Todos los derechos reservados.</p>
      </div>
  `;
  document.body.appendChild(footer); // html->body->footer
}

// Llama a la función para crear el footer cuando se carga la página
window.addEventListener('load', createFooter);
