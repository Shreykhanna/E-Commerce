<%-- 
    Document   : mobiles
    Created on : 4 Jun, 2017, 9:40:37 AM
    Author     : shrey
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <!-- Latest compiled and minified CSS -->
           <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
            <!-- Optional theme -->
            <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.min.css"/>">
            <link rel="stylesheet" href="<c:url value="/resources/css/mobiles.css"/>">
        <title>e-Commerce</title>
    </head>
    <%
        Connection conn;
        PreparedStatement preparedStatment;
        ResultSet resultSet;
    %>
    <body>
        <div id="branding">
            <header>
                <h1>E-Commerce</h1>
                <h2>The Mobile Store</h2>
            </header>
        </div>
        
        <h2>
            <b>Smartphones Best sellers</b>
            <a href="" id="seeMore" >see more</a>
        </h2>
        
        <hr>
    <section id="showcase">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div id="mobile_slider" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="box">
                                        <h3>Redmi 4</h3>
                                    <a href="electronics.html" >
                                        <img src="<c:url value="/resources/images/redmi4.jpg"/>" alt="redmi 4" height="100" width="120">                      
                                    </a>
                                    </div>
                                    <div class="box">
                                        <h3>Redmi Note 3</h3>
                                        <a href="">
                                            <img src="<c:url value="/resources/images/redminote3.jpg"/>" alt="Redmi Note 3" height="100" width="120">    
                                        </a>
                                    </div>
                                    <div class="box">
                                        <h3>Moto g4</h3>
                                    <a href="homeAppliances.jsp">
                                        <img src="<c:url value="/resources/images/motog4.jpeg"/>" alt="Moto G 4" height="100" width="120">
                                    </a>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="box">
                                        <h3>One Plus 3T</h3>
                                    <a href="homeAppliances.jsp">
                                        <img src="<c:url value="/resources/images/oneplus3t.jpeg"/>" alt="OnePlus 3T" height="100" width="120">
                                    </a>
                                    </div>                             
                              </div>   
                            <a class="left carousel-control" href="#mobile_slider" hidden="true" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
                            <span class="sr-only">Previous</span>
                             </a>                                  
                                <a class="right carousel-control" href="#mobile_slider" hidden="true" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
                            <span class="sr-only">Next</span>
                            </a>       
                            </div>                            
                        </div>                
                    </div>             
                </div>   
           </div>            
    </section>
        <hr>
        <h2><b>Shop by Brand</b>
        <a href="" id="seeMore" >see more</a>
        </h2>        
        <hr>
        <section id="showcase">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div id="brand_slider" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="box">
                                        <h3>Samsung</h3>
                                        <a href="samsung.jsp" >
                                            <img src="<c:url value="/resources/images/samsungLogo.png"/>" alt="redmi 4" height="100" width="120">                      
                                    </a>
                                    </div>
                                    <div class="box">
                                        <h3>Mi</h3>
                                        <a href="mi.jsp">
                                            <img src="<c:url value="/resources/images/miLogo.png"/>" alt="Redmi Note 3" height="100" width="120">    
                                        </a>
                                    </div>
                                    <div class="box">
                                        <h3>Lenovo</h3>
                                        <a href="lenovo.jsp">
                                            <img src="<c:url value="/resources/images/lenovoLogo.png"/>" alt="Moto G 4" height="100" width="120">
                                    </a>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="box">
                                        <h3>Motorola</h3>
                                        <a href="moto.jsp">
                                            <img src="<c:url value="/resources/images/motoLogo.png"/>" alt="OnePlus 3T" height="100" width="120">
                                    </a>
                                    </div>                                    
                                    <div class="box">
                                        <h3>Gionee</h3>
                                        <a href="gionee.jsp">
                                            <img src="<c:url value="/resources/images/gioneeLogo.jpg"/>" alt="gioneeLogo" height="100" width="120">
                                        </a>
                                    </div>
                                    <div class="box">
                                        <h3>Oppo</h3>
                                        <a href="oppo.jsp">
                                            <img src="<c:url value="/resources/images/oppoLogo.png"/>" alt="oppoLogo" height="100" width="120">
                                        </a>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="box">
                                        <h3>Apple</h3>
                                        <a href="apple.jsp">
                                            <img src="<c:url value="/resources/images/appleLogo.png"/>" alt="appleLogo" height="100" width="120">
                                        </a>
                                    </div>
                              </div>   
                            <a class="left carousel-control" href="#brand_slider"  role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
                            <span class="sr-only">Previous</span>
                             </a>                                  
                            <a class="right carousel-control" href="#brand_slider" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
                            <span class="sr-only">Next</span>
                            </a>       
                            </div>                            
                        </div>                
                    </div>             
                </div>   
           </div>            
    </section>
    <hr>
    <h2><b>Shop by OS</b>
    <a href="" id="seeMore" >see more</a>
        </h2>        
    </h2>
    <hr>
     <section id="showcase">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div id="mobile_slider" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="box">
                                        <h3>Android</h3>
                                    <a href="electronics.html" >
                                        <img src="<c:url value="/resources/images/androidLogo.jpeg"/>" alt="redmi 4" height="100" width="120">                      
                                    </a>
                                    </div>
                                    <div class="box">
                                        <h3>iOS</h3>
                                        <a href="apple.jsp">
                                            <img src="<c:url value="/resources/images/iosLogo.png"/>" alt="Redmi Note 3" height="100" width="120">    
                                        </a>
                                    </div>
                                    <div class="box">
                                        <h3>Windows</h3>
                                    <a href="homeAppliances.jsp">
                                        <img src="<c:url value="/resources/images/windowsLogo.png"/>" alt="Moto G 4" height="100" width="120">
                                    </a>
                                    </div>
                                </div>
                                                           
                              </div>   
                            <a class="left carousel-control" href="#mobile_slider" hidden="true" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
                            <span class="sr-only">Previous</span>
                             </a>                                  
                                <a class="right carousel-control" href="#mobile_slider" hidden="true" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
                            <span class="sr-only">Next</span>
                            </a>       
                            </div>                            
                        </div>                
                    </div>             
                </div>   
           </div>            
    </section>
    <hr>
        
    <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    </body>
</html>
