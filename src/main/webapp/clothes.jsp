<%-- 
    Document   : clothes
    Created on : 4 Jul, 2017, 8:26:26 PM
    Author     : shrey
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="<c:url value="/resources/css/clothes.css"/>">
    </head>
    <body>
        <div class="branding">
            <header>
            <h1>E-Commerce</h1>
            <h2>The Clothes Store</h2>
            </header>            
        </div>
        <section id="clothing">
            <div class="box">
            <h1>Mens Clothing</h1>
            <a href="menClothes.jsp">
                <img src="<c:url value="/resources/images/mensclothing.jpeg"/>" alt="Mens Clothing" height="200" width="250">   
            </a>
            </div>
            <div class="box">
            <h1>Womens Clothing</h1>
            <a href="womensClothes.jsp">
                <img src="<c:url value="/resources/images/womensclothing.jpeg"/>" alt="Womens Clothing" height="200" width="250">   
            </a>
            </div>
            <div class="box">
            <h1>Kids Clothing</h1>
            <a href="clothes.html">
                <img src="<c:url value="/resources/images/kidsclothing.jpg"/>" alt="Kids Clothing" height="200" width="250">   
            </a>
            </div>
            
        </section>
                   
       
    </body>
</html>
