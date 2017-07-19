<%-- 
    Document   : login
    Created on : 15 Jul, 2017, 9:09:55 AM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.min.css" >
        <!-- Optional theme -->
        <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
       
        <link rel="stylesheet" href="resources/css/login.css">
        <title>Login</title>
    </head>
    <body>
        <header>                    
            <div id="branding">
                <h1>E-Commerce</h1>
            </div>
        </header>
        ${errormessage}
        <div id="loginTable">
        <form action="userlogin" method="post">
            <table>
                <tr>
                    <td>
                        <label>Username</label>
                    </td>
                    <td>
                        <input type="text" name="username" placeholder="Username">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password</label>
                    </td>
                    <td>
                        <input type="password" name="password" placeholder="Password">
                    </td>
                </tr>
                <tr>
                    <td> 
                        <input type="submit" name="submit" value="Login">
                    </td>
                </tr>
            </table>   
        </form>
        </div>
    </body>
</html>
