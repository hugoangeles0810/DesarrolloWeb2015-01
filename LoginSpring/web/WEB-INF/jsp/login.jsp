<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : login
    Created on : 02/07/2015, 01:55:27 AM
    Author     : Hugo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="resources/css/bootstrap.min.css" />
        <link rel="stylesheet" href="resources/css/estilos.css" />
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-sm-offset-4 col-sm-4 login-container">
                    <div class="panel panel-primary">
                        <div class="panel-heading login-header"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Login</div>
                        <div class="panel-body">
                            <form id="login-form" class="form-horizontal" method="POST">
                                <div class="form-group">
                                    <label for="usuario" class="col-sm-3 control-label">Usuario</label>
                                    <div class="col-sm-9">
                                        <input id="usuario" type="text" name="usuario" class="form-control" />
                                    </div> 
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-sm-3 control-label">Password</label>
                                    <div class="col-sm-9">
                                        <input id="password" type="password" name="password" class="form-control" /><br>
                                    </div> 
                                </div>
                                <input type="submit" value="Entrar" class="col-sm-offset-5 btn btn-primary" />
                            </form>
                        </div>
                    </div>
                    <c:if test="${error!=null}">
                        <div class="alert alert-danger alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            ${error}
                        </div>
                    </c:if>
                    <div id="error-container" class="alert alert-danger alert-dismissible" role="alert">
                        <button id="btn-close-error" type="button" class="close"><span aria-hidden="true">&times;</span></button>
                        <div id="error-msg"></div>
                    </div>
                </div>
            </div>
        </div>
        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/login.js"></script>
    </body>
</html>
