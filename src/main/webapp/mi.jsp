<%-- 
    Document   : mi
    Created on : 6 Jun, 2017, 6:25:47 PM
    Author     : shrey
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
         <!-- Optional theme -->
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/mi.css">
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
                    <img src="images/redmi4.jpg" height="200" width="200">
                    <% 
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from mi where name='Redmi 4(Black)'");
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
                    <img src="images/redminote3.jpg" height="200" width="200">
                    <%
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from mi where name='Redmi Note 3'");
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
                    <img src="images/redmi2prime.jpeg" height="200" width="200">
                    <% 
                    connection();
                    System.out.println("Connected"); 
                    preparedStatement=conn.prepareStatement("select name,price,stock from mi where name='Redmi 2 prime'");
                    resultSet=preparedStatement.executeQuery();
                    while(resultSet.next()){%>
                    <h3><%= resultSet.getString("name")%></h3>
                     <h5><%= resultSet.getString("price")%></h5>
                    <!-- <h6><%= resultSet.getString("stock")%></h6>-->
                    </h3>                
                    <%}%>                     
                </a>        
            </div>      
        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>       
    </body>
</html>
