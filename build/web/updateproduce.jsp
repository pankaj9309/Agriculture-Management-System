<!Doctype html>
<%@ page import="src.dbconnect.DerbyDBConnect" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.servlet.http.HttpSession" %>


<html>
    <head>
        <title>TopAgro</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery-2.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body> 
        <%
            HttpSession session1 = request.getSession();
       request.setAttribute("username", session1.getAttribute("uname"));
       %>
        
        <div class="container-fluid">
            <br>
                   <nav class="navbar navbar-inverse navbar-fixed-top ">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                        <span class="glyphicon glyphicon-home" style="font-size:40px">
                        </span><b style="color:white">TopAgro</b></a>
                        &nbsp;&nbsp; 
                </div>
                <ul class="nav navbar-nav navbar-right">
                    
                     <li class="active"> 
                        <div style="color:yellow; font-size:30px; col"> 
                             Welcome ${username}
                         </div>  
                      </li>
                      
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <li class="active"><a href="afterlogin3.jsp">Home</a></li>
                     <li><a href="FarmerController">Farmers</a></li>
                      <li><a href="VendorController">Vendors</a></li>
                    <li><a href="SalesRequestController">Sales Request</a></li>
                    <li><a href="OrderRequestController">Order Request</a></li>
                     <li><a href="LogOutController">Logout</a></li>
                        &nbsp;&nbsp;&nbsp;
                </ul>

            </nav>
            <br>
            <div class="page-header text-center">
                <img src="images/img2.png" alt="TopAgro" class="img-rounded" height="100"   width="130" style="float:left">
                <h1 style="color:purple; font-size:4em;">
                TopAgro&nbsp;<small style="color:black"><i>Improving farmers Income</i></small></h1>
            </div>


            <table class="table table-hover table-bordered" style="border:4px ridge">
                <tr>
                          <th class="info"> Produce Name </th> 
                          <th class="info"> Quality </th> 
                          <th class="info"> Quantity Available </th> 
                          <th class="info"> Market Price (Per Kg)</th> 
                </tr> 

                <%  
                    String productName = request.getParameter("prod");
                    DerbyDBConnect dbcon = new DerbyDBConnect();
                    if(dbcon.getConnection() == null)
                        dbcon.setupConnection();

                    ResultSet rs=dbcon.fetchValueFromTableUsingParameter("select produce_name,quality,quantity,market_price from available where Produce_name=?",productName);
                    int size = 0;
                        while(rs.next()){%>
                         <tr>
                             <td><%= rs.getString("Produce_name")%></td>
                             <td><%= rs.getString("Quality")%></td>
                             <td><%= rs.getString("Quantity")%></td>
                             <td><%= rs.getString("Market_price")%></td>
                         </tr> 
                         <% size++;%>
                       <% }
                    if(size==0){%>
                    <script type='text/javascript'>alert("Sorry, <%= productName %> not available") 
                            	 window.history.back();</script>
            <%}%>  

            </table>

            </form>

    </div>
    </body>
</html>