<%-- 
    Document   : index
    Created on : 29.01.2021, 15:42:04
    Author     : NEVM PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nevm main</title>
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

<header>
    <div id="logo__white" class="logo">
        <img  src="img/Vector 1 (Stroke).png" alt="Stroke__white">
        <img  src="img/HOLMES BUILDERS.png" alt="HOLMES">
    </div>
    <nav class="header__nav">
        <ul class="header__ul">
            <li>
                
            </li>
        </ul>
    </nav>
</header>

<main>
    <div id="started__block">
        <h1>Makes homes <br> without over <br>prices & long terms</h1>
        <p>We looks like fake but it false opinion</p> 
        <form action="<%=request.getContextPath()%>/DataBase" method="get">
                <input id="get__started" type="submit" value="GET STRATED"> 
                </form>
<!--        <button id="sham__button" >OPEN CIRCUIT</button>-->
       
    </div>
    

<!-- <div class="input__thank">
    <h1>Thank you for the application</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec condimentum, quam nec faucibus 
        semper, risus nunc fermentum ipsum, a rutrum nisi est a purus. Donec vel pulvinar elit, sed 
        ornare nibh. Aliquam aliquet molestie erat a porta. Nullam vel augue mattis, 
        tempus magna ac, porta augue.</p>
    <button>Закрыть</button>
</div> -->
</main>

<script src="<%=request.getContextPath()%>/js/main.js"></script>
</body>
</html>
