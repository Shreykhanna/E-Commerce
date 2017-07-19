<%-- 
    Document   : cart.jsp
    Created on : 26 Jun, 2017, 9:41:01 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<!--    <%
//        class Check
//        {
//              public void check(String value)
//              {
//                if(value=="")
//                {
//                    
//                }
//              }
//       }
%> -->
<body>
    
        <%
            try{
                String str=request.getParameter("lenovoZukZ1");
                out.println(str);
        if (session.getAttribute("lenovoZukZ1").equals("lenovoZukZ1")) {%>
        <h1>Hello</h1>        
                      <%}

            
            } catch (Exception e){
                System.out.println(e.getMessage());
            }%>
           
    
</body>

