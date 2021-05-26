<%-- 
    Document   : bean
    Created on : 14 січ. 2021 р., 19:13:10
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
        <jsp:useBean id="user" class="knu.fit.mit.web1.User" scope="session"></jsp:useBean>
        <jsp:setProperty name="user" property="*"></jsp:setProperty>
        Name: <jsp:getProperty name="user" property="name"/><br/>
        Surname: <jsp:getProperty name="user" property="surname"/><br/>
        
        <a href="setbean.jsp">Set properities</a><br/>
        <a href="<%=request.getContextPath()%>">Return</a>
    </body>
</html>
