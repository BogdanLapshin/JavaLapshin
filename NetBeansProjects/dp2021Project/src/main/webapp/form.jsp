<%-- 
    Document   : form
    Created on : 10.02.2021, 21:16:21
    Author     : bogdanlapshin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/reset.css"/>
        <link rel="stylesheet" href="assets/style.css"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrapper">
            <header class="header">
                <div class="container">
                    <nav class="nav">
                        <a href = "<%=request.getContextPath()%>" class="logo"><img src="./images/logo.png" alt=""></a>
                        <ul class="menu">
                            <li class="menu__item"><a href="#" class="menu__link">Form</a></li>
                            <li class="menu__item"><a href="#" class="menu__link">Info</a></li>
                            <li class="menu__item"><a href="#" class="menu__link">About</a></li>
                            <li class="menu__item"><a href="#" class="menu__link">Contact</a></li>
                        </ul>
                    </nav>

                    
                    
                    <form action="<%=request.getContextPath()%>/form" method="post" class="form__form">

                        <input type="hidden" name="title" value="Submited"/>

                        <div class="form__name">
                            <p class="form__title">Name</p>
                            <input type="text" name="name" class="form__input">
                            <p class="form__title">Surname</p>
                            <input type="text" name="surname" class="form__input">
                        </div>
                        
                       
                        <div class="form__name">
                            <p class="form__title">Color:</p> 
                            <div class="form__color">
                              <input type="radio" name="color" value="White"> <p class="text__color">White</p>
                              <input type="radio" name="color" value="Color"> <p class="text__color">Black</p>  
                            </div>
                        </div>
                        
                        <div class="form__name">
                            <p class="form__title">Additional functions:</p> 
                            <div class="form__color">
                              <input type="checkbox" name="functions" value="Projection"> <p class="text__color">Projection</p>
                              <input type="checkbox" name="functions" value="Hatch"> <p class="text__color">Hatch</p>
                              <input type="checkbox" name="functions" value="Seat ventilation"> <p class="text__color">Seat ventilation</p> 
                            </div>
                        </div>
                         
                        
                        
                        
                        <div class="form__name">
                            <p class="form__title form__engine">Engine:</p>
                            <select name="engine" class="select__engine">
                            <option value="2.5">2.5</option>
                            <option value="3.0">3.0</option>
                            <option value="5.0">5.0</option>
                         
                        </select>
                        </div>

                        <button class="submit" type="submit" class="btn__submit">submit</button>
                          
                    </form>
                </div>
            </header>
            
        
    </body>
</html>
