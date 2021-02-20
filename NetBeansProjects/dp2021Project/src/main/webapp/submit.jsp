

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="org.obrii.mit.dp2021.lapshin.dp2021project.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/reset.css"/>
        <link rel="stylesheet" href="assets/style.css"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <title>Form</title>
    </head>
    <body>
        <% User user = (User) request.getAttribute("user"); %>
       
       <%= user.getName()%>
       <%= user.getNumber()%>
       <%= user.getMail()%>
       <%= user.getService()%>
       <%= user.getMessage()%>
       
    </body>
    
</html>
