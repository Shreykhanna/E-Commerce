<%-- 
    Document   : homeAppliances
    Created on : 4 Jun, 2017, 9:37:36 AM
    Author     : shrey
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
         <!-- Optional theme -->
         <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/homeappliances.css"/>">
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
      conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAppliances","root","");
        }catch(Exception e){
            System.out.print(e.getMessage());
        }
     }    
    %>
    
    <body> 
            <header>
            <div id="branding">
            <h1>e-Commerce</h1>
            <h2>The Home Appliances store</h2>
            </div>
            </header>       
        
        <h2><b>Televisions</b>
        <a href ="" id="seeMore">see more</a></h2>
        <hr>
    <section id="showcase">
            <div class="container-fluid">
                <div class="row">            
                <div class="col-lg-12">
                    <div id="tv_slider" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner"  role="listbox">                       
                        <div class="item active">
                             <div class="box">
                            <h3>Samsung Smart LED TV</h3>
                          
                            <a href="">
                                <img src="<c:url value="/resources/images/samsung65KU7000.jpg"/>" alt="samsungTv" height="200" width="250">  
                            <%
                            connection();
                            System.out.println("Connected");
                            preparedStatement=conn.prepareStatement("select name,price from samsung where id='65KU7000'");
                            resultSet=preparedStatement.executeQuery();
                            while(resultSet.next())
                            {%>
                            <h5><%= resultSet.getString("name")%></h5>                            
                            <h5><%= resultSet.getString("price")%></h5>                            
                            <%}%>
                            </a>
                             </div>
                             <div class="box">
                            <h3>LG Smart TV</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/lg55LM660T.jpg"/>" alt="LGTv" height="200" width="250"> 
                                  <%
                            connection();
                            System.out.println("Connected");
                            preparedStatement=conn.prepareStatement("select name,price from lg where id='55LM660T'");
                            resultSet=preparedStatement.executeQuery();
                            while(resultSet.next())
                            {%>
                            <h5><%= resultSet.getString("name")%></h5>                            
                            <h5><%= resultSet.getString("price")%></h5>                            
                            <%}%>
                            </a>                             
                        </div>
                        </div> 
                    </div>
                    </div>
                  </div>
               </div>  
             </div>   
        </div>
   </section>
    <hr>
    <h2><b>Refrigerators</b>
        <a href ="" id="seeMore">see more</a>
    </h2>
    <hr>
    <section id="showcase">
            <div class="container-fluid">
                <div class="row">           
                <div class="col-lg-12">
                    <div id="tv_slider" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner"  role="listbox">                       
                        <div class="item active">
                             <div class="box">
                            <h3>LG</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/lgDoubledoor.jpg"/>" alt="lgRefrigerator" height="200" width="250">                                
                            </a>
                             </div>
                             <div class="box">
                            <h3>Samsung</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/samsungRT54FBSL.jpg"/>" alt="samsungRefrigerator" height="200" width="250">                                
                            </a>                             
                            </div>
                            <div class="box">
                                <h3>LG Single door</h3>
                                <a href="">
                                    <img src="<c:url value="/resources/images/lgB201AMLN.jpg"/>" alt="lgSingledoor" height="200" width="250">   
                                </a>
                            </div>
                        </div>
                            <div class="item">
                            <div class="box">
                                <h3>Haier</h3>
                                <a href="">
                                    <img src="<c:url value="/resources/images/haierrefrigerator.jpeg"/>" alt="haierrefrigerator" height="200" width="250">   
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
     </div>   
 </div>
   </section>
    <hr>
    <h2><b>Microwave Ovens</b>
        <a href="" id="seeMore">see more</a>
    </h2>
    <hr>
    <section id="showcase">
            <div class="container-fluid">
                <div class="row">           
                <div class="col-lg-12">
                    <div id="tv_slider" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner"  role="listbox">                       
                        <div class="item active">
                             <div class="box">
                            <h3>LG</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/lgMC2886BRUM.jpg"/>" alt="lgMicrowave" height="200" width="250"> 
                           <%connection();
                            System.out.println("Connected");
                            preparedStatement=conn.prepareStatement("select name,price from lg where id='MC2886BRUM'");
                            resultSet=preparedStatement.executeQuery();
                            while(resultSet.next())
                            {%>
                            <h5><%= resultSet.getString("name")%></h5>                            
                            <h5><%= resultSet.getString("price")%></h5>                            
                            <%}%>
                           
                            </a>
                             </div>
                             <div class="box">
                            <h3>IFB</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/ifbmicrowave.jpeg"/>" alt="ifbMicrowave" height="200" width="250">
                            <%connection();
                            System.out.println("Connected");
                            preparedStatement=conn.prepareStatement("select name,price from ifb where id='336C4'");
                            resultSet=preparedStatement.executeQuery();
                            while(resultSet.next())
                            {%>
                            <h5><%= resultSet.getString("name")%></h5>                            
                            <h5><%= resultSet.getString("price")%></h5>                            
                            <%}%>                            
                            </a>                             
                            </div>
                             <div class="box">
                            <h3>IFB</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/ifb25$C4.jpeg"/>" alt="ifbMicrowave" height="200" width="250">                                
                            <%connection();
                            System.out.println("Connected");
                            preparedStatement=conn.prepareStatement("select name,price from ifb where id='25$C4'");
                            resultSet=preparedStatement.executeQuery();
                            while(resultSet.next())
                            {%>
                            <h5><%= resultSet.getString("name")%></h5>                            
                            <h5><%= resultSet.getString("price")%></h5>                            
                            <%}%>
                              
                            </a>                             
                            </div>                            
                        </div>
                        <div class="item">
                             <div class="box">
                            <h3>Samsung</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/samsungMicrowave.jpeg"/>" alt="samsungMicrowave" height="200" width="250">                                
                            <%connection();
                            System.out.println("Connected");
                            preparedStatement=conn.prepareStatement("select name,price from samsung where id='34AEDF'");
                            resultSet=preparedStatement.executeQuery();
                            while(resultSet.next())
                            {%>
                            <h5><%= resultSet.getString("name")%></h5>                            
                            <h5><%= resultSet.getString("price")%></h5>                            
                            <%}%>
                              
                            </a>                             
                            </div>
                            <div class="box">
                            <h3>Samsung</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/samsungCE74JD.jpeg"/>" alt="samsungMicrowave" height="200" width="250">                                
                            <%connection();
                            System.out.println("Connected");
                            preparedStatement=conn.prepareStatement("select name,price from samsung where id='CE74JD'");
                            resultSet=preparedStatement.executeQuery();
                            while(resultSet.next())
                            {%>
                            <h5><%= resultSet.getString("name")%></h5>                            
                            <h5><%= resultSet.getString("price")%></h5>                            
                            <%}%>                   
                            </a>                             
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
       </div>  
    </div>   
 </div>
</section>
    <hr> 
    <h2><b>Washing Machines</b>
        <a href="" id="seeMore">see more</a></h2>
    <hr>
     <section id="showcase">
            <div class="container-fluid">
                <div class="row">           
                <div class="col-lg-12">
                    <div id="tv_slider" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner"  role="listbox">                       
                        <div class="item active">
                             <div class="box">
                            <h3>LG</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/LgTopload.jpg"/>" alt="lgTopload" height="200" width="250">                                
                            </a>
                            </div>
                             <div class="box">
                            <h3>Samsung</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/samsungtopload.jpeg"/>" alt="samsungtopload" height="200" width="250">                                
                            </a>                             
                            </div>
                             <div class="box">
                            <h3>LG</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/lgT8077TEELX.jpg"/>" alt="Lgtopload" height="200" width="250">                                
                            </a>                             
                            </div>                            
                        </div>
                        <div class="item">
                            <div class="box">
                            <h3>IFB</h3>
                            <a href="">
                                <img src="<c:url value="/resources/images/ifbTL-SDR.jpg"/>" alt="ifbTopLoad" height="200" width="250">
                            </a>                                
                        </div>
                        </div>
                    </div>
                    </div>
                  </div>
               </div>  
             </div>   
        </div>
   </section>
    <hr>
    <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    </body>
</html>
