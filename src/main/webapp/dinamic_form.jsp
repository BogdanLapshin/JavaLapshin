<%-- 
    Document   : form2
    Created on : 01.03.2021, 13:03:37
    Author     : NEVM PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nevm Form</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/300.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/300-700.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/700-1000.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/1000-1200.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/1200+.css"> 
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    </head>
    <body>
       
       
        <main id="form__din">
        <%
            String name = (String) session.getAttribute("formType1");
            //System.out.println(session.getAttribute("formType1"));
        %>
       <h1>${formType1}</h1>
       
       
       
       <form action= "<%=request.getContextPath()%><%if(name == "update"){%>/Forma<%}else{%>/DataBase<%}%>" method="post">
                <input type="hidden" name="id" value="<%if(name == "update"){%><%=request.getParameter("id")%><%}else{%>0<%}%>">
                <div class="form__top">
                    <p>Enter the project name:</p>
                    <input type="text" name="name" value="<%if(name == "update"){%><%=request.getParameter("name")%><%}else{%><%}%>">
                </div>
                <div class="form__bottom">
                    <div class="form__left">
                        <p>Enter the project price:</p>
                        <input type="text" placeholder="integer" name="age" value="<%if(name == "update"){%><%=request.getParameter("age")%><%}else{%><%}%>">
                    </div>
                    <div class="form__right">
                    <input type="submit" value="<%if(name == "update"){%>Update Data<%}else{%>Create Data<%}%>">
                    </div>
                </div>
            </form>
       
       
       
       
       
       
       
       
        
        
        
        
        
        
        
        
        
        <%if(name == "update"){%><%}else{%><%}%>
        <%if(name == "update"){%><%}else{%><%}%>  
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
