<%-- 
    Document   : menClothes
    Created on : 20 Jun, 2017, 11:28:51 PM
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
        <link rel="stylesheet" href="css/menClothes.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
        <div id="branding" >
         <h1>e-Commerce</h1>
         <h2>The mens clothing store</h2>
        </header> 
        </div>
        <div id="GenderChoices" >
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
            <h3>Trending</h3>
            <hr>
            <section>
                <div class="container-fluid">
                    <div  class="row">
                        <div class="col-lg-12">
                            <div class="carousel slide" data-ride="carousel">
                                  <div class="carousel-inner"  role="listbox">                       
                                      <div class="item active">
                                          <div class="box">`                                          
                                            <a href="">
                                                <img src="images/mensTrefoilTshirt.jpg" alt="image" height="200" width="200">  
                                            </a>
                                          </div>
                                              <div class="box">
                                                  <a href="">
                                                      <img src="images/barbourNomanShirt.jpeg" alt="image" height="200" width="200">                                                      
                                                  </a>
                                              </div>
                                              <div class="box">
                                                  <a href="">
                                                      <img src="images/benettonShirts.jpeg" alt="image" height="200" width="200">                                                      
                                                  </a>
                                             </div>
                                             <div class="box">
                                               <a href="">
                                                   <img src="images/benettonVneckT-shirt.jpg" alt="image" height="200" width="200">                                                      
                                                </a>
                                             </div>                                                
                                        </div> 
                                    <div class="item">
                                       <div class="box">
                                          <a href="">
                                              <img src="images/pumaprintedroundNeck.jpeg" alt="image" height="200" width="200">
                                          </a>
                                      </div>                                          
                                    </div>
                                  </div>                                
                            </div>                            
                        </div> 
                 </div>                    
            </div>                
    </section>
            <hr>
            <h3>Shop by Category</h3>
            <hr>
            <section>
                <div class="carousel">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="box" id="box_1">
                                        <h3>Top Wear</h3>
                                        <img src="images/menstopWear.jpeg" alt="image" height="200" width="200" >                                       
                                        <li id="list_category">
                                            <a href="">
                                                <ul>T-Shirts</ul> </a>
                                            <hr>
                                            <a href="">
                                                <ul>Shirts</ul></a>
                                            <hr>
                                            <a href="">
                                                <ul>Kurtas</ul></a> 
                                            <hr>
                                        </li>                                        
                                    </div>
                                    <div class="box" id=box_1>
                                        <h3>Bottom Wear</h3>
                                        <img src="images/mensbottomWear.jpeg" alt="image" height="200" width="200">
                                        <li id="list_category">
                                            <a href="">
                                                <ul>Jeans</ul>
                                            </a>
                                            <hr>
                                            <a href="">
                                                <ul>Trousers</ul>
                                            </a>
                                            <hr>
                                            <a href="">
                                                <ul>Shorts</ul>
                                            </a>
                                            <hr>
                                        </li>
                                    </div>                                    
                                </div>                                 
                            </div>
                        </div>                
                    </div>        
                </div>                
           </div>                
    </section>
    <hr>
 </body>
</html>
