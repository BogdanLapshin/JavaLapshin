
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>Hello World from jsp!</h1>
        <a href="<%=request.getContextPath()%>/pages/login.jsp">Login</a><br/>
        <a href="<%=request.getContextPath()%>/servlet1">Go to Servlet1</a><br/>
        <a href="<%=request.getContextPath()%>/pages/page1.jsp">Go to page.jsp</a><br/>
        <a href="<%=request.getContextPath()%>/pages/form.jsp">Go to form</a><br/>
        <a href="<%=request.getContextPath()%>/pages/bean.jsp">Go to bean properities</a><br/>
        <p>2*5=<%=2 * 5%></p>

        <%
            out.print(new java.util.Date());
            for (int i = 0; i < 10; i++) {
                out.print("<p>i=" + i + "</p>");

            }
            String p1 = request.getParameter("par1");
            String p2 = request.getParameter("par2");

            if (p1 != null) {
                out.println("<br/>p1 " + p1);
            }
            if (p2 != null)
                out.println("<br/>p2 " + p2);
        %>

        <%@include file="./files/file1.txt" %>
        <br/>
        <jsp:include page="./files/file2.txt"></jsp:include>


    </body>
</html>
