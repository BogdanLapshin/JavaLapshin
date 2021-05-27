

<%@page import="org.obrii.mit.dp2021.lapshin.data.Data"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%%>
    
    <head>
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
       
        
        <%
        
        %>
        <form action= "<%=request.getContextPath()%>/DataBase" method="get" style="display: flex; justify-content: center; margin-top: 50px;">
            <input type="text" name="search">
            <input type="submit" value="search data">
        </form>
      
        <%
        List<Data> dataList = (List<Data>) request.getAttribute("data");
        %>
         <main id="home__main" style="width: 100%; padding: 0">
       <div id="projects__block">
        <%for(Data data:dataList){%>
        
        
        
      
      
        
        
        
         <div class="project__item" style="display: flex; justify-content: center;">
            
             <%
            int imgNum = data.getId();
             while(imgNum>2){
             imgNum = imgNum-3;
             }
             %>
             
             
             
            <div class="project__text" style="display: flex; width: 70%; align-items: center; justify-content: space-between; margin: 0">
                <h1><%=data.getId() %></h1><!-- -->
                <h1><%=data.getName()%></h1>
                <h1><%=data.getAge()%></h1>
                <div class="home__submit" >
                    
                    
                    <form action="<%=request.getContextPath()%>/DinamicFormUpdate" methd="get" style="width: 200px">
                        <input type="hidden" name="id" value="<%=data.getId() %>">
                        <input type="hidden" name="name" value="<%=data.getName()%>">
                        <input type="hidden" placeholder="integer" name="age" value="<%=data.getAge()%>">
                        <input type="submit" value="update data" >
                    </form>
                        <form action="<%=request.getContextPath()%>/Forma" methd="get" style="width: 200px">
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
            <input type="submit" value="add data" style="background: white; color: black">
        </form>
       
        
        
    </body>
</html>
