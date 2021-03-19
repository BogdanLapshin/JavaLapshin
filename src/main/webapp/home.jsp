<%-- 
    Document   : home.jsp
    Created on : 01.03.2021, 12:15:55
    Author     : NEVM PC
--%>

<%@page import="org.obrii.mit.dp2021.nevmerzhytskyi.data.Data"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%%>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nevm Data</title>
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
        
       <header id="home__header">
        
        <%
        
        %>
        <form action= "<%=request.getContextPath()%>/DataBase" method="get">
            <input type="text" name="search">
            <input type="submit" value="search data">
        </form>
        </header>
        <%
        List<Data> dataList = (List<Data>) request.getAttribute("data");
        %>
         <main id="home__main">
       <div id="projects__block">
        <%for(Data data:dataList){%>
        
        
        
        
      
        
        
        
         <div class="project__item">
            
             <%
             int imgNum = data.getId();
             while(imgNum>2){
             imgNum = imgNum-3;
             }
             %>
             
             
       
            <div class="project__text">
                <h1><%=data.getId() %> <%=data.getName()%></h1>
                <div class="home__submit" >
                    <p>Price: <br><%=data.getAge()%><span> $</span></p>
                    
                    <form action="<%=request.getContextPath()%>/DinamicFormUpdate" methd="get">
                        <input type="hidden" name="id" value="<%=data.getId() %>">
                        <input type="hidden" name="name" value="<%=data.getName()%>">
                        <input type="hidden" placeholder="integer" name="age" value="<%=data.getAge()%>">
                        <input type="submit" value="update data" >
                    </form>
                        <form action="<%=request.getContextPath()%>/Forma" methd="get" >
                        <input type="hidden" name="id" value="<%=data.getId() %>">
                        <input type="submit" value="delete data">
                    </form>
                </div>
            </div>
        </div>
        
        
      
        <%}%>
        
       
       
       
       </div>
    </main>
        
        
      
        <form action="<%=request.getContextPath()%>/DinamicForm" class="add__data" methd="get">
            <input type="submit" value="add data" >
        </form>
      <footer>
    
        
    

</footer>  
        
        
    </body>
</html>
