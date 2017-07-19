<%-- 
    Document   : gionee
    Created on : 6 Jun, 2017, 8:37:20 PM
    Author     : shrey
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
         <!-- Optional theme -->
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/gionee.css">
        <title>JSP Page</title>
    </head>
    <body>
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
                    <img src="images/samsung C7 Pro.jpg" height="200" width="100">
                    <% 
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from samsung where name='Samsung Galaxy C7 Pro'");
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
                    <img src="images/samsung on5 pro.jpeg" height="200" width="240">
                    <% 
                    connection();
                    System.out.println("Connected");
                    preparedStatement=conn.prepareStatement("select name,price,stock from samsung where name='Samsung on5 Pro'");
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
