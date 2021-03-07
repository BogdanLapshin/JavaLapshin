<%-- 
    Document   : form
    Created on : 5 мар. 2021 г., 18:57:31
    Author     : bogdanlapshin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <form action="<%=request.getContextPath()%>/" method="post">
            
            <input type="hidden" name="id" value="0" /> 
            <p>Name:
            <input type="text" name="name"/> </p>
            <p>Number:
            <input type="text" name="number"/> </p>
            <p>City:
            <input type="text" name="city"/> </p>
            <p>Email:
            <input type="mail" name="mail" /> </p>
            
            
            
            <input type="submit" value="Create data" />
        </form>
        
        
        
        
    </body>
</html>
