<%-- 
    Document   : index
    Created on : 11/06/2015, 09:42:48 PM
    Author     : arturo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spring 4 Web MVC con MAVEN</title>
        <link rel="stylesheet" type="text/css" href="resources/css/site.css" />
        <script src="resources/js/js.js"></script>
    </head>
    <body>
        <header id="cabecera">
           <h1>Mi Calculadora</h1>
        </header>
        <section>
            <FORM action="index.htm" id="miformulario" method="GET">
            <span> Ingrese Dos Numeros </span>
		<br></br>
		<INPUT TYPE="text" NAME="expr1" SIZE=15 ><BR>
		<br></br>
		<INPUT TYPE="text" NAME="expr2" SIZE=15 ><BR>
		<br></br>
                <span> Seleccionar Operador </span>	
		<SELECT NAME="cap" SIZE=1 >
				<OPTION VALUE=1>1. Sumar</OPTION>
				<OPTION VALUE=2>2. Restar</OPTION>
				<OPTION VALUE=3>3. Multiplicar</OPTION>
				<OPTION VALUE=4>4. Dividir</OPTION>
		<SELECT>
                    <BR></br>
		<P ALIGN=LEFT>
                    <span> El resultado es </span> ${respuesta}
			<br></br>
			<INPUT TYPE="submit" NAME="result" SIZE=15 value="Calcular" >
                        
                        
		</P>
	</FORM>
        </section>
        <footer id="pie"><small> @Copyrigth  Spring Maven Java </small></footer>
       
    </body>
</html>
