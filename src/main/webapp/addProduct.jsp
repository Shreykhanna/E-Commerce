<%-- 
    Document   : addCategory
    Created on : 18 Jul, 2017, 8:55:14 PM
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
    <form:form action="addProduct" method="post">
        <table>
            <tr>
                <td>Product Id</td>
                <td><form:input path="productid"/></td>
            </tr>
            <tr>
                <td>Product Name</td>
                <td><form:input path="productname"/></td>
            </tr>
            <tr>
                <td>Product Description</td>
                <td><form:input path="description"/></td>
            </tr>
            <tr>
                <td>Product Price</td>
                <td><form:input path="productprice"/></td>
            </tr>            
             <td><input type="submit" value="Save" /></td>    
        </table> 
     </form:form>

    </body>
</html>
