
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lapshin Laba 5</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/300.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/300-700.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/700-1000.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/1000-1200.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/1200+.css"> 
 
</head>
<body>
    <style>
        body {
	background: linear-gradient(90deg, #69b7eb, #b3dbd3, #f4d6db);
}
        form{
            margin: 200px auto;
            
        }
        input{
            margin: 0 40%;
            
        }
        main{
            width: 100%;
                
        }
    </style>

<main>
   
   
        <form action="<%=request.getContextPath()%>/DataBase" method="get">
                <input id="get__started" style="background: white; color: black" type="submit" value="Start application"> 
        </form><!--       
       
    
    
   
</main>


<script src="<%=request.getContextPath()%>/js/main.js"></script>
</body>
</html>
