package xmlfiles;

import java.io.File;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

public class ManejoXML {
    public static void leerXML(String rutaArchivo) {
        try {
            File archivoXML = new File(rutaArchivo);
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(archivoXML);
            doc.getDocumentElement().normalize();

            NodeList listaAlumnos = doc.getElementsByTagName("alumno");
            for (int temp = 0; temp < listaAlumnos.getLength(); temp++) {
                Node nodoAlumno = listaAlumnos.item(temp);
                if (nodoAlumno.getNodeType() == Node.ELEMENT_NODE) {
                    Element elementoAlumno = (Element) nodoAlumno;
                    String numero = elementoAlumno.getElementsByTagName("numero").item(0).getTextContent();
                    String nombre = elementoAlumno.getElementsByTagName("nombre").item(0).getTextContent();
                    String apellidos = elementoAlumno.getElementsByTagName("apellidos").item(0).getTextContent();
                    String curso = elementoAlumno.getElementsByTagName("curso").item(0).getTextContent();

                    System.out.println("Registro de alumno:");
                    System.out.println("Número de alumno: " + numero);
                    System.out.println("Nombre: " + nombre);
                    System.out.println("Apellidos: " + apellidos);
                    System.out.println("Curso: " + curso);
                    System.out.println();
                }
            }
            System.out.println("Todos los registros han sido leídos.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        // Ruta del archivo XML en la carpeta resources
        String rutaArchivo = "resources/alumnos.xml";

        // Leer datos desde el archivo XML
        leerXML(rutaArchivo);
    }
}
