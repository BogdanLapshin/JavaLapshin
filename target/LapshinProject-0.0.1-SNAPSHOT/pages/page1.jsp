<%-- 
    Document   : newjsp
    Created on : 13 січ. 2021 р., 21:35:34
    Author     : 38068
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Hello World from page1.jsp!</h1>
        <a href="<%=request.getContextPath()%>/servlet1">Go to Servlet1</a>
        
        
    </body>
</html>
