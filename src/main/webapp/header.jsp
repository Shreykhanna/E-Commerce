<%-- 
    Document   : header
    Created on : 17 Jul, 2017, 11:09:49 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="category">
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
                            <a href="login.jsp">
                                <button type="submit" id="button_signIn">SignIn</button></a>
                        </nav>            
                </header>
            </div>                    
    </body>
</html>
