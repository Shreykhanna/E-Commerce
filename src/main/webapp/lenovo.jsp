<%-- 
    Document   : lenovo
    Created on : 6 Jun, 2017, 7:43:53 PM
    Author     : shrey
--%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
        <link rel="stylesheet" href="css/samsung.css">
        <title>JSP Page</title>

    </head>
    <%!
        static Connection conn;
        static PreparedStatement preparedStatement;
        static ResultSet resultSet;
        static ResultSetMetaData metaData;
        static int rows;
    %>
    <%!
        public static void connection() {
            try {
                System.out.println("Conecting...");
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/E-commerce", "root", "");
            } catch (Exception e) {
                System.out.print(e.getMessage());
            }
        }
    %>
    <body>
        <form action="cart.jsp" method="get">
            <header>
                <div id="branding">
                    <h1>E-Commerce</h1>
                </div>
            </header>
            <section>  
                 <div class="box">
                    <a href="cart.jsp">                        
                        <img src="images/lenovoZuk Z1.jpg" height="200" width="100" name="lenovoZukZ1" >
                    </a>
                 </div>
                <%
                    connection();
                    System.out.println("Connected");
                    preparedStatement = conn.prepareStatement("select name,price,stock from lenovo");
                    resultSet = preparedStatement.executeQuery();
                    metaData = resultSet.getMetaData();
                    while (resultSet.next()) {
                        rows++;
                    }
                    for(int i = 0; i < rows; i++){
                        %>          
                        <input type="hidden" id="lenovoZukZ1" value="lenovoZukZ1">
                        <%
                            session.setAttribute("lenovoZukZ1", "lenovoZukZ1");
//                            connection();
//                            System.out.println("Connected");
//                            preparedStatement = conn.prepareStatement("select name,price,stock from lenovo where name='Lenovo Zuk Z1'");
//                            resultSet = preparedStatement.executeQuery();
//                            preparedStatement = conn.prepareStatement("select name,price,stock from lenovo");
//                            resultSet = preparedStatement.executeQuery();
                            while (resultSet.next()) {%>
                        <h3><c:out resultSet.getString("name")%></h3>
                        <h5><c:out resultSet.getString("price")%></h5>
                       <!-- <h6><%= resultSet.getString("stock")%></h6>-->
                        </h3>                
                        <%}
                   }%>                    
                </section>       

            <script src="js/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>  
        </form>
    </body>
</html>
