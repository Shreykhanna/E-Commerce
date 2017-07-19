<%-- 
    Document   : electronics
    Created on : 4 Jul, 2017, 7:17:53 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Electronics Store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<!-- Optional theme -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.min.css"/>">
<!-- Custom CSS-->
<link rel="stylesheet" href="<c:url value="/resources/css/electronics.css"/>">

    </head>
    <body>
        <div class="container-fluid">
            <header>
                <div id="branding">
                <h1>E-Commerce</h1>
                <h2>The Electronics Store</h2>
                </div>
            </header>
            <div id="link_electronics">
                <ul>
                     <li>
                         <a href="">Mobiles and accessories</a> 
                     </li>               
                     <li>
                        <a href="">Home Appliances</a> 
                     </li>                  
                     <li>
                        <a href="">Television and Home entertainment</a> 
                     </li>                
                     <li>
                        <a href="">Camera and accessories</a> 
                     </li>
                </ul>
            </div>
            
            <section id="electronicsitems">
                <div class="box">                    
                    <h1>Home Appliances</h1>
                    <a href="homeAppliances.jsp">
                        <img src="<c:url value="/resources/images/homeappliances.jpg"/>" alt="Home Appliances" height="200" width="250"/><br>                   
                    </a>  
                </div>
                <div class="box">                    
                    <h1>Mobiles</h1>
                    <a href="mobiles.jsp">
                        <img src="<c:url value="/resources/images/mobiles.jpeg"/>" alt="Mobile" height="200" width="250"><br>
                    </a>                   
                </div>
                <div class="box">                   
                    <h1>Mobile accessories</h1>
                    <a href="electronics.html">
                        <img src="<c:url value="/resources/images/mobileaccessories.png"/>" alt="Mobile accessories" height="200" width="250"><br>
                    </a> 
                </div>
                <div class="box">                   
                    <h1>Laptops</h1>
                    <a href="laptops.jsp">
                        <img src="<c:url value="/resources/images/laptops.jpg"/>" alt="Laptops" height="200" width="250"><br>
                    </a>
                </div>   
                <div class="box">                    
                    <h1>Tablets</h1>
                    <a href="electronics.html">
                        <img src="<c:url value="/resources/images/tablets.jpg"/>" alt="Tablets" height="200" width="250"><br>
                    </a>
                </div>                     
                        
                
            </section>
        </div>
        <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    </body>
</html>

