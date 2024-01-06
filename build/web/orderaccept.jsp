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
                     int quantity = Integer.parseInt(request.getParameter("quantity"));
                     
                    DerbyDBConnect dbcon = new DerbyDBConnect();
                    if(dbcon.getConnection() == null)
                        dbcon.setupConnection();
                       int size=0;
                    ResultSet rs=dbcon.fetchValueFromTableUsingParameter2("select produce_name,quality,quantity,market_price from available where produce_name=? and quality=?",productName,quality);
                    while(rs.next()){
                        int remain=Integer.parseInt(rs.getString(3))-quantity;
                        dbcon.updateTableUsingParameter("update available set quantity=? where produce_name=? and quality=?", remain+"", productName, quality);
                        size++;
                    }
                    dbcon.updateTableUsingParameter("update orders set status='accepted' where produce_name=? and quality=?", productName, quality);
                    
                %>
                 <script type='text/javascript'>alert("Order Request Accepted") 
                            	 window.back();</script>
                <%response.sendRedirect("afterlogin3.jsp");%>
    </body>
</html>
