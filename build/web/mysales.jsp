
<%@page import="java.sql.ResultSet"%>         
<!Doctype html>

<html>
    <head>
        <title>TopAgro</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery-2.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body> 
        
        <div class="container-fluid">
            <br>
                   <nav class="navbar navbar-inverse navbar-fixed-top ">
                <div class="navbar-header">
                    <a class="navbar-brand" href="afterlogin1.jsp">
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
                      <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   <li class="active"><a href="afterlogin1.jsp">Home</a></li>
      
                    <li><a href="SaleController">Sales</a></li>  
                   <li><a href="MySalesController">My Sales</a></li>
                     <li><a href="LogOutController">Logout</a></li>
                      
                        &nbsp;&nbsp;&nbsp;
                        
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
                          <th class="info"> Expected Price (Per Kg)</th> 
                          <th class="info"> Status</th>
                </tr> 
                   <% ResultSet rs = (ResultSet) request.getAttribute("mysaleData");
                    while ( rs.next()){ %>
                    <tr>
                    <td><%= rs.getString(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getString(4) %></td>
                    <td><%= rs.getString(5) %></td>
                     </tr>
                     <%}%>
            </table>
          </body>
         </html>   