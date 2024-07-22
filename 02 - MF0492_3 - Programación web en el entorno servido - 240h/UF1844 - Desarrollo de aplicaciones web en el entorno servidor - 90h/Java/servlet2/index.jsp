<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
    <p>Hola, este texto se escribe desde la página JSP.</p>
 
    <form action="MiServlet" method="GET">
        <button type="submit">Get Mensaje</button>
    </form>
    <br>
    <form action="MiServlet" method="POST">
        <button type="submit">Post Mensaje</button>
    </form>
 
 
 
</body>
</html>