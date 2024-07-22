import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletSesion
 */
@WebServlet("/ServletSesion")
public class ServletSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * Constructor del servlet
     */
    public ServletSesion() {
        super();
        // Constructor generado automáticamente
    }

    /**
     * Maneja las solicitudes GET
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Escribir en la respuesta, va a mostrar el nombre del proyecto
		response.getWriter().append("Served at-Mi proyecto es: ").append(request.getContextPath());
		
		// Obtener el objeto PrintWriter para escribir la respuesta
		PrintWriter out = response.getWriter();
		
		// Escribir una línea en blanco y un título en la respuesta
		out.println(" ");
        out.println("Servlet de Sesión");
        
        // Obtener la sesión actual, sin crear una nueva si no existe
        HttpSession sesion = request.getSession(false);
        
        if (sesion == null) {
            // Si no hay una sesión existente, crear una nueva
           	sesion = request.getSession();
            out.println("Nueva sesión: " + sesion.getId());
        } else {
            // Si hay una sesión existente, mostrar su ID
            out.println("Sesión existente: " + sesion.getId());
        }
	}
}
