<%-- 
    Document   : oppo
    Created on : 6 Jun, 2017, 9:07:56 PM
    Author     : shrey
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
         <!-- Optional theme -->
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/oppo.css">
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
        <section>
            <div class="box">
                <a href="" >
                    <img src="images/oppof3.jpg" height="200" width="150">
                    <% 
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from oppo where name='Oppo F3'");
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
                <a href="" >
                    <img src="images/oppof3plus.jpeg" height="200" width="180">
                    <% 
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from oppo where name='Oppo f3 plus'");
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
                <a href="" >
                    <img src="images/oppoa37f.jpeg" height="200" width="150">
                    <% 
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from oppo where name='Oppo A37F'");
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
   
</html>
