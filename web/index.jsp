<%-- 
    Document   : index
    Created on : 05-may-2015, 16:37:15
    Author     : DIEGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cambio moneda</h1>
        <form method="post" action="index.jsp">
            <input type="text" name="ingresar" placeholder="ingrese texto">
            <input type="submit" value="Calcular">
        </form>
        
        
        
            <%-- start web service invocation --%><hr/>
    <%
    try {
	wss.Cambio_Service service = new wss.Cambio_Service();
	wss.Cambio port = service.getCambioPort();
	 // TODO initialize WS operation arguments here
	java.lang.Double dollar = Double.valueOf(request.getParameter("ingresar"));
	// TODO process result here
	java.lang.Double result = port.convertCDNolllar(dollar);
        java.lang.Double result1 = port.convertEuro(dollar);
        java.lang.Double result2= port.convertPound(dollar);
        java.lang.Double result3= port.convertYen(dollar);
        
	out.println("cnd dollar = "+result);
        out.println("euro = "+result1);
        out.println("pound = "+result2);
        out.println("yen = "+result3);
        
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

        
        
        
    </body>
</html>
