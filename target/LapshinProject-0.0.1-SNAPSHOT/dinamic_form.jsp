

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lapshin Laba 5</title>
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
       <style>
            body {
	background: linear-gradient(90deg, #69b7eb, #b3dbd3, #f4d6db);
            }     
        </style>
        <main id="form__din">
        <%
            String name = (String) session.getAttribute("formType1");
  
        %>
       
       
       
       
       <form action= "<%=request.getContextPath()%><%if(name == "update"){%>/Forma<%}else{%>/DataBase<%}%>" method="post">
                <input type="hidden" name="id" value="<%if(name == "update"){%><%=request.getParameter("id")%><%}else{%>0<%}%>">
                <div class="form__top" style="padding: 0">
                    <p>Name:</p>
                    <input type="text" name="name" value="<%if(name == "update"){%><%=request.getParameter("name")%><%}else{%><%}%>">
                </div>
                <div class="form__bottom" style="display: flex; flex-direction: column">
                    <div class="form__left" style="padding: 0; margin-bottom: 50px;">
                        <p>Price:</p>
                        <input type="text" name="age" value="<%if(name == "update"){%><%=request.getParameter("age")%><%}else{%><%}%>">
                    </div>
                    <div class="form__right" style="padding: 0; margin: 0">
                    <input type="submit" value="<%if(name == "update"){%>Update Data<%}else{%>Create Data<%}%>">
                    </div>
                </div>
            </form>
       
       
       
       
       
       
       
       
        
        
        
        
        
        
        
        
        
        <%if(name == "update"){%><%}else{%><%}%>
        <%if(name == "update"){%><%}else{%><%}%>  
        </main>   
            
    </body>
</html>
