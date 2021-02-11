<%-- 
    Document   : submit
    Created on : 10.02.2021, 21:19:24
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
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.util.List, org.obrii.mit.dp2021.lapshin.dp2021project.User"%>

        <% User user = (User) request.getAttribute("user");%>
        <div class="wrapper">
            <header class="header">
                <div class="container">
                    <nav class="nav">
                        <a href = "<%=request.getContextPath()%>" class="logo"><img src="./images/logo.png" alt=""></a>
                        <ul class="menu">
                            <li class="menu__item"><a href="#" class="menu__link">Form</a></li>
                            <li class="menu__item"><a href="#" class="menu__link">Info</a></li>
                            <li class="menu__item"><a href="#" class="menu__link">About</a></li>
                            <li class="menu__item"><a href="#" class="menu__link">Contact</a></li>
                        </ul>
                    </nav>
 
                        <%String[] functions = request.getParameterValues("functions");%>
        
                    <div class="form__form">

                        

                        <div class="form__name">
                            <p class="form__title submit__form">Name:</p>
                            <p class="text__color"><%= request.getParameter("name")%></p>
                            
                        </div>
                        
                        <div class="form__name">
                            <p class="form__title submit__form">Surname:</p>
                            <p class="text__color"><%= request.getParameter("surname")%></p>
                            
                        </div>
                       
                        <div class="form__name">
                            <p class="form__title submit__form">Color:</p> 
                            <p class="text__color"><%= request.getParameter("color")%></p>
                            
                        </div>
                        
                        <div class="form__name">
                            <p class="form__title submit__form">Additional functions:</p> 
                            <p class="text__color">
                                
                        
                                <%if (functions != null) {
                                    for (int i = 0; i < functions.length; i++) {
                                        
                                        if(i==functions.length-1){
                                          out.print(functions[i]);  
                                        }
                                        else{
                                         out.print(functions[i]);
                                         out.print(", ");   
                                        }  
                                    }
                                } 
                                else {
                                    out.print("None Selected");
                                }%>

                            </p>
                        </div>
                          
                        
                        
                        <div class="form__name">
                            <p class="form__title submit__form">Engine:</p>
                            <p class="text__color"><%= request.getParameter("engine")%></p>
                        </div>

                        <form action="<%=request.getContextPath()%>" class="button__home">
                            <button class="submit" type="submit">go home</button>
                        </form>
                          
                    </div>
                </div>
            </header>
        </div>    
        
    </body>
    
</html>
