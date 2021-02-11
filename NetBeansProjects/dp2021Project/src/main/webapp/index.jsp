<%-- 
    Document   : index
    Created on : 07.02.2021, 20:23:36
    Author     : bogdanlapshin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/reset.css"/>
        <link rel="stylesheet" href="assets/style.css"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <title>Bogdan Lapshin Page</title>
    </head>
    <body>
        <div class="wrapper">
            <header class="header">
                <div class="container">
                    <nav class="nav">
                        <a href = "<%=request.getContextPath()%>" class="logo"><img src="./images/logo.png" alt="logo"></a>
                        <ul class="menu">
                            <li class="menu__item"><a href="<%=request.getContextPath()%>/form.jsp" class="menu__link">Form</a></li>
                            <li class="menu__item"><a href="#" class="menu__link">Info</a></li>
                            <li class="menu__item"><a href="#" class="menu__link">About</a></li>
                            <li class="menu__item"><a href="#" class="menu__link">Contact</a></li>
                        </ul>
                    </nav>
                            
                    <div class="choose">Choose your RC</div>

                    <a href="<%=request.getContextPath()%>/form.jsp" class="form__link">
                        <div class="form">
                            Form
                        </div>
                    </a>
                </div>
            </header>
        </div>
        
        <%--	response.sendRedirect("http://dp2021.mit.obrii.org");	--%>
        
    </body>
</html>
