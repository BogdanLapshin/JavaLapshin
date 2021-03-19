

<%@page import="org.obrii.mit.dp2021.nevmerzhytskyi.data.Data"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%%>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nevm Data</title>
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
    <body class="body__form">
        <div >
		<div class="wrap-contact100">
                    
                    <span class="contact100-form-title">
					Hi, lets go to form!
                    </span>
                    
                   
                
                    
                    
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<div class="contact100-form-btn">
							<span>
								<header id="home__header">
        
        <%
        
        %>
        <form action= "<%=request.getContextPath()%>/DataBase" method="get" id="search__form">
            <input type="text" name="search">
            <input type="submit" value="search data">
        </form>
        </header>
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
							</span>
						</div>
					</div>
                    
                    
                   
		</div>
	</div>



	<div id="dropDownSelect1"></div>
        
        
        
        
        
        
        
        
        
        
        
       
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
                    
                    <form action="<%=request.getContextPath()%>/DinamicFormUpdate" methd="get" class="bogdan">
                        <div class="bio">
                            <input type="hidden" name="id" value="<%=data.getId() %>">
                            <input type="hidden" name="name" value="<%=data.getName()%>">
                        </div>
                        <div class="actions">
                            <input type="hidden" placeholder="integer" name="age" value="<%=data.getAge()%>">
                            <input type="submit" value="update data" >
                        </div>
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
