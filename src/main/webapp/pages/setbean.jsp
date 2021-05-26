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
        <%--
        <jsp:setProperty name="user" property="name" value="Roman"/><br/>
        <jsp:setProperty name="user" property="surname" value="Mykolaichuk"/><br/>
        --%>
        <form action="bean.jsp" method='post'>
            Name: <input type="text" name="name" value='<jsp:getProperty name="user" property="name"/>'>
            Surname: <input type="text" name="surname" value='<jsp:getProperty name="user" property="surname"/>'>
            <input type='submit'/>
        </form>


        <%--<jsp:forward page="bean.jsp"/><br/>--%>



    </body>
</html>
