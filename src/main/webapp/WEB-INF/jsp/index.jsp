<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>  
    
<html>
    <head>
        <title>E-Commerce</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<!-- Optional theme -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.min.css"/>">
<!-- Custom CSS-->
<link rel="stylesheet" href="<c:url value="/resources/css/customcss.css"/>">
    </head>
    <body>
        <div id="category">
                <c:if test="${empty username}">
               <header>                    
                        <div id="branding">
                            <h1>E-Commerce</h1>
                        </div>
                        <nav class="top_nav">
                        <ul class="categoryTab">
                            <li>
                                <a href="">Home</a> 
                            </li>
                            <li>
                                <a href="" id="products">Products</a>
                                <ul>
                                    <li>
                                        <a href="electronics.jsp" id="electronics">Electronics</a>                                        
                                    </li>
                                    <li>
                                        <a href="clothes.jsp">Clothes</a>
                                    </li>
                                    <li>
                                        <a href="">Accessories</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="">Contact</a> 
                            </li>                            
                        </ul>    
                            <a href="admin.jsp">
                                <button type="admin" id="button_admin">Admin</button></a>

                            <a href="login.jsp">
                                <button type="submit" id="button_signIn">SignIn</button></a>
                        </nav>            
                </header>
                    </c:if>               
                <c:if test="${not empty username}">
                    <header>                    
                        <div id="branding">
                            <h1>E-Commerce</h1>
                        </div>
                        <nav class="top_nav">
                        <ul class="categoryTab">
                            <li>
                                <a href="">Home</a> 
                            </li>
                            <li>
                                <a href="" id="products">Products</a>
                                <ul>
                                    <li>
                                        <a href="electronics.jsp" id="electronics">Electronics</a>                                        
                                    </li>
                                    <li>
                                        <a href="clothes.jsp">Clothes</a>
                                    </li>
                                    <li>
                                        <a href="">Accessories</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="">Contact</a> 
                            </li>                            
                        </ul> 
                            <form action="logOut">
                            <div id="userName">
                            <label>Hi,<%= session.getAttribute("username")%></label>
                            </div>
                            <a href="index.jsp">
                                <button type="submit" id="button_signout">LogOut</button></a>
                            </form>
                        </nav>            
                </header>
                </c:if>
                    
            </div>                    
                <section id="showcase">
                <div class="container-fluid" >   
                <div class="row">
                    <div class="col-lg-12">
                        <div id="my-slider" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#my-slider" data-slide-to="0" class="active"></li>   
                                <li data-target="#my-slider" data-slide-to="1"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="<c:url value="/resources/images/electronics.jpg"/>" alt="appliances"/>                                   
                                    <div class="carousel-caption">
                                    <h1>Electronics 20% off</h1>                                   
                                    </div>
                                  </div>
                                <div class="item">
                                    <img src="<c:url value="/resources/images/mensclothes.jpeg"/>" alt="clothes" height="415" width="380"/>                                
                                    <div class="carousel-caption">
                                    <h1>Fresh Arrivals</h1>
                                    </div>
                                </div>
                        <a class="left carousel-control" href="#my-slider" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
                            <span class="sr-only">Previous</span>
                        </a>                                  
                        <a class="right carousel-control" href="#my-slider" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
                            <span class="sr-only">Next</span>
                        </a>       
                    </div>                    
                </div>
            </div>
        </div>
    </div>                    
   </section>        
                                    
        <section id="boxes">
            <div class="box"> 
                <h1>SignUp to discover awsomeness</h1>
                <a href="SignUp.jsp">
                
                  <button type="submit" name="submit">SignUp</button>
                </a>
            </div>
                <div class="box">
                    <h2>Popular Categories</h2>
                </div>   
                <div class="box">
                    <h2>Write your queries here</h2>
                </div>                      
        </section>                
        <footer>            
           <button type="submit" class="button_backUp">Back Up</button>
        </footer>  
       
        <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    </body>   
</html>
