<%-- 
    Document   : laptops
    Created on : 5 Jun, 2017, 7:10:53 PM
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
        <link rel="stylesheet" href="css/laptops.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <div id="branding">
                <h1>E-Commerce</h1>
                <h2>The Laptop Store</h2>
            </div>
        </header>
        <h2><b>Best Sellers</b>
        <a href="" id="seeMore">see more</a></h2>
        <hr>
        <section>
            <div class="container-fluid">
                <div class="col-lg-12">
                    <div class="row">
                        <div id="laptop_slider" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <div class="box">
                                    <h3>Apple macbook air</h3>
                                    <a href="">
                                        <img src="images/appleMacbookair.jpeg" alt="applemacbook" height="200" width="250">
                                    </a>
                                </div>
                                <div class="box">
                                    <h3>Lenovo ideapad 110</h3>
                                    <a href="">
                                        <img src="images/lenovoideapad110.jpeg" alt="lenovoideapad" height="200" width="250">
                                    </a>
                                </div>
                                <div class="box">
                                    <h3>Dell Vostro</h3>
                                    <a href="">
                                        <img src="images/dellVostro.jpeg" alt="dellVostro" height="200" width="250">
                                    </a>
                                </div>                                
                            </div>
                            <div class="item">
                                <div class="box">
                                    <h3>hp be002tu</h3>
                                    <a href="">
                                        <img src="images/hpbe002tu.jpeg" alt="hpbe002tu" height="200" width="250">
                                    </a>
                                </div>                                
                            </div>
                        </div>
                    </div>                    
                </div>    
            </div>
        </div>
            <hr>
            <h2><b>Laptops by type</b>
              <a href="" id="seeMore">see more</a></h2>
              <hr>                       
            <section>
                <div class="container-fluid">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <div class="box">
                                            <h3>Touch Screen</h3>
                                            <a href="">
                                                <img src="images/touchscreenLaptop.jpg" alt="touchscreen" height="200" width="250">   
                                                
                                            </a>
                                        </div>   
                                        <div class="box">
                                            <h3>Budget</h3>
                                            <a href="">
                                                <img src="images/budgetLaptop.jpeg" alt="budget" height="200" width="250">   
                                             </a>
                                        </div>   
                                        <div class="box">
                                            <h3>Premium</h3>
                                            <a href="">
                                                <img src="images/premiumLaptop.jpeg" alt="premium" height="200" width="250">   
                                                
                                            </a>
                                        </div>                                  
                                    </div>
                              </div>
                        </div>
                 </div>                
    </section>
              <hr>
               <h2><b>Shop by brand</b>
               <a href="" id="seeMore">see more</a></h2>
               <hr>
               <section>
                <div class="container-fluid">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <div class="box">                                            
                                            <a href="">
                                                <img src="images/samsungLogo.png" alt="samsungLogo" height="200" width="250">   
                                            </a>
                                        </div>   
                                        <div class="box">
                                               <a href="">
                                                   <img src="images/lenovoLogo.png" alt="lenovoLogo" height="200" width="250">   
                                             </a>
                                        </div>   
                                        <div class="box">
                                             <a href="">
                                                 <img src="images/dellLogo.png" alt="dellLogo" height="200" width="250">   
                                             </a>
                                        </div>                                  
                                    </div>
                                    <div class="item">
                                        <div class="box">                                            
                                            <a href="">
                                                <img src="images/appleLogo.png" alt="appleLogo" height="200" width="250">   
                                            </a>
                                        </div>                                    
                                    <div class="box">                                            
                                            <a href="">
                                                <img src="images/hpLogo.png" alt="hpLogo" height="200" width="250">   
                                            </a>
                                        </div>
                                        </div
                                </div>
                          </div>
                    </div>                
            </section>
               <hr>       
               
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>      
    </body>
</html>
