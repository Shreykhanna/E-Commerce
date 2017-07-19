<%-- 
    Document   : editproduct
    Created on : 18 Jul, 2017, 11:18:16 PM
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
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>        
  
        <h1>EDIT New Product</h1>  
       <form:form method="post" action="/E-Commerce/editsave">    
        <table>   
         <tr>    
          <td><form:hidden path="productid"  /></td>  
         </tr>  
         <tr>    
          <td>Product Name : </td>   
          <td><form:input path="productname"  /></td>  
         </tr>    
         <tr>    
          <td> Product price:</td>    
          <td><form:input path="productprice" /></td>  
         </tr>   
         <tr>    
          <td>Description :</td>    
          <td><form:input path="description" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="UPDATE" /></td>    
         </tr>    
        </table>    
       </form:form>    
    </body>
</html>
