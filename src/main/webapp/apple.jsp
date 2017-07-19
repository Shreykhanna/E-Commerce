<%-- 
    Document   : apple
    Created on : 5 Jun, 2017, 9:59:35 PM
    Author     : shrey
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
         <!-- Optional theme -->
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/apple.css">
        <title>JSP Page</title>
    </head>
    <%!
    static Connection conn;
    static PreparedStatement preparedStatement;
    static ResultSet resultSet;
    %>
    <%!
       public static void connection()
      {
        try{
      System.out.println("Conecting...");
      Class.forName("com.mysql.jdbc.Driver");
      conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/E-commerce","root","");
        }catch(Exception e){
            System.out.print(e.getMessage());
        }
     }
    %>
    <body>
        <header>
            <div id="branding">
            <h1>E-Commerce</h1>
            </div>
        </header>
        <section class="boxes">
            <div class="box">
                <a href="" id="iphone7">       
                    <img src="images/iphone7jetBlack.png" alt="iphone7" height="200" width="200">   
                <% 
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from apple where name='Apple iPhone 7'");
                    resultSet=preparedStatement.executeQuery();
                    while(resultSet.next()){%>
                    <h3><%= resultSet.getString("name")%></h3>
                     <h5><%= resultSet.getString("price")%></h5>
                    <!-- <h6><%= resultSet.getString("stock")%></h6>-->
                    </h3>                
                    <%}%>                 
                </a>                       
            </div>                
             <div class="box">
                <a href="" id="iphone6">       
                    <img src="images/appleiphone6.jpeg" alt="" height="200" width="300"  id="iphone6">   
                <% 
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from apple where name='Apple iPhone 6(Rose Red)'");
                    resultSet=preparedStatement.executeQuery();
                    while(resultSet.next()){%>
                    <h3><%= resultSet.getString("name")%></h3>
                     <h5><%= resultSet.getString("price")%></h5>
                    <!-- <h6><%= resultSet.getString("stock")%></h6>-->
                    </h3>                
                    <%}%>   
                </a>                
            </div> 
             <div class="box">
                <a href="" id="iphone5s">       
                    <img src="images/appleiphone5s.jpeg" alt="" height="200" width="200">   
                <% 
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from apple where name='Apple iPhone 5s'");
                    resultSet=preparedStatement.executeQuery();
                    while(resultSet.next()){%>
                    <h3><%= resultSet.getString("name")%></h3>
                     <h5><%= resultSet.getString("price")%></h5>
                    <!-- <h6><%= resultSet.getString("stock")%></h6>-->
                    </h3>                
                    <%}%>   
                </a>                
            </div>   
             <div class="box">
                <a href="" id="iphonese">       
                    <img src="images/appleiPhoneSE.jpg" alt="" height="200" width="200">   
                <% 
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from apple where name='Apple iPhoneSE'");
                    resultSet=preparedStatement.executeQuery();
                    while(resultSet.next()){%>
                    <h3><%= resultSet.getString("name")%></h3>
                     <h5><%= resultSet.getString("price")%></h5>
                    <!-- <h6><%= resultSet.getString("stock")%></h6>-->
                    </h3>                
                    <%}%>   
                </a>                
            </div>   
                
                
        </section>  
              
        
        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>      
    </body>
    
</html>
