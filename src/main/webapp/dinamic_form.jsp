

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nevm Form</title>
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
       
        
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
                    <p>Enter project name:</p>
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
            
        
                <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
                <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
                <script src="vendor/bootstrap/js/popper.js"></script>
                <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
                <script src="vendor/select2/select2.min.js"></script>
                <script>
                        $(".selection-2").select2({
                                minimumResultsForSearch: 20,
                                dropdownParent: $('#dropDownSelect1')
                        });
                </script>
        <!--===============================================================================================-->
                <script src="vendor/daterangepicker/moment.min.js"></script>
                <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
                <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
                <script src="js/main.js"></script>

                <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
          gtag('config', 'UA-23581568-13');
        </script>
    </body>
</html>
