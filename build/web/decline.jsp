<%-- 
    Document   : accept
    Created on : Feb 25, 2023, 10:42:37 PM
    Author     : 91930
--%>
<%@ page import="src.dbconnect.DerbyDBConnect" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%  
                    String productName = request.getParameter("prod");
                     String quality = request.getParameter("quality");
                  
                    DerbyDBConnect dbcon = new DerbyDBConnect();
                    if(dbcon.getConnection() == null)
                        dbcon.setupConnection();
                    
                    dbcon.updateTableUsingParameter("update sales set status='rejected' where prod_name=? and quality=?", productName, quality);
                    
                %>
                 <script type='text/javascript'>alert("Sale Rejected") 
                            	window.back(); </script>
                 
                 <%response.sendRedirect("afterlogin3.jsp");%>
    </body>
</html>
