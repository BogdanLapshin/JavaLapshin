<%-- 
    Document   : login
    Created on : 15 січ. 2021 р., 09:44:31
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
        <jsp:useBean id="userLogin" class="knu.fit.mit.web1.UserLogin" scope="session"></jsp:useBean>
        <jsp:setProperty name="userLogin" property="*"></jsp:setProperty>

            <form action="../servlet2" method="post" >
            UserName: <input type="text" name="userName" required value='<jsp:getProperty name="userLogin" property="userName"/>'><br/>
            Password: <input type="password" name="password" required value='<jsp:getProperty name="userLogin" property="password"/>'><br/>
            <button type="submit">Submit</button>
            </form>



    </body>
</html>
