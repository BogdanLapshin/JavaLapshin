<%-- 
    Document   : form
    Created on : 14 січ. 2021 р., 18:25:57
    Author     : 38068
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nevm form</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css">
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/300.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/300-700.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/700-1000.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/1000-1200.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/1200+.css"> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
</head>
<body>

    <header>
    <img id="logo__blue" src="<%=request.getContextPath()%>/img/Logo.png" alt="Stroke__blue">


</header>
<div id="contact__section" >
    <div class="contact__text">
        <h1>Special for <br>
            our investors!</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc non leo aliquet, bibendum purus nec, accumsan tortor. Sed in pretium sapien. Aenean id tempor tortor. Duis risus justo, varius a urna at, ornare accumsan elit. Proin ut faucibus lorem. Suspendisse vestibulum lectus a diam rutrum, sit amet vulputate purus ultrices. Aenean sit amet scelerisque metus. Nullam egestas quam id consectetur varius. 
                <br>
            Sed a felis non nunc facilisis porttitor a nec massa. Morbi sollicitudin ante vitae purus rutrum, eu egestas ante auctor. Nullam venenatis nunc eget tellus maximus, suscipit feugiat erat egestas. Nam vestibulum eu metus vitae euismod.</p>
    </div>
    <div class="contact__input" >
        
            <form action="<%=request.getContextPath()%>/form" method="post">
                  <h1>Let's get started!</h1>
                    <p>User name(or number):</p>  
                    <input type="text" name="name"><br/>
                    <p>Who you are?</p>
                    <input type="radio" name="message" value="parent" checked="true"> <label>Investor</label> 
                    <input type="radio" name="message" value="overriden" > <label>Builder</label> 
                    <p>Do you need housing (only for builders)?</p>
                    <input type="radio" name="interface" value="old" checked="true"><label>No</label> 
                    <input type="radio" name="interface" value="new" > <label>Yes</label> 
                    <br>
                    <input type="submit" value="submit">
            </form>
        
    </div>
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
<div id="input__thank">
    <div class="thank__block"><h1>Thank you for the application</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec condimentum, quam nec faucibus 
        semper, risus nunc fermentum ipsum, a rutrum nisi est a purus. Donec vel pulvinar elit, sed 
        ornare nibh. Aliquam aliquet molestie erat a porta. Nullam vel augue mattis, 
        tempus magna ac, porta augue.</p>
        <button type="submit">Submit</button>
    </div>
</div>
<footer>
    <img src="img/Logo.png" alt="">
    <div class="footer__email">
        <p>Investor Newsletter Sign Up</p>
        <input type="email" placeholder="E-mail">
        
    </div>
</footer>
<script src="js/main.js"></script>
</body>

</html>







<!-- <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="submit.jsp" method="post">
            Name: <input type="text" name="name" required><br/>
            Gender: 
            <input type="radio" name="gender" value="male">Male</input>
            <input type="radio" name="gender" value="female" checked="checked">Female</input><br/>
            Language: 
            <input type="checkbox" name="language" value="Ukrainian">Ukrainian</input>
            <input type="checkbox" name="language" value="English">English</input><br/>
            
            <button type="submit">Submit</button>

        </form>


    </body>
</html> -->
