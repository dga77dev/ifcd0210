
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException; 
import java.sql.Statement;

public class ProbarConectorMain {
    private static String db_ = "ligafutboldb";
    private static String login_ = "root";
    private static String password_ = "12345";
    
 // patron para url de acceso: jdbc:mysql://localhost:3306/nombre_de_la_base_de_datos?user=usuario&password=contraseña
//    private static String url_ = "jdbc:mysql://localhost:3306/" + db_ + "?user=" + login_+ "&" +"password=" + password_;
    private static String url_ = "jdbc:mysql://localhost:3306/" + db_ + "?user=" + login_;
    
    private static Connection connection_;
    private static Statement st_ = null;
    
    public static void main(String[] args) {
        
        System.out.println(url_);
        
    	try {
            // Cargar el driver de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer conexión
            connection_ = DriverManager.getConnection(url_, login_, password_);
            
            System.out.println(connection_);

            if (connection_ != null) {
                st_ = connection_.createStatement();
                System.out.println("Conexión a la base de datos " + db_ + " correcta.");

                // Aquí puedes añadir código adicional para ejecutar consultas o realizar operaciones en la base de datos

            } else {
                System.out.println("Conexión fallida.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Cerrar la conexión y el statement
            try {
                if (st_ != null)
                    st_.close();
                if (connection_ != null)
                    connection_.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
