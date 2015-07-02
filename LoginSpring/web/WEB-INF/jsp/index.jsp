<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:Home:.</title>
        <link rel="stylesheet" href="resources/css/bootstrap.min.css" />
        <link rel="stylesheet" href="resources/css/estilos.css" />
    </head>

    <body>

        <div class="container">
            <br><br>
            <div class="jumbotron">
                <h1>Hello Usuario: <%= request.getSession().getAttribute("usuario")%></h1>
            </div>


            <form action="logout.htm" method="POST" class="btn-logout">
                <input type="submit" value="Salir" class="btn btn-danger btn-sm"/>
            </form>
        </div>
        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
    </body>

</html>
