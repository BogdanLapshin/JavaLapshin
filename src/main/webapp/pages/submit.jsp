<%-- 
    Document   : submit
    Created on : 14 січ. 2021 р., 18:26:20
    Author     : 38068
--%>





<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.obrii.mit.dp2021.nevmerzhytskyi.nevmerzhytskyiproject.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nevm submit</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css">
        
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/300.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/300-700.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/700-1000.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/1000-1200.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/1200+.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    </head>
    <body>
<header>
            <img id="logo__blue" src="img/LogoType2.png" alt="Submit2">
</header>
<main class="main__submit">
    <div class="left__submit">
<%
List<String> messages = (List<String>) request.getAttribute("messages");
%>
<h1>Welcome!</h1>
<%
for(String message : messages){%>
<p><%=message%></p>
<%}%>

<form action="<%=request.getContextPath()%>/form" mathod="get"> 
            <input type="submit" value="Return to form" />
        </form>
        <form action="<%=request.getContextPath()%>" mathod="get"> 
            <input type="submit" value="Return to start page" />
        </form>
    </div>
    <div class="right__submit">

    </div>
</main>
<footer>
    <img src="img/Logo.png" alt="">
    <div class="footer__email">
        <p>Investor Newsletter Sign Up</p>
        <input type="email" placeholder="E-mail">
    </div>
</footer>  
    </body>
</html>

