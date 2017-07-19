<%-- 
    Document   : admin
    Created on : 18 Jul, 2017, 8:32:37 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>  
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<!-- Optional theme -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.min.css"/>">
<!-- Custom CSS-->
<link rel="stylesheet" href="<c:url value="/resources/css/customcss.css"/>">
        <title>JSP Page</title>
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
                                <a href="index.jsp">Home</a> 
                            </li>
                            <li>
                                <a href="addCategory.jsp" id="addCategory">Add Category</a>
                            </li>
                            <li>
                                <a href="addProduct.jsp" id="addProducts">Add Products</a>
                            </li>
                            <li>
                                <a href="editproduct.jsp" id="editProducts">Edit Products</a>
                            </li>                                            
                        </ul>    
                            <a href="admin.jsp">
                                <button type="admin" id="button_admin">Admin</button></a>

<!--                            <a href="login.jsp">
                                <button type="submit" id="button_signIn">SignIn</button></a>-->
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
                                <a href="addCategory.jsp" id="category">Add Category</a>
<!--                                <ul>
                                    <li>
                                        <a href="electronics.jsp" id="electronics">Electronics</a>                                        
                                    </li>
                                    <li>
                                        <a href="clothes.jsp">Clothes</a>
                                    </li>
                                    <li>
                                        <a href="">Accessories</a>
                                    </li>
                                </ul>-->
                            </li>
                            <li>
                                <a href="addProduct.jsp" id="products">Add Products</a>
                            </li>
                            <li>
                                <a href="editproduct.jsp" id="editproducts">Edit Products</a>
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
        
    </body>
</html>
