<%-- 
    Document   : SignUp
    Created on : 1 Jun, 2017, 11:49:36 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.min.css" >
        <!-- Optional theme -->
        <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
        <!-- Custom CSS-->
<!--        <link rel="stylesheet" href="resources/css/customcss.css">-->
        <link rel="stylesheet" href="resources/css/signUp.css">
        <title>SignUp</title>
    </head>
    <body>
        <header>                    
            <div id="branding">
                <h1>E-Commerce</h1>
            </div>
        </header>
        <div id="registerTable">
        <form action="dbSave" method="post">
            <table>
                <tr>                  
                    <td>
                        <label>Name</label>
                    </td>
                    <td>
                        <input type="text" name="name" placeholder="Name"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Gender</label>
                    </td>
                    <td>
                        <label>Male</label><input type="radio" name="gender" value="male">
                        <label>Female</label><input type="radio" name="gender" value="female">
                    </td>
                </tr>
                <tr>
                <td>
                    <label>Username</label>
                </td>
                <td>
                    <input type="text" name="username" placeholder="Username"/>
                </td>
                </tr>
                <tr>                
                <td>
                    <label>Password</label>
                </td>
                <td>
                    <input type="password" name="password" placeholder="Password"/>
                </td>
                </tr>
                <tr>
                <br>
                <td>
                    <label>Address</label>
                </td>
                <td>
                    <input type="text" name="address" placeholder="Address"/>
                </td>
               </tr>
                <tr>
                <br>
                <td>
                    <label>Phone No.</label>
                </td>
                <td>
                    <input type="text" name="phoneno" placeholder="Phone No."/>
                </td>
                <td>
                    <input type="submit" name="submit" value="SignUp" id="signUp"></input>
                </td>
                </tr>     
            </table>
        </form> 
        </div>
    </body>
</html>
