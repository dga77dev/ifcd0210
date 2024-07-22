import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ServletTransacciones
 */
@WebServlet("/ServletTransacciones")
public class ServletTransacciones extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	 private static String db = "ligafutboldb";
	    private static String user = "root";
	    private static String pwd = "12345";   
	    private static String url = "jdbc:mysql://localhost:3306/" + db + "?user=" + user;
	    private static Connection connection;
	    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletTransacciones() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Obtener el objeto PrintWriter para escribir la respuesta
        PrintWriter out = response.getWriter();

        // Datos de conexión a la base de datos
                        
        try {
        	
        	out.println(url);
            out.println("  ");
            out.println(pwd);
            out.println("  ");
            out.println(user);
            out.println("  ");
            
            // Cargar el driver de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establecer conexión
            
            connection = DriverManager.getConnection(url, user, pwd);
            
         // Iniciar la transacción
            connection.setAutoCommit(false); 
                
            // Escribir mensaje de conexión (puedes quitar esta línea si no quieres mostrar el mensaje aquí)
            out.println("Conexión establecida con éxito.");

        } catch (ClassNotFoundException | SQLException e) {
            // Escribir el mensaje de error en la respuesta del navegador
            out.println("Error al conectar a la base de datos: " + e.getMessage() + "   " + url + "pwd: " + pwd);
        	}


        if (connection != null) {
            out.println("Conexión establecida con éxito.<br>");
            
            // Realizar una consulta y mostrar los resultados
            try {
                Statement stmt = connection.createStatement();
                String sql = "SELECT nombreJugador, apellidosJugador, edadJugador FROM jugador ORDER BY idJugador";
                ResultSet rs = stmt.executeQuery(sql);
                
                PreparedStatement pstmt = connection.prepareStatement("INSERT INTO jugadorjava (nombre, apellidos, edad) VALUES (?, ?, ?)");


                // Procesar el ResultSet y mostrar los resultados
                while (rs.next()) {
                    String nombre = rs.getString("nombreJugador");
                    String apellidos = rs.getString("apellidosJugador");
                    int edad = rs.getInt("edadJugador");
                    out.println("Jugador: " + apellidos + ", " + nombre + ", Edad: " + edad + "<br>");
                   
                 // Añadir a batch para ejecutar después
                    pstmt.setString(1, nombre);
                    pstmt.setString(2, apellidos);
                    pstmt.setInt(3, edad);
                    pstmt.addBatch(); 
                }

                // Ejecutar el batch de inserts
                pstmt.executeBatch(); 
                
                // Hacer commit de la transacción
                connection.commit(); 
                out.println("Datos insertados en jugadorjava y commit realizado.<br>");

                rs.close();
                stmt.close();
                pstmt.close();
                
                // ¿por qué comento este close? donde se debe cerrar la conexion?
                //connection.close();
                
            } catch (SQLException e) {
                out.println("Error: " + e.getMessage());
                if (connection != null) {
                    try {
                    	// Hacer rollback si hay un error
                        connection.rollback(); 
                        out.println("Rollback realizado.<br>");
                    } catch (SQLException ex) {
                        out.println("Error al hacer rollback: " + ex.getMessage());
                    }
                }
            } finally {
                if (connection != null) {
                    try {
                        // Restablecer autoCommit a true
                    	connection.setAutoCommit(true); 
                        connection.close();
                    } catch (SQLException e) {
                        out.println("Error al cerrar la conexión: " + e.getMessage());
                    }
                }
            }

            out.close();
        }
    }
}