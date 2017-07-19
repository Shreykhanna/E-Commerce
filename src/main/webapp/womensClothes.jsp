<%-- 
    Document   : womensClothes
    Created on : 21 Jun, 2017, 11:13:25 AM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
         <!-- Optional theme -->
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/womensClothes.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <div id="branding">
                <h1>E-Commerce</h1>
                <h2>The womens clothing store</h2>
            </div>           
        </header>
        <div id="GenderChoices">
            <ul>
                <li>
                    <a href="menClothes.jsp">Mens</a>
                </li>
                <li>
                    <a href="womensClothes.jsp">Womens</a>
                </li>
                <li>
                    <a href="">Kids</a>
                </li>                
            </ul>      
        </div>  
         <h3> Shop by Category</h3>
              <hr>
    <section>
            <div class="container-fluid">
                <div class="box">
                        <h3>Western Wear</h3>
                        <img src="images/womanswesternWear" alt="image" height="200" width="200">
                        <ul id="westernwear_choice">
                            <a href="">   
                            <li>Tops,Tees & Kurtis</li></a><hr>
                             <a href="">
                               <li>Jeans & Trousers</li></a><hr>
                                  <a href="">
                                   <li>Dresses</li></a><hr>
                        </ul>                                             
                </div>
                <div class="box">
                        <h3>Ethnic Wear</h3>
                        <img src="images/womenethnicWear.jpg" alt="image" height="200" width="200">
                        <ul id="westernwear_choice">
                            <a href="">   
                                <li>Kurtas</li></a><hr>
                                <a href="">
                                    <li>Salwar Suits</li></a><hr>
                                    <a href="">
                                    <li>Sarees</li></a><hr>
                         </ul>  
                </div>   
           </div>
    </section> 
   <hr>                 
    </body>
</html>
