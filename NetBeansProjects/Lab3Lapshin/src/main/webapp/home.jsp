<%-- 
    Document   : home
    Created on : 2 мар. 2021 г., 11:21:34
    Author     : bogdanlapshin
--%>

<%@page import="java.util.List"%>
<%@page import="org.obrii.mit.lapshin.lab3lapshin.data.servlet.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data List</title>
        
        <link rel="stylesheet" href="<%=request.getContextPath()%>/style.css" >
    </head>
    
    <body>
        <h1>Hello World!</h1>
        <% List<Data> dataList = (List<Data>) request.getAttribute("data");%>
        
        <table style="margin: 0 auto">
            <tr>
                <th>id</th>
                <th>name</th>
                <th>number</th>
                <th>city</th>
                <th>id</th>
                <th>update</th>
                <th>delete</th>
            </tr>
            <% for(Data data:dataList){ %>
            <tr>
                
                <td><%=data.getId()%></td>
                <td><%=data.getName()%></td>
                <td><%=data.getNumber()%></td>
                <td><%=data.getCity()%></td>
                <td><%=data.getMail()%></td>
                <td>
                    <form action="form_update.jsp" method="post">
                        <input type="hidden" name="id" value="<%=data.getId() %>"/>
                        <input type="hidden" name="name" value="<%=request.getParameter("name") %>"/>
                        <input type="hidden" name="number" value="<%=request.getParameter("number") %>"/>
           
                        <input type="hidden" name="city" value="<%=request.getParameter("city") %>"/>
                  
                        <input type="hidden" name="mail" value="<%=request.getParameter("mail") %>"/> 
                        <input type="submit" value="Update"/> 
                    </form>
                </td>
                <td>
                    <form action="<%=request.getContextPath()%>/form" method="get">
                        <input type="hidden" name="id" value="<%=data.getId() %>"/>
           

                        <input type="submit" value="Delete"/>
                    </form>
                    
                </td>
                
            </tr>
            <%}%>
        </table>
        <form action="form.jsp">
            <input type="submit" value="Add data"/>
        </form>
        
         
    </body>    
    
        
    
</html>
