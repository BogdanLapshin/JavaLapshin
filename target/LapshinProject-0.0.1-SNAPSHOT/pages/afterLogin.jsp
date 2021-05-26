<%-- 
    Document   : afterLogin
    Created on : 15 січ. 2021 р., 10:07:20
    Author     : 38068
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String userName="", sessionID="";
            PrintWriter out1 = response.getWriter();
            Cookie[] cookies = request.getCookies();

            if (cookies.length > 0) {
                for (Cookie cookie : cookies) {
                    out1.print("Name: " + cookie.getName() + " Value: " + cookie.getValue()+"<br/>");
                    if (cookie.getName().equals("userName")) {
                        userName = cookie.getValue();
                    }
                    if (cookie.getName().equals("JSESSIONID")) {
                        sessionID = cookie.getValue();
                    }

                }

            }
        %>
        
        <br/>userName: <%=userName%><br/>
        <br/>sessionID: <%=sessionID%><br/>
        
    </body>
</html>
