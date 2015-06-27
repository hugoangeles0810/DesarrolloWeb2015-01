<%-- 
    Document   : index
    Created on : 22/06/2015, 06:11:49 PM
    Author     : arturo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desarrollo Web</title>
        <link rel="stylesheet" href="resources/css/estilos.css" />
    </head>
    <body>
        <div class="container">
            <header>
                <h1>Desarrollo Web</h1>
                <h3>Spring Framework</h3>
            </header>

            <section>
                <form action="mensaje.htm">
                    <label for="msg">Ingresa  tu mensaje: </label>
                    <input type="text" name="msg" />
                    <input type="submit" value="Enviar Mensaje" /> 
                </form>
            </section>
            
            <footer>
                <h4>Universidad Nacional de Piura</h4>
                <h5>&copy; 2015</h5>
            </footer>
        </div>
    </body>
</html>